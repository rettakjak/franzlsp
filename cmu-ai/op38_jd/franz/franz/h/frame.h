/*					-[Sat Jan 29 13:55:13 1983 by jkf]-
 * 	frame.h				$Locker:  $
 * non local goto frame definition
 *
 * $Header: frame.h,v 1.3 83/09/12 15:29:08 sklower Exp $
 *
 * (c) copyright 1982, Regents of the University of California
 */

#ifdef PORTABLE_FRAME
#include <setjmp.h>
#endif
 
/* classes of frames: */
#define F_PROG  	1
#define F_CATCH 	2
#define F_RESET 	3
#define F_EVAL		4
#define F_FUNCALL	5
#define F_TO_FORT	6
#define F_TO_LISP	7

/* classes of things thrown up */
#define C_INITIAL	0
#define C_GO    	1
#define C_RET   	2
#define C_THROW 	3
#define C_RESET 	4
#define C_FRETURN	5


/* the evaluation frame sits on the C runtime stack.  the global variable errp
   points to the newest frame. The base of the frame points in the middle
   of the frame, but in such a way that above the frame base the contents
   are the same for all implementation, and below it there are different
   saved registers for each machine. 
*/

/* 
 * If PORTABLE_FRAME is defined, the machine-dependent part is packaged
 * up in a jmp_buf, and filled in by calling setjmp().
 */

struct frame 
{
    struct argent *svlbot, *svnp;
    struct nament *svbnp;
    struct frame *olderrp;
#ifdef PORTABLE_FRAME
    jmp_buf retenv;	/* Address is saved in the jmp_buf */
    long *svxsp;	/* Pointer to alternate stack (SPISFP) */
#else
    lispval retaddr;
#endif
    long class;
    lispval larg1;	/* optional */
    lispval larg2;	/* optional */
};

extern struct frame *errp, *Pushframe(), *Ipushf();

/* stuff for IBM, RIDGE, DEC-VMS CC, maybe Bellmac-32
 *
 * The non obvious requirement is that any new function
 * requiring a Pushframe must declare 
 *
 * 	pbuf pb;
 *
 * as well.
 */

#ifdef PORTABLE_FRAME

extern struct frame *retframe;	/* must be set before longjmp too */
extern int jmpval;		/* used only to ease debugging */

#define Pushframe(class,arga,argb) \
	   (retframe = Ipushf((class),(arga),(argb),(struct frame *)&pb) , \
	    jmpval = setjmp(retframe->retenv) , \
	    retframe)

typedef struct frame pbuf;

#else

#ifdef SPISFP
#define Pushframe(a,b,c) Ipushf(a,b,c,&pb)
#endif

typedef struct pframe
{
	long regs[16];
	struct frame f;
} pbuf;

#endif
