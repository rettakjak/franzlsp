#ifndef lint
static char *rcsid =
   "$Header: data.c,v 1.8 85/03/24 11:02:24 sklower Exp $";
#endif

/*					-[Sun Jun 19 14:41:00 1983 by jkf]-
 * 	data.c				$Locker:  $
 * static storage declarations
 *
 * (c) copyright 1982, Regents of the University of California
 */

/* [DES] SUNOS4
   for some (unknown) reason all the lispvals seem to need to be initialised
   as otherwise they produce pretty wierd segmentation violations -- like you
   cab write to them but not read from them.
*/   

#include 	"global.h"
#include	"gtabs.h"
#include	"structs.h"
#include	"frame.h"
#include	<stdio.h>

#ifdef sun
/* Did this move? --hoptoad!gnu */
#include	<sys/types.h>
#include	<sys/param.h>
#define _NFILE NOFILE
#endif

/*char firstalloc[NBPG] = { 'x' };	/* first thing allocated in file */
lispval lispsys[SIGNIF] = {nil};	/* lisp data used by system */

lispval gftab[GFTABLEN] = {nil};	/* global function table for interpreter */
			/* two lots of initilialisation to make it work
			   no idea why ! [DES] SUNOS4
			*/

lispval gctab[GCTABLEN] = 	/* global constant table for interpreter */
	{nil,0,SMALL(-1),SMALL(0),SMALL(1),SMALL(2),SMALL(3),SMALL(4)};


/* Port definitions *****************************************************/
FILE	*piport = stdin,		/* standard input port		*/
	*poport = stdout,		/* standard output port		*/
	*errport = stderr,		/* port for error messages	*/
	*rdrport = stdin,		/* temporary port for readr	*/
	*proport = stdout;		/* port for protocal		*/
int	lineleng =	80;		/* line length desired		*/
int	rlevel = 0;			/* used to indicate depth of recursion
				   in reader.  No longer really necessary */
char	keybin =	FALSE;		/* logical flag: using keyboard	*/
char	protflag =	FALSE;		/* logical flag: want protocall */
char	rbktf = FALSE;				/* logical flag: ] mode		*/

#ifdef RTPORTS
lispval ioname[128];		/* strings of names of files currently open	*/
#else 
lispval ioname[_NFILE] = {nil};		/* strings of names of files currently open	*/
#endif

/* [DES] SUNOS4 a couple of initialisers for argents and naments */
struct argent argnil = {nil};
struct nament namnil = {nil, nil};

/* name stack ***********************************************************/

/* [SWF] the following #ifdef OS4 was put in place to accommidate SUNOS3.5 */
#ifdef OS4
struct argent *orgnp = &argnil;		/* used by top level to reset to start  */
struct argent		*namptr=&argnil,		/* temporary pointer	*/
#ifndef NPINREG
			*lbot=&argnil,			/* beginning of frame*/
			*np=&argnil,			/* first free entry   	*/
#endif
			*nplim=&argnil;			/* don't have this = np	*/
struct nament		*bnp=&namnil,			/* top of bind stack    */
			*orgbnp=&namnil,		/* absolute bottom of ""*/
			*bnplim=&namnil;		/* absolute top of ""   */
#else
struct argent *orgnp;		/* used by top level to reset to start  */
struct argent		*namptr,		/* temporary pointer	*/
#ifndef NPINREG
			*lbot,			/* beginning of frame*/
			*np,			/* first free entry   	*/
#endif
			*nplim;			/* don't have this = np	*/
struct nament		*bnp,			/* top of bind stack    */
			*orgbnp,		/* absolute bottom of ""*/
			*bnplim;		/* absolute top of ""   */
#endif

/* hashing things *******************************************************/
int	hash   = 0;			/* set by ratom		*/
int	atmlen = 0;			/* length of atom including final null	*/


/* big string buffer for whomever needs it ******************************/
static char	i_strbuf[600];
char	*strbuf		= i_strbuf;
char	*endstrb	= i_strbuf + 599;

/* in the case we can't use the C stack for extending automatics */
#ifdef SPISFP
long xstack[16384];
long *xsp;
long *exsp = xstack + ((sizeof xstack)/(sizeof (long)));
#endif

/* strings needed by the two hand crafted atoms, nil and eof */
char nilpname[] = "nil";
char eofpname[] = "eof";

/* set by sstatus commands */
int uctolc = 0;		/* when set, uc chars in atoms go to lc */
			/* default mode for dumplisp 
			   (note this is decimal not octal) */
#if os_unisoft || os_unix_ts
int dmpmode = 410;
#else
int dmpmode = 413;
#endif

/* break and error declarations *****************************************/
int	depth =	0;		/* depth of nested breaks		*/
lispval	contval = nil;		/* the value being returned up		*/
int	retval = 0;			/* used by each error/prog call		*/
lispval lispretval = nil;		/* used by non-local goto's		*/
int	rsetsw = 0;			/* when set, trace frames built		*/
int	bcdtrsw = 0;		/* when set with rsetsw, trace bcd too	*/
int 	evalhcallsw = 0;		/* when set will not evalhook next eval */
int 	funhcallsw = 0;		/* when set will not funcallhook next eval */


/* exception handling stuff *********************************************/
int exception = 0;			/* true if an exception is pending */
int sigintcnt = 0;			/* number of SIGINT's pending	   */

/* current state of the hole (for fasling into) *************************/
#ifndef HOLE
#define HOLE 0
#endif
extern char holbeg[];
char *curhbeg = holbeg;			/* next location to fasl into */
int usehole = HOLE;			/* if TRUE, fasl tries to use hole */
int holesize = HOLE;			/* This avoids an ifdef in dumplisp */

/* other stuff **********************************************************/
lispval	ftemp=nil,vtemp=nil,argptr=nil,ttemp=nil;	/* temporaries: use briefly	*/
int itemp = 0;
lispval sigacts[16] = {nil};			/* for catching interrupts	*/
int sigstruck= 0,sigdelay= 0;			/* for catching interrupts	*/
lispval stattab[16] = {nil};			/* miscelleneous options	*/
lispval Vprintsym = nil;			/* value is the symbol 'print'  */

/*  interpreter globals    */

int lctrace = 0;
int fvirgin = 1;		/* set to 1 initially 			*/
int gctime = 0;
struct frame *errp=(struct frame *)nil;		/* stack of error frames 		*/


/* global pointers to the transfer tables */


struct trtab *trhead=		/* first in list of transfer tables 	   */
      (struct trtab *) 0;
struct trent *trcur;		/* next entry to allocate	    	   */
int trleft = 0;			/* number of entries left in current table */

/* globals from sysat.c  */

int *beginsweep = (int *)OFFSET;/* [DES] SUNOS4 init'ed place for sweeper to begin 		*/
int initflag = TRUE;		/* inhibit gcing initially		*/
int tgcthresh = 15;
int page_limit = (5 * TTSIZE) / 6;
int ttsize = TTSIZE;


/* global used in io.c */

lispval lastrtab = nil;

/* globals from [VT]alloc.c  */


char purepage[TTSIZE]= {'\0'};
int fakettsize = TTSIZE - 8;
int gcstrings=FALSE;				/*  Do we mark and sweep strings? */
int  *bind_lists = (int *) CNIL;	/*  lisp data for compiled code */


struct str_x str_current[2];		/*  next free string spaces */

struct types
	atom_str =
	{
		(char *)CNIL,	0,	ATOMSPP,	ATOM,	5,
		&atom_items,	&atom_pages,	&atom_name,
		(struct heads *) CNIL, (char *)CNIL
	},
	strng_str =
	{
		(char *) CNIL,	0,	STRSPP,		STRNG,	128,
		&str_items,	&str_pages,	&str_name,
		(struct heads *) CNIL, (char *)CNIL
	},
	int_str =
	{
		(char *) CNIL,	0,	INTSPP,		INT,	1,
		&int_items,	&int_pages,	&int_name,
		(struct heads *) CNIL, (char *)CNIL
	},
	dtpr_str =
	{
		(char *) CNIL,	0,	DTPRSPP,	DTPR,	2,
		&dtpr_items,	&dtpr_pages,	&dtpr_name,
		(struct heads *) CNIL, (char *)CNIL
	},
	doub_str =
	{
		(char *) CNIL,	0,	DOUBSPP,	DOUB,	2,
		&doub_items,	&doub_pages,	&doub_name,
		(struct heads *) CNIL, (char *)CNIL
	},
	array_str =
	{
		(char *) CNIL,	0,	ARRAYSPP,	ARRAY,	5,
		&array_items,	&array_pages,	&array_name,
		(struct heads *) CNIL, (char *)CNIL
	},
	other_str =
	{
		(char *) CNIL,	0,	STRSPP,		OTHER,	128,
		&other_items,	&other_pages,	&other_name,
		(struct heads *) CNIL, (char *)CNIL
	},

	sdot_str =
	{
		(char *) CNIL,	0,	SDOTSPP,	SDOT,	2,
		&sdot_items,	&sdot_pages,	&sdot_name,
		(struct heads *) CNIL, (char *)CNIL
	},
	val_str =
	{
		(char *) CNIL,	0,	VALSPP,		VALUE,	1,
		&val_items,	&val_pages,	&val_name,
		(struct heads *) CNIL, (char *)CNIL
	},
funct_str =
	{
		(char *) CNIL,	0,	BCDSPP,		BCD,	2,
		&funct_items,	&funct_pages,	&funct_name,
		(struct heads *) CNIL, (char *)CNIL
	},
vect_str =
	{
	        
		(char *) CNIL,	0,	VECTORSPP,	VECTOR,	1,
		&vect_items,	&vect_pages,	&vect_name,
		(struct heads *) CNIL, (char *)CNIL
	},
vecti_str =
	{
	        
		(char *) CNIL,	0,	VECTORSPP,	VECTORI, 1,
		&vect_items,	&vecti_pages,	&vecti_name,
		(struct heads *) CNIL, (char *)CNIL
	},

hunk_str[7] =
	{
		{
			(char *) CNIL,	0,	HUNK2SPP,	HUNK2,	2,
			&hunk_items[0],	&hunk_pages[0],	&hunk_name[0],
			(struct heads *) CNIL, (char *)CNIL
		},
		{
			(char *) CNIL,	0,	HUNK4SPP,	HUNK4,	4,
			&hunk_items[1],	&hunk_pages[1],	&hunk_name[1],
			(struct heads *) CNIL, (char *)CNIL
		},
		{
			(char *) CNIL,	0,	HUNK8SPP,	HUNK8,	8,
			&hunk_items[2],	&hunk_pages[2],	&hunk_name[2],
			(struct heads *) CNIL, (char *)CNIL
		},
		{
			(char *) CNIL,	0,	HUNK16SPP,	HUNK16,	16,
			&hunk_items[3],	&hunk_pages[3],	&hunk_name[3],
			(struct heads *) CNIL, (char *)CNIL
		},
		{
			(char *) CNIL,	0,	HUNK32SPP,	HUNK32,	32,
			&hunk_items[4],	&hunk_pages[4],	&hunk_name[4],
			(struct heads *) CNIL, (char *)CNIL
		},
		{
			(char *) CNIL,	0,	HUNK64SPP,	HUNK64,	64,
			&hunk_items[5],	&hunk_pages[5],	&hunk_name[5],
			(struct heads *) CNIL, (char *)CNIL
		},
		{
			(char *) CNIL,	0,	HUNK128SPP,	HUNK128, 128,
			&hunk_items[6],	&hunk_pages[6],	&hunk_name[6],
			(struct heads *) CNIL, (char *)CNIL
		}
	};
extern struct readtable { unsigned char	ctable[132]; } initread;
unsigned char *ctable = initread.ctable;
int gensymcounter = 0;

int hashtop = HASHTOP;
int xcycle = 0;		/* used by xsbrk   */
struct	atom *hasht[HASHTOP] = {&nilatom};
lispval datalim = nil;	/* pointer to next location to allocate */
		/* [DES] SUNOS4 */

char typetable[TTSIZE+1] = {UNBO,ATOM,PORT,INT,INT,INT,INT,INT,INT,INT,INT,INT,INT,INT,INT,INT,INT,INT,INT};

/* this must be the last thing allocated in this file	*/
char lsbrkpnt,zfreespace;
