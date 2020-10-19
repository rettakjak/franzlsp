(include-if (null (get 'chead 'version)) "../chead.l")
(Liszt-file io
   "$Header: io.l,v 1.16 83/12/06 15:50:22 sklower Exp $")

;;; ---- 	i o				input output
;;;
;;;				-[Fri Sep  2 21:37:05 1983 by layer]-


;--- d-printfileheader :: emit standard beginning to .c file
;
#+for-c
(defun d-printfileheader ()
  (cwrite "/* Compiled by " compiler-name N
          " * on " (status ctime) N
	  " */" N
	  (d-make-include "global.h") N
	  (d-make-include "frame.h") N
	  (d-make-include "structs.h") N
	  (d-make-include "compiled.h") N ; /\/ should this incl global, etc.
	  #+use-h-file
	  (d-make-include (concat v-root ".h")) N
	  N
	  "static lispval *linker;" N
	  "static struct trent *trans;" N
	  N))

#+for-c
(defun d-make-include (name)
  (concat "#include \"" name "\""))

;--- d-prelude :: emit code common to beginning of all functions
;
#+(or for-vax for-68k)
(defun d-prelude nil
   (let ((loada-op #+for-vax 'movab #+for-68k 'lea)
	 (sub2-op #+for-vax 'subl2 #+for-68k 'subl)
	 (add2-op #+for-vax 'addl2 #+for-68k 'addl)
	 (temp-reg #+for-68k 'a5 #+for-vax '#.fixnum-reg))
       #+for-68k (setq g-stackspace (d-genlab) g-masklab (d-genlab))
       (if g-flocal
	   then (C-push '#.olbot-reg)
		(e-write3 loada-op
			  `(,(* -4 g-currentargs) #.np-reg) '#.olbot-reg)
		(e-writel g-topsym)
	   else #+for-vax (e-write2 '".word" '0x5c0)
		#+for-68k
		(progn
		    (e-write3 'link 'a6 (concat "#-" g-stackspace))
		    (e-write2 'tstb '(-132 sp))
		    (e-write3 'moveml `($ ,g-masklab)
			      (concat "a6@(-" g-stackspace ")"))
		    (e-move '#.Nilatom '#.nil-reg))
		(if fl-profile
		    then (e-write3 loada-op 'mcnts
				   #+for-vax 'r0 #+for-68k 'a0)
			 (e-quick-call 'mcount))
		(e-write3 loada-op 'linker '#.bind-reg)
		(if (eq g-ftype 'lexpr)
		    then ; Here is the method:
			 ;  We push the number of arguments, nargs,
			 ; on the name stack twice, setting olbot-reg
			 ; to point to the second one, so that the user
			 ; has a copy that he can set, and we have
			 ; one that we can use for address calcs.
			 ;  So, the stack will look like this, after
			 ; the setup:
			 ;np    ->
			 ;olbot -> nargs (II) 	  -- user settable
			 ;      -> nargs (I)	  -- ours
			 ;      -> (arg nargs)
			 ;      -> (arg nargs-1)
			 ;...
			 ;      -> (arg 1)
			 ;
			 (if (null $global-reg$)
			     then (e-move '#.np-sym '#.np-reg))
			 (e-writel g-topsym)
			 (e-move '#.np-reg temp-reg)
			 (e-write3 sub2-op
				   (if $global-reg$
				       then '#.lbot-reg
				       else '#.lbot-sym) temp-reg)
			 (e-write3 add2-op (e-cvt '(fixnum 0)) temp-reg)
			 (L-push temp-reg)
			 (e-move '#.np-reg '#.olbot-reg)
			 (L-push temp-reg)
		    else ;   Set up old lbot register, base reg for variable
			 ; references, and make sure the np points where
			 ; it should since the caller might
			 ; have given too few or too many args.
			 (e-move
				   (if $global-reg$
				       then '#.lbot-reg
				       else '#.lbot-sym)
				   '#.olbot-reg)
			 #+for-68k
			 (e-write3 loada-op
				   `(,(* 4 g-currentargs) #.olbot-reg)
				   '#.np-reg)
			 (e-writel g-topsym)))))

; The in-C prelude follows the VAX and 68k, except that lexprs make use
; of local C variables to hold the number of arguments and a pointer to
; them, and that local functions can't use the same np-reg and olbot-reg
; as their caller because C makes them local to the calling routine.
; So local functions are compiled with the same prelude and postlude as
; normal functions.  The main difference is that they're called directly
; rather then through the transfer table.
;
; /\/ As a side-effect, local lexprs should be possible, but we still
; /\/ forbid them for compatibility with the rest of the universe.
;
#+for-c
(defun d-prelude nil
   (let ((temp-reg '#.fixnum-reg)
	 (global-lbot (if $global-reg$ then '#.lbot-reg else '#.lbot-sym)))
       ; declarations
       ; /\/ note we set up for $global-reg$ false;
       ; /\/ and in this case, no lbot-reg is needed, I think.
       (e-statement "register struct argent *" '#.np-reg)
       (e-statement "register struct argent *" '#.olbot-reg)
       (e-statement "register lispval " 'r0)
       (e-statement "register int " '#.fixnum-reg)
       (e-statement "struct nament *" '#.bnp-reg)
       ;(e-statement "lispval *" '#.bind-reg)
       ; /\/ --- end of code that assumes $global-reg$ false
       (d-local-temp-declarations)
       (cwrite N)
       ;; initializations
       (if (and nil g-flocal)
	   then (C-push '#.olbot-reg)
	        (e-move `(#.np-reg - ,g-currentargs) '#.olbot-reg)
		(e-writel g-topsym)
	   else 
		;(e-move 'linker '#.bind-reg)	;/\/ should not be needed
		(if (eq g-ftype 'lexpr)
		    then ; Here is the method:
			 ;  We push the number of arguments, nargs,
			 ; on the name stack once, setting olbot-reg
			 ; to point to it, so that the user has a copy
			 ; that can be set.  We use local C variables
		         ; for address calcs.
			 ;  So, the stack will look like this, after
			 ; the setup:
			 ;np    ->
			 ;olbot -> nargs
			 ;      -> (arg nargs)
			 ;      -> (arg nargs-1)
			 ;...
			 ;      -> (arg 1)
		         ;largp ->
			 ;
		         (e-statement "struct argent *" '#.largp-var)
			 (e-statement "int" '#.nargs-var)
			 (cwrite N)
			 (if (null $global-reg$)
			     then (e-move '#.np-sym '#.np-reg))
			 ; remember entry-time lbot as ptr to arg base
			 (e-move `(,global-lbot - 1)
				 '#.largp-var)
			 ; calculate number of arguments and put in local var
			 (e-move `(#.np-reg - ,global-lbot)
			         '#.nargs-var)
			 ; >>> point of TRO reentry <<<
			 (e-writel g-topsym)
			 ; push the number of arguments as a lispval above the
			 ; actual arguments and make olbot-reg point to it.
			 (e-move '#.np-reg '#.olbot-reg)
			 (L-push (e-cvt `(fixnum #.nargs-var)))
		    else ;   Set up old lbot register, base reg for variable
			 ; references, and make sure the np points where
			 ; it should since the caller might
			 ; have given too few or too many args.
			 (e-move   (if $global-reg$
				       then '#.lbot-reg
				       else '#.lbot-sym)
				   '#.olbot-reg)
			 (e-move   `(#.olbot-reg + ,g-currentargs)
				   '#.np-reg)
			 (e-writel g-topsym)))))

#+for-c
(defun d-local-temp-declarations ()
  ; Define local temp vars.  A good C compiler won't allocate
  ; stack space for them if they're unused, and their values
  ; matter only locally, so we don't want to make them global,
  ; lest the compiler try to maintain the right global values.
  ; The output is something like this, depending on g-reguse:
  ;     lispval u1, u2, u3, u4;
  (e-indent 1)
  (cwrite "lispval ")
  (do ((regs g-reguse (cdr regs)))
      ((null regs))
    (cwrite (caar regs))		;the name, e.g. u1
    (if (cdr regs) then (cwrite ", ")))
  (cwrite ";" N))

;--- d-fini :: emit code  at end of function
;
(defun d-fini nil
   #+for-c
   (if (not (= 0 g-C-block-level))
       then (comp-err "internal error: C block level " g-C-block-level
		      " at end of function"))
   #+for-c
   (if (not (= 0 g-fixnum-block-level))
       then (comp-err "internal error: fixnum block level "
		      g-fixnum-block-level " at end of function"))

   (if (and #+for-c nil #-for-c t g-flocal)
       then (C-pop '#.olbot-reg)
	    (e-write1 #+for-vax 'rsb #+for-68k 'rts
		      #+for-c   "return (r0)")
       else #+for-68k
	    (progn
		(e-write3 'moveml (concat "a6@(-" g-stackspace ")")
			  `($ ,g-masklab))
		(e-write2 'unlk 'a6))
	    (e-return))
   #+for-c
   (progn
       (d-vectorerrorcode)
       (cwrite "}" N)))

;--- d-bindtab :: emit binder table when all functions compiled
;
#+(or for-vax for-68k)
(defun d-bindtab nil
  (setq g-skipcode nil)	  ; make sure this isnt ignored	
  (e-writel "bind_org")
  #+for-vax
  (progn
      (e-write2 ".set linker_size," (length g-lits))
      (e-write2 ".set trans_size," (length g-tran)))
  #+for-68k
  (progn
      (e-write2 "linker_size = " (length g-lits))
      (e-write2 "trans_size = " (length g-tran)))
  (do ((ll (setq g-funcs (nreverse g-funcs)) (cdr ll)))
      ((null ll))
      (if (memq (caar ll) '(lambda nlambda macro eval))
	  then (e-write2 '".long"
			 (cdr (assoc (caar ll)
				     '((lambda . 0) (nlambda . 1)
				       (macro . 2) (eval . 99)))))
	  else (comp-err " bad type in lit list " (car ll))))
  
  (e-write1 ".long -1")
  (e-writel "lit_org")
  (d-asciiout (nreverse g-lits))
  (if g-tran then (d-asciiout (nreverse g-tran)))
  (d-asciiout (mapcar '(lambda (x) (if (eq (car x) 'eval)
				       then (cadr x)
				       else (caddr x)))
		      g-funcs))
  (e-writel "lit_end"))

#+(and for-c (not use-d-file))
(defun d-bindtab ()
  (setq g-skipcode nil)			;make sure nothing more is ignored.
  (setq g-lits (nreverse g-lits)
	g-tran (nreverse g-tran)
	g-funcs (nreverse g-funcs))

  ;; Output literals and names of called functions
  (d-string-array 'literals g-lits)
  (d-string-array 'callnames g-tran)

  ;; Output binder table (things to do)
  (cwrite N
	  "static struct bindspec bindtab[] = {" N)
  (do ((funcs g-funcs (cdr funcs))
       (spec))
      ((null funcs))
    (setq spec (car funcs))
    (caseq (car spec)
      ((lambda nlambda macro)
       (cwrite "	{&(" (car spec) ")," (cadr spec) ",")
       (d-stringout (caddr spec))
       (cwrite "}," N))
      (eval
       (cwrite "	{&(tatom),0,")
       (d-stringout (cadr spec))
       (cwrite "}," N))
      (t (error "Illegal bind-spec: " spec))))
  (cwrite "	{0}" N "};" N)	;mark end of table

  ;; Output init routine to call clink
  (d-define-init))

#+(and for-c use-d-file)
(defun d-bindtab (&aux entries)
  (setq g-skipcode nil)			;make sure nothing more is ignored.
  (setq g-lits (nreverse g-lits)
	g-tran (nreverse g-tran)
	g-funcs (nreverse g-funcs))

  ;; Output address table in .c file
  (setq entries
	(mapcan #'(lambda (x)
		    (if (memq (car x) '(lambda nlambda macro))
			then (list (cadr x))))
		g-funcs))
  (if entries
      then (cwrite N
		   "/* Function table */" N
		   N
		   "static lispfun entry[] = {" N)
           (do ((ents entries (cdr ents)))
	       ((null (cdr ents))
		(cwrite "	" (car ents) N
			"};" N))
	     (cwrite "	" (car ents) "," N)))

  ;; Init interface routine
  (d-define-init)

  ;; Data (.d) file
  (msg (P vp-dfile) ";;; g-lits" N)
  (pp-form g-lits vp-dfile)
  (msg (P vp-dfile) N N ";;; g-tran" N)
  (pp-form g-tran vp-dfile)
  (msg (P vp-dfile) N N ";;; g-funcs" N)
  (pp-form g-funcs vp-dfile)
  nil)

;--- d-define-init :: emit init routine to interface with clink
;
#+for-c
(defun d-define-init ()
  (cwrite N
	  (or fl-initname 'init) "()" N
	  "{" N
	  "  clink(literals, get_table_size(literals), &linker," N
	  "        callnames, get_table_size(callnames), &trans," N
	  "        bindtab);" N
	  "}" N
	  N))


;--- d-string-array :: print array of C strings representing certain objects
;
#+for-c
(defun d-string-array (name objects)
  (if objects
   then (cwrite N
		"static char *" name "[] = {" N)
        (do ((objects objects (cdr objects)))
	    ((null (cdr objects))
	     (cwrite "	")
	     (d-stringout (car objects))
	     (cwrite N "};" N))
	  (cwrite "	")
	  (d-stringout (car objects))
	  (cwrite "," N))
   else (cwrite N "static char **" name " = 0;" N)))

;--- d-stringout :: print a Lisp object as a C string
;
; /\/ This whole algorithm loses.  It decides the number of characters to
; print in advance even though it doesn't know how many escape characters
; will be added.  Better to just print straight through and terpri whenever
; (nwritn) gets too big.
;
#+for-c
(defun d-stringout (x)
  (let* ((form (explode x))
	 (formsiz (length form)))
    (cwrite "\"")
    ;; print string
    (do ((curform form)
	 (remsiz formsiz)
	 (thissiz))
	((zerop remsiz))
      ;; print one line's worth
      (setq thissiz (min (- 60 (nwritn vp-sfile)) remsiz)
	    remsiz (difference remsiz thissiz))
      (do ((count thissiz (1- count)))
	  ((zerop count))
	(cwrite (d-C-character (car curform)))
	(setq curform (cdr curform)))
      ;; either end of string or end of line
      (cond ((zerop remsiz) (cwrite "\""))	;end of string
	    (t (cwrite "\\" N))))))		;end of line

;--- d-C-character :: cvt a char represented by a symbol into a 
;                     representation suitable for C source.
;
(defun d-C-character (c)
  (let ((ascii-val (getcharn c 1)))
    (cond ((< ascii-val 32.)
	   ;; Represent as \0dd where each d is an octal digit.
	   ;; Note that concat turns an int into its digits.
	   (uconcat "\\0" (/ ascii-val 8) (mod ascii-val 8)))
	  ((eq c '\\) '\\\\)
	  ((eq c '\") '\\\")
	  (t c))))

;--- d-asciiout :: print a list of asciz strings
;
#-for-c
(defun d-asciiout (args)
       (do ((lits args (cdr lits))
	    (form))
	   ((null lits))
	   (setq form (explode (car lits))
		 formsiz (length form))
	   (do ((remsiz formsiz)
		(curform form)
		(thissiz))
	       ((zerop remsiz))
	       (if (greaterp remsiz 60) then (sfilewrite '".ascii \"")
		   else (sfilewrite '".asciz \""))
	       (setq thissiz (min 60 remsiz))
	       (do ((count thissiz (1- count)))
		   ((zerop count)
		    (sfilewrite (concat '\" (ascii 10)))
		    (setq remsiz (difference remsiz thissiz)))
		   (if (eq '#.ch-newline (car curform))
		       then (sfilewrite '\\012)
		    else (if (or (eq '\\ (car curform))
				 (eq '\" (car curform)))
			     then (sfilewrite '\\))
			 (sfilewrite (car curform)))
		   (setq curform (cdr curform))))))

;--- d-autorunhead
;
; Here is the C program to generate the assembly language:
;	(after some cleaning up)
;
;main(argc,argv,arge)
;register char *argv[];
;register char **arge;
;{
;	*--argv = "-f";
;	*--argv = "/usr/ucb/lisp";
;	execve("/usr/ucb/lisp",argv,arge);
;	exit(0);
;}
;
#+(or for-vax for-68k)
(defun d-printautorun nil
   (let ((readtable (makereadtable t))	; in raw readtable
	 tport ar-file)
      (setsyntax #/; 'vsplicing-macro 'zapline)
      (setq ar-file (concat lisp-library-directory
			    #+for-vax "/autorun/vax"
			    #+for-68k "/autorun/68k"))
      (if (null (errset (setq tport (infile ar-file))))
	 then (comp-err "Can't open autorun header file " ar-file))
      (do ((x (read tport '<eof>) (read tport '<eof>)))
	  ((eq '<eof> x) (close tport))
	  (sfilewrite x))))


;--- e-cvt :: converts an IADR into an EIADR
;
; An IADR, or Intermediate Address, is fromed from a symbolic address
; (a constant or the name of a variable) by routines like d-loc and
; d-loclit.  (See also d-simple and d-rsimple.)
;
; An EIADR (Extended IADR) represents a Vax Address.  It is converted to
; the real thing by e-cvtas.  For the PNX compiler, EIADR's are already
; bits of C code, and little further conversion is needed.
;
#+(or for-vax for-68k)
(defun e-cvt (arg)
   (if     (eq 'reg arg) then #+for-vax 'r0 #+for-68k 'd0
    elseif (eq 'areg arg) then #+for-vax 'r0 #+for-68k 'a0
    elseif (eq 'Nil arg) then #+for-vax '($ 0) #+for-68k '#.nil-reg
    elseif (eq 'T arg)
       then (if g-trueloc
		thenret
		else (setq g-trueloc (e-cvt (d-loclit t nil))))
    elseif (eq 'stack arg) then '(+ #.np-reg)
    elseif (eq 'unstack arg) then '(- #.np-reg)
    elseif (or (atom arg) (symbolp arg)) then arg
    elseif (dtpr arg)
       then (caseq (car arg)
		   (stack	`(,(* 4 (1- (cadr arg))) #.olbot-reg))
		   (vstack	`(* ,(* 4 (1- (cadr arg))) #.olbot-reg))
		   (bind	`(* ,(* 4 (1- (cadr arg))) #.bind-reg))
		   (lbind	`(,(* 4 (1- (cadr arg))) #.bind-reg))
		   (fixnum	`(\# ,(cadr arg)))
		   (immed	`($ ,(cadr arg)))
		   (racc	(cdr arg))
		   (t		(comp-err " bad arg to e-cvt : "
					  (or arg))))
       else  (comp-warn "bad arg to e-cvt : " (or arg))))


;--- e-cvt for PNX :: convert an IADR into a bit of C code
;
#+for-c
(defun e-cvt (arg)
   (if     (eq 'reg arg) then 'r0
    elseif (eq 'areg arg) then (comp-err "areg e-cvt")
    elseif (eq 'Nil arg) then 'nil
    elseif (eq 'T arg)
       then (if g-trueloc
		thenret
		else (setq g-trueloc (e-cvt (d-loclit t nil))))
    elseif (eq 'stack arg) then `#.np-plus
    elseif (eq 'unstack arg) then `#.np-minus
    elseif (or (atom arg) (symbolp arg)) then arg
    elseif (dtpr arg)
       then (caseq (car arg)
		   (stack	`((#.olbot-reg + ,(1- (cadr arg)))
				  -> val))
		   (vstack	`((#.olbot-reg + ,(1- (cadr arg)))
				  -> val -> d.cdr))
		   (bind	`(#.bind-reg \[ ,(1- (cadr arg)) \]
				  -> a.clb))
		   (lbind	`(#.bind-reg \[ ,(1- (cadr arg)) \]
				  ))
		   (iunbox	`(,(e-cvt (cadr arg)) -> i))
		   (fixnum	`((lispval) &Fixzero \[ ,(cadr arg) \]))
		   (immed	(cadr arg))
		   (racc	(cdr arg))
		   (t		(comp-err " bad arg to e-cvt : "
					  (or arg))))
       else  (comp-warn "bad arg to e-cvt : " (or arg))))

;--- e-uncvt :: inverse of e-cvt, used for making comments pretty
;
; Actually, this is not the inverse of e-cvt.  It takes an IADR, just
; as e-cvt does, but instead of converting it into a more machine-
; specific form it converts it back into a symbolic form.  It would
; be better to say that it is the inverse of d-loc and d-loclit.
;
(defun e-uncvt (arg)
   (if (atom arg)
       then (if (eq 'Nil arg)
		then nil
		else arg)
    elseif (eq 'stack (car arg))
       then (do ((i g-loccnt)
		 (ll g-locs))
		((and (equal i (cadr arg)) (atom (car ll))) (car ll))
		(if (atom (car ll))
		    then (setq ll (cdr ll)
			       i (1- i))
		    else (setq ll (cdr ll))))
    elseif (or (eq 'bind (car arg)) (eq 'lbind (car arg)))
       then (do ((i g-litcnt (1- i))
		 (ll g-lits (cdr ll)))
		((equal i (cadr arg))
		 (cond ((eq 'lbind (car arg))
			(list 'quote (car ll)))
		       (t (car ll)))))
    elseif (eq 'iunbox (car arg))
       then (list 'iunbox (e-uncvt (cadr arg)))
       else arg))


;--- e-cvtas :: convert an EIADR to vax unix assembler fmt and print it
;	- form : an EIADR form
;
#+for-vax
(defun e-cvtas (form)
  (if (atom form)
      then (sfilewrite form)
      else (if (eq '* (car form))
	       then (if (eq '\# (cadr form))
			then (setq form `($ ,(caddr form)))
			else (sfilewrite "*")
			     (setq form (cdr form))))
	   (if (numberp (car form))
	       then (sfilewrite (car form))
		    (sfilewrite "(")
		    (sfilewrite (cadr form))
		    (sfilewrite ")")
		    (if (caddr form)
			then (sfilewrite "[")
			     (sfilewrite (caddr form))
			     (sfilewrite "]"))
	    elseif (eq '+ (car form))
	       then (sfilewrite '"(")
		    (sfilewrite (cadr form))
		    (sfilewrite '")+")
	    elseif (eq '- (car form))
	       then (sfilewrite '"-(")
		    (sfilewrite (cadr form))
		    (sfilewrite '")")
	    elseif (eq '\# (car form))	; 5120 is base of small fixnums
	       then (sfilewrite (concat "$" (+ (* (cadr form) 4) 5120)))
	    elseif (eq '$ (car form))
	       then (sfilewrite '"$")
		    (sfilewrite (cadr form)))))

#+for-68k
(defun e-cvtas (form)
   (if (atom form)
       then (sfilewrite form)
       else (if (eq '* (car form))
		then (if (eq '\# (cadr form))
			 then (setq form `($ ,(caddr form)))))
	    (if (numberp (car form))
		then (sfilewrite (cadr form))
		     (sfilewrite "@")
		     (if (not (zerop (car form)))
			 then (sfilewrite "(")
			      (sfilewrite (car form))
			      (sfilewrite ")"))
	    elseif (eq '% (car form))
	       then (setq form (cdr form))
		    (sfilewrite (cadr form))
		    (sfilewrite "@(")
		    (sfilewrite (car form))
		    (sfilewrite ",")
		    (sfilewrite (caddr form))
		    (sfilewrite ":L)")
	     elseif (eq '+ (car form))
		then (sfilewrite (cadr form))
		     (sfilewrite '"@+")
	     elseif (eq '- (car form))
		then (sfilewrite (cadr form))
		     (sfilewrite '"@-")
	     elseif (eq '\# (car form))
		then (sfilewrite (concat '#.Nilatom "+0x1400"
					 (if (null (signp l (cadr form)))
					     then "+" else "")
					 (* (cadr form) 4)))
	     elseif (eq '$ (car form))
		then (sfilewrite '"#")
		     (sfilewrite (cadr form))
	       else (comp-err " bad arg to e-cvtas : " (or form)))))

; The PNX version is fairly simple.  Atoms are bits of C code; lists
; are EIADRs meant to be enclosed in parens.  That is, we use Lisp parens
; for C parens.
;
#+for-c
(defun e-cvtas (form)
  (if (eq form ch-newline)
      then (cwrite N)
   elseif (atom form)
      then (cwrite form)
      else (cwrite "(")
           (mapc #'e-cvtas form)	; note: no spaces
	   (cwrite ")")))


;--- e-docomment :: print any comment lines
;
; Always prints a newline, even if there are no comments.
; e-endstatement is usually called just before d-docomment.
;
#+(or for-vax for-68k)
(defun e-docomment nil
  (if g-comments
      then (do ((ll (nreverse g-comments) (cdr ll)))
	       ((null ll))
	       (sfilewrite "	")
	       (sfilewrite #.comment-char)
	       (do ((ll (exploden (car ll)) (cdr ll)))
		   ((null ll))
		   (tyo (car ll) vp-sfile)
		   (cond ((eq #\newline (car ll))
			  (sfilewrite #.comment-char))))
	       (terpr vp-sfile))
	   (setq g-comments nil)
     else (terpr vp-sfile)))

#+for-c
(defun e-docomment nil
  (if g-comments
      then (do ((ll (nreverse g-comments) (cdr ll)))
	       ((null ll))
	       (e-do1comment (car ll)))
	   (setq g-comments nil)
     else (terpr vp-sfile)))

#+for-c
(defun e-do1comment (cmnt)
  ; get initial indent
  (e-indent-comment)
  (cwrite "/* ")
  ; now print comment text
  (do ((chars (exploden cmnt) (cdr chars)))
      ((null chars))
      (cond ((eq #\newline (car chars))
	     (cwrite " */" N)
	     ; initial indent again
	     (e-indent-comment)
	     (cwrite "/* "))
	    (t (tyo (car chars) vp-sfile))))
  (cwrite " */" N))

;--- e-indent-comment
;
; /\/ This still isn't quite right because a comment may need more than one
; /\/ line and we don't remember where to indent the continuation.
;
; /\/ Remember that nwritn counts tabs as one char.  We always print one
; /\/ tab at the beginning (unless it's a label), so col numbers are "off
; /\/ by seven".
;
#+for-c
(progn 'compile

(defvar v-comment-col 35)		;where we want comments to go
(defvar v-comment-max 50)		;length that puts cmnt on sep line

(defun e-indent-comment ()
  (let ((col (nwritn vp-sfile)))	;no. chars already printed this line
    (if (= col 0)
	then ; comment is alone on the line
             (e-indent 1)
     elseif (> col v-comment-max)
        then ; comment unlikely to fit on line
	     (cwrite N)
	     (e-indent 2)
     elseif (> col v-comment-col)
        then ; line extends beyond comment column
	     (cwrite " ")
        else ; comment can go where we want it -- tab out
	     (do ()
		 ((>= (nwritn vp-sfile) v-comment-col))
	         (cwrite " ")))))

);end #+for-c

;--- e-earlycomment
;
; Since the last comment emitted is the only one that applies directly to
; the statement we're emitting, it should be the one on the same line.  This
; means that earlier comments must be printed first.  Only the PNX version
; bothers to do this, though.
;
#-for-c
(defun e-earlycomment () nil)

#+for-c
(defun e-earlycomment ()
  (if (cdr g-comments)			;must be > 1
      (do ((ll (nreverse g-comments) (cdr ll)))
	  ((null (cdr ll)) (setq g-comments ll))
	  (e-do1comment (car ll)))))

;--- e-goto :: emit code to jump to the location given
;
(defun e-goto (lbl)
  (e-jump lbl))

;--- e-gotonil :: emit code to jump if nil was last computed
;
#+(or for-vax for-68k)
(defun e-gotonil (lbl)
  (e-write2 g-falseop lbl))

#+for-c
(defun e-gotonil (lbl)
  ; g-compare contains `(,src ,g-cmpop ,dst)
  (if (null g-compare)
      then (break "e-gotonil: null g-compare"))
  (e-test g-compare g-falseop lbl))

;--- e-gotot :: emit code to jump if t was last computed
;
#+(or for-vax for-68k)
(defun e-gotot (lbl)
  (e-write2 g-trueop lbl))

#+for-c
(defun e-gotot (lbl)
  ; g-compare contains `(,src ,g-cmpop ,dst)
  (if (null g-compare)
      (break "e-gotot: null g-compare"))
  (e-test g-compare g-trueop lbl))

; In-C compares:  On the VAX or 68k, e-cmp emits a compare instruction
; and e-gotot or e-gotonil emits a conditional transfer.  In the In-C
; version, e-cmp just records the comparison in g-compare, and both
; e-gotot and e-gotonil call e-test to emit the actual test and branch.
; There are two comparison operators involved here.  One, cmpop, is
; effectively the compare instruction while the other, testop, corresponds
; to the type of conditional branch.  If testop is ==0 or !=0, it is
; possible to eliminate it and do everything with cmpop (inverted if
; testop is ==0).  Normally cmpop is !=, but it may be something else,
; like &.  We don't expect it to ever be == and hence enter a break
; in that case.

#+for-c
(defun e-test (compare testop lbl)
  (let* (((src cmpop dst) compare)
	 (op (e-combine-test cmpop testop)))
    (if op
	then ; have optimized out testop
             (e-statement "if (" src op dst ")" ch-newline
			  'goto lbl)
	elseif (eq cmpop '==)
	   then (break "unexpected == compare")
	else (e-statement "if (" "(" src cmpop dst ")" testop ")" ch-newline
			  'goto lbl))))

#+for-c
(defun e-combine-test (cmpop testop)
  ;; eliminate testop if possible
  (if (eq testop '==0)			;invert?
      then (cdr
	    (assq cmpop
		  '((!= . ==) (>= . <) (<= . >))))
   elseif (eq testop '!=0)		;redundant test?
      then cmpop
   else nil))				;fail

;--- e-label :: emit a label
(defun e-label (lbl)
  (setq g-skipcode nil)
  (e-writel lbl))

;--- e-pop :: pop the given number of args from the stack
; g-locs is not! fixed
;
(defun e-pop (nargs)
  (if (greaterp nargs 0)
      then (e-dropnp nargs)))

;--- e-pushnil :: push a given number of nils on the stack
;
#+for-vax
(defun e-pushnil (nargs)
   (do ((i nargs))
       ((zerop i))
       (if (>& i 1)
	   then (e-write2 'clrq '#.np-plus)
		(setq i (- i 2))
	elseif (equal i 1)
	   then (e-write2 'clrl '#.np-plus)
		(setq i (1- i)))))

#+(or for-68k for-c)
(defun e-pushnil (nargs)
  (do ((i nargs))
      ((zerop i))
      (L-push '#.nil-reg)
      (setq i (1- i))))

;--- e-setupbind :: setup for shallow binding
;
(defun e-setupbind nil
  (e-move '#.bnp-sym '#.bnp-reg))

;--- e-unsetupbind :: restore temp value of bnp to real loc
;
(defun e-unsetupbind nil
  (e-move '#.bnp-reg '#.bnp-sym))

;--- e-shallowbind :: shallow bind value of variable and initialize it
;	- name : variable name
;	- val : IADR value for variable
;
#+(or for-vax for-68k)
(defun e-shallowbind (name val)
  (let ((vloc (d-loclit name t)))
       (e-move (e-cvt vloc) '(+ #.bnp-reg))	; store old val
       (e-move (e-cvt `(lbind ,@(cdr vloc)))
		       '(+ #.bnp-reg))		; now name
       (d-move val vloc)))		

#+for-c
(defun e-shallowbind (name val)
  (let ((vloc (d-loclit name t)))
       (e-move (e-cvt vloc) '(#.bnp-reg -> val))	; store old val
       (e-move (e-cvt `(lbind ,@(cdr vloc)))
	              '((#.bnp-reg ++) -> atm))		; now name
       (d-move val vloc)))		

;--- e-unshallowbind :: un shallow bind n variable from top of stack
;
#+for-vax
(defun e-unshallowbind (n)
  (e-setupbind)		; set up binding register
  (do ((i 1 (1+ i)))
      ((greaterp i n))
      (e-move `(,(* -8 i) #.bnp-reg) `(* ,(+ 4 (* -8 i)) #.bnp-reg)))
  (e-sub3 `($ ,(* 8 n)) '#.bnp-reg '#.bnp-sym))

#+for-68k
(defun e-unshallowbind (n)
  (makecomment "e-unshallowbind begin...")
  (e-setupbind)		; set up binding register
  (do ((i 1 (1+ i)))
      ((greaterp i n))
      (e-move `(,(* -8 i) #.bnp-reg) `(* ,(+ 4 (* -8 i)) #.bnp-reg)))
  (e-move '#.bnp-reg '#.bnp-sym)
  (e-sub `($ ,(* 8 n)) '#.bnp-sym)
  (makecomment "...end e-unshallowbind"))

#+for-c
(defun e-unshallowbind (n)
  (makecomment "e-unshallowbind begin...")
  (e-setupbind)		; set up binding register
  (do ((i 1 (1+ i)))
      ((greaterp i n))
      (e-move `((#.bnp-reg - ,i) -> val)
	      `((#.bnp-reg - ,i) -> atm -> a.clb)))
  (e-statement '#.bnp-sym '= '#.bnp-reg '- n)
  (makecomment "...end e-unshallowbind"))

;----------- very low level routines
; all output to the assembler file goes through these routines.
; They filter out obviously extraneous instructions as well as 
; combine sequential drops of np.

;--- e-dropnp :: unstack n values from np.
; rather than output the instruction now, we just remember that it
; must be done before any other instructions are done.  This will
; enable us to catch sequential e-dropnp's
;
(defun e-dropnp (n)
  (if (not g-skipcode)
      then (setq g-dropnpcnt (+ n (if g-dropnpcnt thenret else 0)))))

;--- em-checknpdrop :: check if we have a pending npdrop
; and do it if so.
;
#+(or for-vax for-68k)
(defmacro em-checknpdrop nil
   `(if g-dropnpcnt
	then (let ((dr g-dropnpcnt))
		 (setq g-dropnpcnt nil)
		 (e-sub `($ ,(* dr 4)) '#.np-reg))))

#+for-c
(defun em-checknpdrop nil
  (if g-dropnpcnt
      then (let ((dr g-dropnpcnt))
	     (setq g-dropnpcnt nil)
	     (e-statement '#.np-reg '-= dr))))

;--- em-checkskip :: check if we are skipping this code due to jump
;
(defmacro em-checkskip nil
  '(if g-skipcode then (sfilewrite #.comment-char)))

;--- e-endstatement :: print any end-of-code mark
;
; If code is being skipped and an end-comment mark is needed,
; we have to print that too.  (see e-jump, em-checkskip, e-label)
;
; e-endstatement is usually called just before d-docomment.
;
#+for-c
(defun e-endstatement ()
  (setq g-compare nil)		; whether we've used it or not
  (if g-skipcode
      then (cwrite "; */")
      else (cwrite ";")))

#+for-c
(defun e-endline ()
  (setq g-compare nil)		; whether we've used it or not
  (if g-skipcode
      then (cwrite " */")
      else ()))

;--- e-jump :: jump to given label
; and set g-skipcode so that all code following until the next label
; will be skipped.
;
(defun e-jump (l)
  (em-checknpdrop)
  (e-write2 #+for-vax 'jbr #+for-68k 'jra #+for-c 'goto
	    l)
  (setq g-skipcode t))

;--- e-return :: do return, and dont check for np drop
;
; Called only from d-fini.  Thus all function exits go through that
; code before returning.  And they all go through this code.
; /\/ Should this be otherwise?
;
(defun e-return nil
  (setq g-dropnpcnt nil)  ; we dont need to worry about nps
  #+for-vax (e-write1 'ret)
  #+for-c   (e-write1 "return (r0)")
  #+for-68k (progn  (e-write1 'rts)
		    (sfilewrite
		       (concat g-masklab " = " (d-makemask) '#.ch-newline))
		    (sfilewrite
		       (concat g-stackspace " = "
			       (Cstackspace) '#.ch-newline))))

;--- e-writel :: write out a label
;
(defun e-writel (label)
  (setq g-skipcode nil)
  (em-checknpdrop)
  (e-earlycomment)
  (sfilewrite label)
  (sfilewrite ":")
  (e-docomment))

;--- e-statement :: write code bits that need no more conversion
;		    /\/ s.b. called e-writestatement?
;
#+for-c
(defun e-statement n-parts
  (em-checkskip)
  (em-checknpdrop)
  (e-earlycomment)
  (e-indent 1)
  (do ((p 1 (1+ p)))
      ((>& p n-parts))
    (e-cvtas (arg p))
    (if (eq (arg p) ch-newline)
	then (e-indent 2)
     elseif (not (=& p n-parts))
	then (cwrite " ")))
  (e-endstatement)
  (e-docomment))

#+for-c
(defun e-line n-parts		;like e-statement but no final ";"
  (em-checkskip)
  (em-checknpdrop)
  (e-earlycomment)
  (e-indent 1)
  (do ((p 1 (1+ p)))
      ((>& p n-parts))
    (e-cvtas (arg p))
    (if (eq (arg p) ch-newline)
	then (e-indent 2)
     elseif (not (=& p n-parts))
	then (cwrite " ")))
  (e-endline)
  (e-docomment))

#+for-c
(progn 'compile

(defun e-begin-block ()
  (e-line '\{)
  (incf g-C-block-level))

(defun e-end-block ()
  (decf g-C-block-level)
  (e-line '\}))

(defun e-indent (n-tabs)
  ;; one or two tabs depending on whether we're on the 1st or later line
  ;; of a statement.  After the first tab, we indent 3 spaces for each
  ;; block level and then emit the second tab (8 spaces this time).  sigh.
  (cwrite "	")			;1st tab
  (do ((c g-C-block-level (1- c)))
      ((= c 0))
    (cwrite "   "))			;3 spaces for each block level
  (if (= n-tabs 2)
      then (cwrite "        ")))	;8 spaces

)	;end of #+for-c progn 'compile

;--- e-C-call :: write out call to a C routine
;
(defun e-C-call (routine arglist)
  (funcall #'e-statement
	   routine
	   ; need arg expressions separated by commas
	   (mapcon #'(lambda (argtail)
		       (if (cdr argtail)
			   then (list (car argtail) ",")
			   else (list (car argtail))))
		   arglist)))
  

;--- e-write1 :: write out one litteral
;
#+(or for-vax for-68k)
(defun e-write1 (lit)
  (em-checkskip)
  (em-checknpdrop)
  ;(e-earlycomment)
  (sfilewrite "	")
  (sfilewrite lit)
  (e-docomment))

#+for-c
(defun e-write1 (lit) (e-statement lit))

;--- e-write2 :: write one one litteral, and one operand
;
#+for-vax
(defun e-write2 (lit frm)
  (em-checkskip)
  (em-checknpdrop)
  ;(e-earlycomment)
  (sfilewrite "	")
  (sfilewrite lit)
  (sfilewrite "	")
  (e-cvtas frm)
  (e-docomment))

#+for-c
(defun e-write2 (lit frm) (e-statement lit frm))

#+for-68k
(defun e-write2 (lit frm)
  (em-checkskip)
  (em-checknpdrop)
  ;(e-earlycomment)
  (if (and (dtpr frm) (eq (car frm) '*))
      then (e-move (cdr frm) 'a5)
	   (sfilewrite "	")
	   (sfilewrite lit)
	   (sfilewrite '"	")
	   (e-cvtas '(0 a5))
      else (sfilewrite "	")
	   (sfilewrite lit)
	   (sfilewrite '"	")
	   (e-cvtas frm))
  (e-docomment))

;--- e-write3 :: write one one litteral, and two operands
;
#+for-vax
(defun e-write3 (lit frm1 frm2)
  (em-checkskip)
  (em-checknpdrop)
  ;(e-earlycomment)
  (sfilewrite "	")
  (sfilewrite lit)
  (sfilewrite "	")
  (e-cvtas frm1)
  (sfilewrite ",")
  (e-cvtas frm2)
  (e-docomment))

#+for-68k
(defun e-write3 (lit frm1 frm2)
   (em-checkskip)
   (em-checknpdrop)
   ;(e-earlycomment)
   (if (and (dtpr frm1) (eq (car frm1) '*)
	    (not (and (dtpr frm2) (eq (car frm2) '*))))
       then (e-move (cdr frm1) 'a5)
	    (sfilewrite "	")
	    (sfilewrite lit)
	    (sfilewrite '"	")
	    (e-cvtas '(0 a5))
	    (sfilewrite '",")
	    (e-cvtas frm2)
	    (e-docomment)
    elseif (and (not (and (dtpr frm1) (eq (car frm1) '*)))
		(dtpr frm2) (eq (car frm2) '*))
       then (e-move (cdr frm2) 'a5)
	    (sfilewrite "	")
	    (sfilewrite lit)
	    (sfilewrite '"	")
	    (e-cvtas frm1)
	    (sfilewrite '",")
	    (e-cvtas '(0 a5))
	    (e-docomment)
    elseif (and (dtpr frm1) (eq (car frm1) '*)
		(dtpr frm2) (eq (car frm2) '*))
       then (d-regused 'd6)
	    (e-move (cdr frm1) 'a5)
	    (e-move '(0 a5) 'd6)
	    (e-move (cdr frm2) 'a5)
	    (sfilewrite "	")
	    (sfilewrite lit)
	    (sfilewrite '"	")
	    (e-cvtas 'd6)
	    (sfilewrite '",")
	    (e-cvtas '(0 a5))
	    (e-docomment)
       else (sfilewrite "	")
	    (sfilewrite lit)
	    (sfilewrite '"	")
	    (e-cvtas frm1)
	    (sfilewrite '",")
	    (e-cvtas frm2)
	    (e-docomment)))

;--- e-write4 :: write one one litteral, and three operands
;
#+for-vax
(defun e-write4 (lit frm1 frm2 frm3)
  (em-checkskip)
  (em-checknpdrop)
  ;(e-earlycomment)
  (sfilewrite "	")
  (sfilewrite lit)
  (sfilewrite "	")
  (e-cvtas frm1)
  (sfilewrite ",")
  (e-cvtas frm2)
  (sfilewrite ",")
  (e-cvtas frm3)
  (e-docomment))


;--- e-write5 :: write one one litteral, and four operands
;
#+for-vax
(defun e-write5 (lit frm1 frm2 frm3 frm4)
  (em-checkskip)
  (em-checknpdrop)
  ;(e-earlycomment)
  (sfilewrite "	")
  (sfilewrite lit)
  (sfilewrite "	")
  (e-cvtas frm1)
  (sfilewrite ",")
  (e-cvtas frm2)
  (sfilewrite ",")
  (e-cvtas frm3)
  (sfilewrite ",")
  (e-cvtas frm4)
  (e-docomment))

;--- d-printdocstuff
;
; describe this version
;
#+(or for-vax for-68k)
(defun d-printdocstuff nil
   (sfilewrite (concat ".data "
		       #.comment-char
		       " this is just for documentation "))
   (terpr vp-sfile)
   (sfilewrite (concat ".asciz \"@(#)Compiled by " compiler-name
                " on " (status ctime) '\"))
   (terpr vp-sfile)
   (do ((xx Liszt-file-names (cdr xx)))
       ((null xx))
       (sfilewrite (concat ".asciz \"" (car xx) '\"))
       (terpr vp-sfile)))

#+(and for-c complete-pnx-liszt)
; /\/ don't do this until we use RCS
(defun d-printdocstuff ()
  (cwrite N
	  "/* This is just for documentation" N
	  " *" N)
  (do ((xx Liszt-file-names (cdr xx)))
      ((null xx))
    (cwrite " *  " (car xx) N))
  (cwrite " */" N))

#+for-c
(defun d-printdocstuff ()
  (declare (special this-liszt-version-built))
  (cwrite N "/* Compiler built " this-liszt-version-built " */" N))
