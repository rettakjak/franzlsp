#ifndef lint
static char *rcsid = "$Header: fex3.c,v 1.15 85/03/13 17:18:29 sklower Exp $";
#endif
/*					-[Sat Apr  9 17:03:02 1983 by layer]-
 * 	fex3.c				$Locker:  $
 * nlambda functions
 *
 * (c) copyright 1982, Regents of the University of California
 */


#include "global.h"

#ifdef mc68020
#include <errno.h>
#endif

extern char *gstab();
static int pagsiz, pagrnd;


/*
 *Ndumplisp -- create executable version of current state of this lisp.
 */
/*
 *	Notes for SUN3 changes -- Barry Shein, Boston University
 *	Some significant changes were needed due to the changes
 *	in the a.out format under SUN3/Release 3.0. I had just done
 *	the same thing for GNU Emacs (also undumps itself during the
 *	build) so, rather than do a lot of surgery (I tried, it wasn't
 *	winning) I just more or less copied over what I had just done
 *	in emacs and adapted it to this context. Seems to work fine now.
 *	Boston, 1/10/86
 */
#ifndef	os_vms
#include "aout.h"

lispval
Ndumplisp()
{
	register struct exec *workp;
	register lispval argptr, temp;
	register char *fname;
	extern int reborn;
	struct exec work, old;
	extern int dmpmode,usehole;
	extern char etext[], *curhbeg;
	int descrip, des2, ax,mode;
	extern int holesize;
	char tbuf[BUFSIZ];
	long count, lseek();
	extern int errno ;

	pageseql();
	pagsiz = Igtpgsz();
	pagrnd = pagsiz - 1;

	/* dump mode is kept in decimal (which looks like octal in dmpmode)
	   and is changeable via (sstatus dumpmode n) where n is 413 or 410
	   base 10		
	*/
	if(dmpmode == 413) mode = 0413;
	else if(dmpmode == 407) mode = 0407;
	else mode = 0410;

	workp = &work;
	workp->a_magic	= mode;
#ifdef os_masscomp
	workp->a_stamp	= 1;
#endif

#ifdef DEBUG
	printf("Dumplisp...\n") ;
#endif
#ifdef mc68020
#define OFF2 0x2000
#else
#define OFF2 OFFSET
#endif
	if(holesize) {  /* was ifdef HOLE */
		curhbeg		= (char *) (1 + (pagrnd | ((int)curhbeg)-1));
		workp->a_text	= (unsigned long)curhbeg - (unsigned long)OFFSET;
		workp->a_data	= (unsigned) sbrk(0) - workp->a_text - OFFSET;
	} else {
		if(mode==0407)
	            workp->a_text = ((unsigned long) etext) -
		      ((unsigned long) OFFSET);
		else
		    workp->a_text = 1 + ((((int)etext)-1-OFF2) | pagrnd);
		workp->a_data	= (int) sbrk(0) - ((int)curhbeg);
	}
#ifdef DEBUG
	printf("a_data = 0x%x\n",workp->a_data);
	printf("a_text = 0x%x/%d\n",workp->a_text,workp->a_text);
#endif
	workp->a_bss	= 0;
	workp->a_syms	= 0;
	workp->a_entry	= (unsigned) gstart();
	workp->a_trsize	= 0;
	workp->a_drsize	= 0;

	fname = "savedlisp"; /*set defaults*/
	reborn = (int) CNIL;
	argptr = lbot->val;
	if (argptr != nil) {
		temp = argptr->d.car;
		if((TYPE(temp))==ATOM)
			fname = temp->a.pname;
	}
#ifdef DEBUG
	{
	  char *ofname ;

	  ofname = gstab();
	  printf("fname = %s ofname = %s\n",fname,ofname) ;
	  if((des2 = open(ofname,0)) < 0) perror(ofname) ;
	}
#else
	des2 = open(gstab(),0);
#endif DEBUG
	if(des2 >= 0) {
		if(read(des2,(char *)&old,sizeof(old))>=0)
			work.a_syms = old.a_syms;
	}
	/* BZS - needed for the SUN3 (1/7/86) */
#ifdef mc68020
	work.a_machtype = old.a_machtype;
#endif
	descrip=creat(fname,0777); /*doit!*/
	if(-1==write(descrip,(char *)workp,sizeof(work)))
	{
		close(descrip);
		error("Dumplisp header failed",FALSE);
	}
#ifdef mc68020
	/* BZS - adapted from the same thing I did for GNU Emacs */
	lseek(descrip,(long) sizeof(work),0) ;
	lseek(descrip,(long) N_TXTOFF(work),1) ;
	{
	  /* BZS - not at all critical these stay in regs, slow anyhow */
	  register char *ptr, *end ;
	  long i, nwrite, ret ;

#ifdef DEBUG
	printf("nil = 0x%x size = %d(0x%x)\n",nil,
		workp->a_text-sizeof(work),workp->a_text-sizeof(work));
#endif
	  if(-1 == write(descrip,((char *)OFF2)+sizeof(work),
			 (int)workp->a_text-sizeof(work))) {
	    close(descrip) ;
	    error("Dumplisp text failed",FALSE) ;
#ifdef DEBUG
		printf("errno = %d\n",errno);
#endif
	  }
	  ptr = (char *) curhbeg ;
	  end = ptr + workp->a_data ;
#ifdef DEBUG
	  printf("ptr = 0x%x end = 0x%x\n",ptr,end) ;
#endif
	  for(i=0 ; ptr < end;) {
	    nwrite = 128 ;
	    if(nwrite > end - ptr) nwrite = end - ptr;
	    ret = write(descrip,ptr,nwrite);
	    if(ret == -1 && errno == EFAULT) {
#ifdef DEBUG
	      printf("data dump stopped on EFAULT\n");
	      printf("\ti = 0x%x ptr = 0x%x\n",i,ptr);
#endif
	      lseek(descrip,(long)(N_TXTOFF(work)+i+nwrite)+sizeof(work),0);
	    }
	    else if(nwrite != ret) {
	      close(descrip) ;
	      error("Dumplisp data failed",FALSE) ;
	    }
	    i += nwrite ;
	    ptr += nwrite ;
	  }
#ifdef DEBUG
	printf("data dump ended clean\n") ;
	printf("\ti = 0x%x ptr = 0x%x\n",i,ptr);
#endif
	}
#else mc68020
	if(mode == 0413) lseek(descrip,(long)pagsiz,0);
	if( -1==write(descrip,(char *)nil,(int)workp->a_text) )
	{
		close(descrip);
		error("Dumplisp text failed",FALSE);
	}
	if( -1==write(descrip,(char *)curhbeg,(int)workp->a_data) )
	{
		close(descrip);
		error("Dumplisp data failed",FALSE);
	}
#endif
#ifdef DEBUG
	printf("des2 = %d a_syms = 0x%x\n",des2,work.a_syms);
#endif
	if(des2>0  && work.a_syms) {
#ifdef mc68020
	  count = N_SYMOFF(old) ;
#else
		count = old.a_text + old.a_data + (old.a_magic == 0413 ? pagsiz 
							       : sizeof(old));
#endif
		if(-1==lseek(des2,count,0))
			error("Could not seek to stab",FALSE);
		for(count = old.a_syms;count > 0; count -=BUFSIZ) {
			ax = read(des2,tbuf,(int)(count < BUFSIZ ? count : BUFSIZ));
			if(ax==0) {
				printf("Unexpected end of syms",count);
				fflush(stdout);
				break;
			} else if(ax >  0)
				write(descrip,tbuf,ax);
			else 
				error("Failure to write dumplisp stab",FALSE);
		}
#if ! (os_unix_ts | os_unisoft)
		if(-1 == lseek(des2,(long)
#ifdef mc68020
			N_STROFF(old),
#else
			((old.a_magic == 0413 ? pagsiz : sizeof(old))
			+ old.a_text + old.a_data
				+ old.a_trsize + old.a_drsize + old.a_syms),
#endif
			       0))
			error(" Could not seek to string table ",FALSE);
		for( ax = 1 ; ax > 0;) {
		     ax = read(des2,tbuf,BUFSIZ);
		     if(ax > 0)
			 write(descrip,tbuf,ax);
		     else if (ax < 0)
			 error("Error in string table read ",FALSE);
		}
#endif
	}
	close(descrip);
	if(des2>0) close(des2);
#ifdef DEBUG
	printf("Dumplisp done\n") ;
#endif
	reborn = 0;

	pagenorm();

	return(nil);
}


/*** VMS version of Ndumplisp ***/
#else
#include "aout.h"
#undef	protect
#include <vms/vmsexe.h>

lispval
Ndumplisp()
{
	register struct exec *workp;
	register lispval argptr, temp;
	char *fname;
	register ISD *Isd;
	register int i;
	extern lispval reborn;
	struct exec work,old;
	extern etext;
	extern int dmpmode,holend,curhbeg,usehole,holesize;
	int extra_cref_page = 0;
	char *start_of_data;
	int descrip, des2, count, ax,mode;
	char buf[5000],stabname[100],tbuf[BUFSIZ];
	int fp,fp1;
	union {
		char Buffer[512];
		struct {
			IHD Ihd;
			IHA Iha;
			IHS Ihs;
			IHI Ihi;
			} Header;
		} Buffer;	/* VMS Header */

	/*
	 *	Dumpmode is always 413!!
	 */
	mode = 0413;
	pagsiz = Igtpgsz();
	pagrnd = pagsiz - 1;

	workp = &work;
	workp->a_magic   = mode;
	if (holesize) {
		workp->a_text   =
			((unsigned)curhbeg) & (~pagrnd);
		if (((unsigned)curhbeg) & pagrnd) extra_cref_page = 1;
		start_of_data = (char *)
			(((((unsigned) (&holend)) -1) & (~pagrnd)) + pagsiz);
	} else {
		workp->a_text   =
			((((unsigned) (&etext)) -1) & (~pagrnd)) + pagsiz;
		start_of_data = (char *)workp->a_text;
	}
	workp->a_data   =
		(unsigned) sbrk(0) - (unsigned)start_of_data;
	workp->a_bss    = 0;
	workp->a_syms   = 0;
	workp->a_entry  = (unsigned) gstart();
	workp->a_trsize = 0;
	workp->a_drsize = 0;

	fname = "savedlisp";	/* set defaults */
	reborn = CNIL;
	argptr = lbot->val;
	if (argptr != nil) {
		temp = argptr->d.car;
		if((TYPE(temp))==ATOM)
			fname = temp->a.pname;
	}
	/*
	 *	Open the new executable file
	 */
	strcpy(buf,fname);
	if (index(buf,'.') == 0) strcat(buf,".exe");
	if ((descrip = creat(buf,0777)) < 0) error("Dumplisp failed",FALSE);
	/*
	 *	Create the VMS header
	 */
	for(i = 0; i < 512; i++) Buffer.Buffer[i] = 0;	/* Clear Header */
	Buffer.Header.Ihd.size		= sizeof(Buffer.Header);
	Buffer.Header.Ihd.activoff	= sizeof(IHD);
	Buffer.Header.Ihd.symdbgoff	= sizeof(IHD) + sizeof(IHA);
	Buffer.Header.Ihd.imgidoff	= sizeof(IHD) + sizeof(IHA) + sizeof(IHS);
	Buffer.Header.Ihd.majorid[0]	= '0';
	Buffer.Header.Ihd.majorid[1]	= '2';
	Buffer.Header.Ihd.minorid[0]	= '0';
	Buffer.Header.Ihd.minorid[1]	= '2';
	Buffer.Header.Ihd.imgtype	= IHD_EXECUTABLE;
	Buffer.Header.Ihd.privreqs[0]	= -1;
	Buffer.Header.Ihd.privreqs[1]	= -1;
	Buffer.Header.Ihd.lnkflags.nopobufs = 1;
	Buffer.Header.Ihd.imgiocnt = 250;

	Buffer.Header.Iha.tfradr1	= SYS$IMGSTA;
	Buffer.Header.Iha.tfradr2	= workp->a_entry;

	strcpy(Buffer.Header.Ihi.imgnam+1,"SAVEDLISP");
	Buffer.Header.Ihi.imgnam[0] = 9;
	Buffer.Header.Ihi.imgid[0] = 0;
	Buffer.Header.Ihi.imgid[1] = '0';
	sys$gettim(Buffer.Header.Ihi.linktime);
	strcpy(Buffer.Header.Ihi.linkid+1," Opus 38");
	Buffer.Header.Ihi.linkid[0] = 8;

	Isd = (ISD *)&Buffer.Buffer[sizeof(Buffer.Header)];
		/* Text ISD */
	Isd->size	= ISDSIZE_TEXT;
	Isd->pagcnt	= workp->a_text >> 9;
	Isd->vpnpfc.vpn = 0;
	Isd->flags.type = ISD_NORMAL;
	Isd->vbn	= 3;
	Isd = (ISD *)((char *)Isd + Isd->size);
		/* Hole ISDs (if necessary) */
	if (usehole) {
		/* Copy on Ref ISD for possible extra text page */
		if(extra_cref_page) {
			Isd->size	= ISDSIZE_TEXT;
			Isd->pagcnt	= 1;
			Isd->vpnpfc.vpn = (((unsigned)curhbeg) & (~pagrnd)) >> 9;
			Isd->flags.type = ISD_NORMAL;
			Isd->flags.crf	= 1;
			Isd->flags.wrt	= 1;
			Isd->vbn	= (workp->a_text >> 9) + 3;
			Isd = (ISD *)((char *)Isd + Isd->size);
		}
		/* Demand Zero ISD for rest of Hole */
		Isd->size	= ISDSIZE_DZRO;
		Isd->pagcnt	=
			((((unsigned)&holend)
				- (unsigned)curhbeg) & (~pagrnd)) >> 9;
		Isd->vpnpfc.vpn	=
			((((unsigned)curhbeg) & (~pagrnd)) >> 9) + extra_cref_page;
		Isd->flags.type = ISD_NORMAL;
		Isd->flags.dzro = 1;
		Isd->flags.wrt	= 1;
		Isd = (ISD *)((char *)Isd + Isd->size);
	}
		/* Data ISD */
	Isd->size	= ISDSIZE_TEXT;
	Isd->pagcnt	= workp->a_data >> 9;
	Isd->vpnpfc.vpn = ((unsigned)start_of_data) >> 9;
	Isd->flags.type = ISD_NORMAL;
	Isd->flags.crf	= 1;
	Isd->flags.wrt	= 1;
	Isd->vbn	= (workp->a_text >> 9) + 3;
	if (holesize) {
		/*
		 *	Correct the Data ISD
		 */
		Isd->vbn	+= extra_cref_page;
	}
	Isd = (ISD *)((char *)Isd + Isd->size);
		/* Stack ISD */
	Isd->size	= ISDSIZE_DZRO;
	Isd->pagcnt	= ISDSTACK_SIZE;
	Isd->vpnpfc.vpn	= ISDSTACK_BASE;
	Isd->flags.type = ISD_USERSTACK;
	Isd->flags.dzro	= 1;
	Isd->flags.wrt	= 1;
	Isd = (ISD *)((char *)Isd + Isd->size);
		/* End of ISD List */
	Isd->size = 0;
	Isd = (ISD *)((char *)Isd + 2);
	/*
	 *	Make the rest of the header -1s
	 */
	for (i = ((char *)Isd - Buffer.Buffer); i < 512; i++)
						Buffer.Buffer[i] = -1;
	/*
	 *	Write the VMS Header
	 */
	if (write(descrip,Buffer.Buffer,512) == -1)
					error("Dumplisp failed",FALSE);
#if	EUNICE_UNIX_OBJECT_FILE_CFASL
	/*
	 *	Get the UNIX symbol table file header
	 */
	des2 = open(gstab(),0);
	if (des2 >= 0) {
		old.a_magic = 0;
		if (read(des2,(char *)&old,sizeof(old)) >= 0) {
			if (N_BADMAG(old)) {
				lseek(des2,512,0);	/* Try block #1 */
				read(des2,(char *)&old,sizeof(old));
			}
			if (!N_BADMAG(old)) work.a_syms = old.a_syms;
		}
	}
#endif	EUNICE_UNIX_OBJECT_FILE_CFASL
	/*
	 *	Update the UNIX header so that the extra cref page is
	 *	considered part of data space.
	 */
	if (extra_cref_page) work.a_data += 512;
	/*
	 *	Write the UNIX header
	 */
	if (write(descrip,&work,sizeof(work)) == -1)
				error("Dumplisp failed",FALSE);
	/*
	 *	seek to 1024 (end of headers)
	 */
	if (lseek(descrip,1024,0) == -1)
				error("Dumplisp failed",FALSE);
	/*
	 *	write the world
	 */
	if (write(descrip,0,workp->a_text) == -1)
				error("Dumplisp failed",FALSE);
	if (extra_cref_page)
		if (write(descrip,(((unsigned)curhbeg) & pagrnd), pagsiz) == -1)
				error("Dumplisp failed",FALSE);
	if (write(descrip,start_of_data,workp->a_data) == -1)
				error("Dumplisp failed",FALSE);

#if	!EUNICE_UNIX_OBJECT_FILE_CFASL
	/*
	 *	VMS OBJECT files: We are done with the executable file
	 */
	close(descrip);
	/*
	 *	Now try to write the symbol table file!
	 */
	strcpy(buf,gstab());

	strcpy(stabname,fname);
	if (index(stabname,'.') == 0) strcat(stabname,".stb");
	else strcpy(index(stabname,'.'), ".stb");

	/* Use Link/Unlink to rename the symbol table */
	if (!strncmp(gstab(),"tmp:",4))
		if (link(buf,stabname) >= 0)
			if (unlink(buf) >= 0) return(nil);

	/* Copy the symbol table */
	if ((fp  = open(buf,0)) < 0)
			error("Symbol table file not there\n",FALSE);
	fp1 = creat(stabname,0666,"var");
	while((i = read(fp,buf,5000)) > 0)
		if (write(fp1,buf,i) == -1) {
			close(fp); close(fp1);
			error("Error writing symbol table\n",FALSE);
		}
	close(fp); close(fp1);
	if (i < 0) error("Error reading symbol table\n",FALSE);
	if (!strncmp(gstab(),"tmp:",4)) unlink(gstab);
	/*
	 *	Done
	 */
	reborn = 0;
	return(nil);
#else	EUNICE_UNIX_OBJECT_FILE_CFASL
	/*
	 *	UNIX OBJECT files: append the new symbol table
	 */
	if(des2>0  && work.a_syms) {
		count = old.a_text + old.a_data + (old.a_magic == 0413 ? 1024
							       : sizeof(old));
		if(-1==lseek(des2,count,0))
			error("Could not seek to stab",FALSE);
		for(count = old.a_syms;count > 0; count -=BUFSIZ) {
			ax = read(des2,tbuf,(int)(count < BUFSIZ ? count : BUFSIZ));
			if(ax==0) {
				printf("Unexpected end of syms",count);
				fflush(stdout);
				break;
			} else if(ax >  0)
				write(descrip,tbuf,ax);
			else 
				error("Failure to write dumplisp stab",FALSE);
		}
		if(-1 == lseek(des2,(long)
			((old.a_magic == 0413 ? 1024 : sizeof(old))
			+ old.a_text + old.a_data
				+ old.a_trsize + old.a_drsize + old.a_syms),
			       0))
			error(" Could not seek to string table ",FALSE);
		for( ax = 1 ; ax > 0;) {
		     ax = read(des2,tbuf,BUFSIZ);
		     if(ax > 0)
			 write(descrip,tbuf,ax);
		     else if (ax < 0)
			 error("Error in string table read ",FALSE);
		}
	}
	close(descrip);
	if(des2>0) close(des2);
	reborn = 0;

	return(nil);
#endif	EUNICE_UNIX_OBJECT_FILE_CFASL
}
#endif
#if (os_4_1 | os_4_1a | os_4_1c | os_4_2| os_4_3)

#if (os_4_2 | os_4_3)
#include <sys/vadvise.h>
#else
#include <vadvise.h>
#endif

pagerand() { vadvise(VA_ANOM); }
pageseql() { vadvise(VA_SEQL); }
pagenorm() { vadvise(VA_NORM); }
#endif
#if (os_unisoft | os_vms | os_unix_ts | os_masscomp)
pagerand() { }
pageseql() { }
pagenorm() { }
#endif

/* getaddress --
 *
 * (getaddress '|_entry1| 'fncname1 '|_entry2| 'fncname2 ...)
 *
 * binds value of symbol |_entry1| to function defition of atom fncname1, etc.
 *
 * returns fnc-binding of fncname1.
 *
 */
#if os_unisoft || os_unix_ts
#define N_name n_name
#define STASSGN(p,q) strncpy(NTABLE[(p)].n_name,(q),8)
#else
#define N_name n_un.n_name
#define STASSGN(p,q) (NTABLE[p].N_name = (q))
#endif

lispval
Lgetaddress(){
	register struct argent *mlbot = lbot;
	register lispval work;
	register int numberofargs, i;
	char ostabf[128];
	struct nlist NTABLE[100];
	lispval dispget();

	Savestack(4);

	if(np-lbot == 2) protect(nil);	/* allow 2 args */
	numberofargs = (np - lbot)/3;
	if(numberofargs * 3 != np-lbot)
	   error("getaddress: arguments must come in triples ",FALSE);

	for ( i=0; i<numberofargs; i++,mlbot += 3) {
		NTABLE[i].n_value = 0;
	        mlbot[0].val = verify(mlbot[0].val,"Incorrect entry specification for binding");
		STASSGN(i,(char *) mlbot[0].val);
		while(TYPE(mlbot[1].val) != ATOM)
			mlbot[1].val = errorh1(Vermisc,
					"Bad associated atom name for binding",
					  nil,TRUE,0,mlbot[1].val);
		mlbot[2].val = dispget(mlbot[2].val,"getaddress: Incorrect discipline specification ",(lispval)Vsubrou->a.pname);
	}
		STASSGN(numberofargs,"");
	strncpy(ostabf,gstab(),128);
	if ( nlist(ostabf,NTABLE) == -1 ) {
	    errorh1(Vermisc,"Getaddress: Bad file",nil,FALSE,0,inewstr(ostabf));
	} else 
	    for (i=0,mlbot=lbot+1; i<numberofargs; i++,mlbot+=3) {
		if ( NTABLE[i].n_value == 0 )
		    fprintf(stderr,"Undefined symbol: %s\n",
			      NTABLE[i].N_name);
		else {
		    work= newfunct();
		    work->bcd.start = (lispval (*) ())NTABLE[i].n_value;
		    work->bcd.discipline = mlbot[1].val;
		    mlbot->val->a.fnbnd = work;
		}
	    };
	Restorestack();
	return(lbot[1].val->a.fnbnd);
};

Igtpgsz()
{
#if (os_4_1c | os_4_2 | os_4_3)
	return(getpagesize());
#else
#if (vax_eunice_vms | os_unisoft)
	return(512);
#else
#if os_masscomp
	return(4096);
#else
	return(1024);
#endif
#endif
#endif
}
