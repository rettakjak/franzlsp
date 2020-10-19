/* Functions corresponding to those in 68k.c */

#include "global.h"
#include <signal.h>
#include <stdio.h>

mmuladd(a,b,c,m)
long a,b,c,m;
{
	long work[2]; char err;
	emul(a,b,c,work);
	ediv(work,m,err);
	return(work[0]);
}

Imuldiv(p1,p2,add,dv,quo,rem)
long p1, p2, add, dv;
long *quo, *rem;
{
	long work[2]; char err;

	emul(p1,p2,add,work);
	*quo = ediv(work,dv, &err);
	*rem = *work;
}

lispval
Lpolyev()
{
        /*  Interface to VAX polyd instruction -- polynomial eval */
	error("polyev has not been implemented",FALSE);
}


lispval
Lrot()				/* From tahoe version */
{
	register val;
	register unsigned long mask2 = -1;
	register struct argent *mylbot = lbot;
	long rot;

	chkarg(2,"rot");
	if((TYPE(mylbot->val) != INT) || (TYPE(mylbot[1].val) != INT))
		errorh2(Vermisc,
		       "Non ints to rot",
		       nil,FALSE,0,mylbot->val,mylbot[1].val);
	val = mylbot[0].val->i;
	rot = mylbot[1].val->i;
	rot = rot & 0x3f;	/* bring it down below one byte in size */
	mask2 >>=  rot;
	mask2 ^= -1;
	mask2 &= val;
	mask2 >>= (32 - rot);
	val <<= rot;
	val |= mask2;
	return( inewint(val));
}

/* i386 bsd 4.3 version of kernel showstack (there is also a Lisp version)

   We look through the C stack for return addresses in the routine
   eval.  When we find one, the first argument in the previous frame
   (the return to eval's caller) is the argument to eval.  By printing 
   these arguments, we produce a backtrace of the nested evaluations 
   that are still active, beginning with the most recent.

   To start looking at stack frames, though, we first have to find our
   own.  This is done by taking an offset from the first paremeter.
   (The first local variable could also have been used.)

   The main routine is 'isho'.  It can produce two styles of backtrace.

	(showstack)

   will print the entire form at each level, while

	(baktrace)

   prints just the function names.

*/

#include "i386frame.h"

lispval
Lshostk()				/* (showstack) */
{
	lispval isho();
	return(isho(1));
}

lispval
Lbaktrace()				/* (baktrace) */
{
	lispval isho();
	return isho(0);
}

static lispval
isho(f)
int f;
{
	int **fp;	/* this must be the first local */
	register struct machframe *myfp; 
	register lispval handy;
	int virgin=1;
	lispval linterp(), Ifuncal();
	extern int plevel,plength;

	if(TYPE(Vprinlevel->a.clb) == INT)
	{ 
	   plevel = Vprinlevel->a.clb->i;
	}
	else plevel = -1;
	if(TYPE(Vprinlength->a.clb) == INT)
	{
	    plength = Vprinlength->a.clb->i;
	}
	else plength = -1;

	if(f==1)
		printf("Forms in evaluation:\n");
	else
		printf("Backtrace:\n\n");

	/* point to current machframe */
	myfp = (struct machframe *) 
	    ((char *)&f - sizeof(*myfp) + sizeof(myfp->ap));

	while(TRUE)
	{
	    if( (myfp->pc > eval  &&  		/* interpreted code */
		 myfp->pc < popnames)
		||
		(myfp->pc > Ifuncal &&		/* compiled code */
		 myfp->pc < Lfuncal)  )
	    {
	      { handy = (myfp->fp->ap[0]);
		if(f==1)
			printr(handy,stdout), putchar('\n');
		else {
			if(virgin)
				virgin = 0;
			else
				printf(" -- ");
			printr((TYPE(handy)==DTPR)?handy->d.car:handy,stdout);
		}
	      }

	    }

	    if(myfp > myfp->fp) break;	/* end of frames */
	    else myfp = myfp->fp;
	}
	putchar('\n');
	return(nil);
}


/*
 * (int:showstack 'stack_pointer)
 *
 * This is used by the in-Lisp versions of showstack and baktrace.
 *
 * return
 *   nil if at the end of the stack or illegal
 *   ( expresssion . next_stack_pointer) otherwise
 *   where expression is something passed to eval
 */
lispval
LIshowstack(dummyarg)
int dummyarg;
{
    int **fp;	/* must be the first local variable */
    register lispval handy;
    register struct machframe *myfp;
    lispval retval, Ifuncal();
    Savestack(2);
    
    chkarg(1,"int:showstack");

    if((TYPE(handy=lbot[0].val) != INT) && (handy != nil))
        error("int:showstack non fixnum arg", FALSE);

    if(handy == nil)
        /* myfp = (struct machframe *) (&fp +1); */
	myfp = (struct machframe *) 
	    ((char *)&dummyarg - sizeof(*myfp) + sizeof(myfp->ap));
    else
        myfp = (struct machframe *) handy->i;
	
    if((int ***)myfp <= &fp) error("int:showstack illegal stack value",FALSE);
    while(myfp > 0)
    {
        if( (myfp->pc > eval  &&  		/* interpreted code */
            myfp->pc < popnames)
	    ||
	    (myfp->pc > Ifuncal &&		/* compiled code */
	    myfp->pc < Lfuncal)  )
        {
	    {
		handy = (lispval)(myfp->fp->ap[0]);	/* arg to eval */

		protect(retval=newdot());
		retval->d.car = handy;
		if(myfp > myfp->fp)
		    myfp = 0;	/* end of frames */
		else
		    myfp = myfp->fp;
		retval->d.cdr = inewint(myfp);
		return(retval);
	    }
	}
	if(myfp > myfp->fp)
	     myfp = 0;	/* end of frames */
	else
	     myfp = myfp->fp;

    }
    return(nil);
}


/* Dummy stubs */

myfrexp() { error("myfrexp called", FALSE);}

Lmkcth() { fprintf(stderr, "mkcth called\n"); }
