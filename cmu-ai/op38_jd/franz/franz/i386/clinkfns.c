/* clink.c -- link routine for ZFASL
 *
 * Jeff Dalton, AIAI, University of Edinburgh
 *
 * /\/ Should make sure correct readtable used.  [done 16 sep 86]
 * /\/ Should make sure correct uctolc setting used.  [done 16 sep 86]
 * /\/ Should note when functions redefined only when requested (a la fasl)
 * /\/ All the sizeof(long)'s probably should be sizeof(int)'s
 *
 * /\/ Make calls through transfer tables work.  [zlinker 15 Sep 87]
 * /\/ Make an equivalent for sstatus translink on.  [should work -- see fasl]
 */

#include "global.h"
#include "frame.h"
#include "structs.h"
#include "chkrtab.h"
#include "compiled.h"

#undef CL_DEBUG			/* unless we need to debug */

extern lispval eval();
extern lispval Ipurcopy();
extern int *bind_lists;         /* gc binding lists */
extern int uctolc;

struct trent *gettran();	/* alloc transfer table entries */

static lispval rdstr();		/* forward dcls... */
static lispval *make_linktable();
lispval clinker();

static int clink_note_redef = 0;

lispval
set_redef()
{
	int previous = clink_note_redef;

	clink_note_redef = lbot->val != nil;
	return previous ? tatom : nil;
}


/* clink -- called by compiled Lisp per-file init routine
 *
 * Set up the linker and transfer tables, then interpret the bind table.
 *
 */

clink(literals, linker_size, linkv, callnames, trans_size, transv, bindtab)
char *literals[];
int linker_size;
lispval **linkv;
char *callnames[];
int trans_size;
struct trent **transv;
struct bindspec *bindtab;
{
        struct trent *tranloc;
        int i;
        lispval v;
	lispval currtab,	/* current readtable and ibase -- must be */
	        curibase;	/*  kept up to date as we evaluate forms */
	int ouctolc;		/* ditto uctolc flag */
	int note_redef = clink_note_redef; /* remember in case reset */

        Savestack(0);

#ifdef CL_DEBUG
	printf("linker size = %d, trans size = %d\n", linker_size, trans_size);
#endif

	/* To read in the forms correctly, the readtable &c must be the
	 * same as when they were printed.  However, we must also remember
	 * if these things change when we evaluate a form so that the
	 * changes will be in force for subsequent evaluations.
	 */
	currtab = Vreadtable->a.clb;
	Vreadtable->a.clb = strtab;	/* standard read table */
	curibase = ibase->a.clb;
	ibase->a.clb = inewint(10);	/* read in decimal */
	ouctolc = uctolc;
	uctolc = FALSE;			/* don't cvt upper to lower case */

	PUSHDOWN(gcdis,tatom);		/* turn off gc */


	/* make link table if needed */

	if (linker_size > 0)
	{
	    *linkv = make_linktable (literals, linker_size);
	}
	else
	{
	    *linkv = 0;
	}

	/* check if there is a transfer table required for this
	 * file, and if so allocate one of the necessary size
	 */

	if(trans_size > 0)
	{
	    tranloc = gettran(trans_size);
            *transv = tranloc;
	    for (i = 0; i < trans_size; i++)
	    {
		v = rdstr(callnames[i]);
		tranloc->name = v;
		tranloc->fcn = clinker;	/* initially go to clinker */
		tranloc++;
            }
	}
        else
        {
            *transv = 0;	/* no transfer table */
	}


        /* Process bind table (a la mftab in sysat.c) */

        for(; bindtab->btype; bindtab++)
        {
            if (bindtab->btype == &(tatom))
	    {
                /* eval top-level form */

	        v = rdstr(bindtab->bname);
	        protect(v);			/* in case GC? */

		Vreadtable->a.clb = currtab; 	/* restore values for eval */
		ibase->a.clb = curibase;
		uctolc = ouctolc;
	        eval(v);

                --np;				/* unprotect */

		if(uctolc) ouctolc = TRUE; 	/* if changed by eval, */
		curibase = ibase->a.clb;	/*  remember */
						/* /\/ readtable changes? */

		ibase->a.clb = inewint(10);	/* set back for next read */
		Vreadtable->a.clb = strtab;
		uctolc = FALSE;

	    }
            else
	    {
                /* define a function */

                v = rdstr(bindtab->bname);

	        if (note_redef && (v->a.fnbnd != nil))
	        {
		    printr(v,stdout);
		    printf(" redefined\n");
	        }
                v = v->a.fnbnd = newfunct();
                v->bcd.start = bindtab->bentry;
                v->bcd.discipline = *bindtab->btype;
            }
        }


	/* Cleanup
	 *
	 * /\/ but what if there's an unwind?  this won't get done.
	 */

	POP;			/* restore state of gcdisable variable */

	Vreadtable->a.clb = currtab;
	chkrtab(currtab);
	ibase->a.clb = curibase;
	uctolc = ouctolc;

        Restorestack();
}

static lispval *make_linktable(literals, link_size)
char *literals[];
int link_size;
{

	char *lc_org,		/* beginning of linker segment */
	     *lc_end;		/* last word in linker segment */
	char *lc_entries;	/* address of 1st lispval pointer */

	int i,
	    *iptr;
	lispval *linktab;
	lispval handy;

	/* linker table is 2 entries (8 bytes) larger than the number of
	 * entries given by linker_size .  There must be a gc word at
	 * the beginning and a -1 at the end
	 */
	lc_org = (char *)
	         csegment(OTHER,
			  sizeof(lispval)*link_size + 2*sizeof(long),
			  TRUE);
	lc_end = lc_org + sizeof(lispval)*link_size + sizeof(long);
	         /* address of gc sentinal last */

	/* compiled code needs a pointer to the first real entry */
	lc_entries = lc_org + sizeof(long);

	/* set the linker table to all -1's so GC can find last entry */
	for( iptr = (int *)(lc_entries); 
	     iptr <= (int *)(lc_end); 
	     iptr++ )
	  *iptr = -1;

	/* link our table into the gc tables */
	/* only do so if we will not purcopy these tables */
	if(Vpurcopylits->a.clb == nil)
	{
	    *(int *)lc_org = (int)bind_lists;     /* point to current */
	    bind_lists = (int *)lc_entries;       /* point to first item */
	}


	/* convert each literal into a lispval and put a pointer to
	 * it in the table.
	 */

	for (i = 0, linktab = (lispval *)lc_entries;
	     ((i < link_size) && (linktab < (lispval *)lc_end));
	     i++, linktab++)
	{
	    handy = rdstr(literals[i]);
	    if (Vpurcopylits->a.clb != nil)
	    {
		handy = Ipurcopy(handy);
	    }
	   *linktab = handy;
	}

	if ((i != link_size) || (linktab != (lispval *)lc_end))
	{
	    error("clink: mismatch in linker table size",FALSE);
	}

	return ((lispval *)lc_entries);
}


/* rdstr
 *
 * Read from a string.  Adapted from readlist (see lam6.c)
 * by Jeff Dalton, AIAI, University of Edinburgh
 *
 * /\/ Neither this routine nor readlist handle unterminated strings
 * corectly.  When reading something that begins with """ or "|", it
 * will read forever if no matching terminator is found.  The first
 * sign of trouble is repeated gc's for type vectori.
 *
 */

extern FILE *fstopen();		/* make string file -- see lam6.c */

static lispval rdstr(string)
char *string;
{
	register lispval work;
	register FILE *p;
	lispval Lread();
	int count;
	pbuf pb;
	Savestack(2);

	count = strlen(string);
	p = fstopen(string, count, "r");

	errp = Pushframe(F_CATCH,Veruwpt,nil);	/* must unwind protect
						   so can deallocate p
						 */
	switch(retval) { lispval Lctcherr();
	case C_THROW:
			/* an error has occured and we are given a chance
			   to unwind before the control goes higher
			   lispretval contains the error descriptor in
			   it's cdr
			 */
		      fclose(p); 		/* free port */
		      errp = Popframe();
		      lbot = np;
		      protect(lispretval->d.cdr); /* error descriptor */
		      return(Lctcherr());	/* do a I-do-throw */
		      
	case C_INITIAL: 
			lbot = np;
			protect(P(p));
			work = Lread();		/* error  could occur here */
			fclose(p);		/* whew.. no errors */
			errp = Popframe();	/* remove unwind-protect */
			Restorestack();
			return(work);
	}
	/* NOTREACHED */
}


/* clinker: Transfer table link routine */

struct trent *trlink;				/* set by compiled calls */

lispval
clinker ()
{
	register lispval fnb;

	/* Make link if (status translink) non-nil and function
	 * is compiled (bcd) and not foreign (string discipline).
	 */
	if (Strans == (lispval) TRUE
	    && TYPE(fnb = trlink->name->a.fnbnd) == BCD
	    && TYPE(fnb->bcd.discipline) != STRNG)
	{
	    trlink->fcn = fnb->bcd.start;
	    return (*fnb->bcd.start)();
	}

	/* else call via funcall */

	return Ifuncal(trlink->name);
}
