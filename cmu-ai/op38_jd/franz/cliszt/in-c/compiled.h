/* Definitions for Lisp compiled into C */

/* Jeff Dalton, AIAI/PSG, University of Edinburgh */


#define use_translink 1		/* s.b. in config.h? */


/* Generally useful declarations */

typedef lispval lispfun();	/* type of compiled Lisp functions */


/* Some abbreviations */

#ifdef use_translink
#define CALLTRAN(n) (trlink = &trans[n], (*trlink->fcn)())
#else
#define CALLTRAN(n) (Ifuncal(trans[n].name))
#endif

#define BCDCALL(loc) ((*(loc)->bcd.start)())


#define QADD1(loc) ((loc) < (lispval)&Lastfix[0] \
		    ? (lispval)(&(loc)->i + 1) \
                    : safenewint((loc)->i + 1))

#define QSUB1(loc) ((loc) > (lispval)&Negs[0] \
		    && (loc) <= (lispval)&Lastfix[0] \
		    ? (lispval)(&(loc)->i - 1) \
		    : safenewint((loc)->i - 1))

#define np_protect() (np = np0)

#ifdef global_reg
#define safenewint(n) inewint(n)
#else
#define safenewint(n) (np_protect(), \
		       inewint(n))
#endif

#define fastnewint(n) ((n) >= -1024 && (n) <= 1023 \
		       ? (lispval)&Fixzero[n] \
		       : safenewint(n))


#define get_table_size(thing) ((thing) == 0 \
			       ? 0 \
			       : sizeof(thing)/sizeof(char *))


/* Declarations for the "bind table" (list of things to do)
 *
 * An entry in the bind table will be like one of the following:
 *    {&(lambda),F00052,"f"} -- to define a function
 *    {&(tatom),0,"(f 3)"}   -- to eval a top-level form
 *
 */

struct bindspec
{
    lispval *btype;		/* lambda, nlambda, macro, or t */
    lispfun *bentry;		/* ptr to function entry */
    char *bname;		/* printed rep of fn name or form */
};


/* definitions of bogus "symbol names" used in compiled code
 *  (/\/ a temporary hack, now inactivated)
 */

#if 0
#define reg0	 r0
#define u0       r0

#define np_sym   np
#define lbot_sym lbot

#define bind_reg linker		/* use the global pointer directly */
#define bnp_sym  bnp		/* bnp_reg is declared locally */

#define np_plus  (np_reg++)
#define np_minus (--np_reg)
#endif


/* Routines referenced by compiled code
 * (see also dfuncs.h, included by global.h)
 */

extern clink();			/* called by the file's init routine */
extern lispval zlinker();	/* transfer table call mechanism */

extern lispval Ifuncal();	/* s.b. Lfuncal? */
extern lispval Lget();

extern lispval Ibindvars(), Iunbindvars();


/* Other external references */

extern struct trent *trlink;	/* for use, see CALLTRAN; def in clink.c */

extern long Lastfix[];
extern long Negs[];
extern lispval *tynames[];
