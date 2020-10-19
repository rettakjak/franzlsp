
;;; ----	c o n s t		header file for inclusion

;
;$Header: const.l,v 1.3 83/08/28 17:47:20 layer Exp $
;

(putprop 'const t 'loaded)	; flag that this file has been loaded

;--- parameters: these must be evaluated at compile time so readmacros will
;    work
(eval-when (compile eval)

   (setq ch-newline (ascii #\lf))

   #+(or for-vax for-68k)
   (setq np-sym "_np"
	 lbot-sym "_lbot"
	 bnp-sym "_bnp")

   #+for-c
   (setq np-sym 'np		;was "np_sym"
	 lbot-sym 'lbot		;was "lbot_sym"
	 bnp-sym 'bnp		;was "bnp_sym"
	 np-reg 'np0		;was 'np_reg
	 lbot-reg 'lbot_reg
	 bnp-reg 'bnp_reg
	 bind-reg 'linker	;was 'bind_reg (now use global directly)
	 olbot-reg 'argp	;was 'olbot_reg
	 fixnum-reg 'i
	 np-plus 'np0++->val		;was 'np_plus then 'np0++
	 np-minus '|(--np0)->val|	;was 'np_minus then '--np0
	 Cstack 'Cstack			;just a literal marker
	 unCstack 'unCstack		;just a literal marker
	 Nilatom 'nil_atom
	 nil-reg 'nil			;was nil_reg
	 comment-char "/* "
	 nargs-var 'nargs		;for lexprs
	 largp-var 'largp)		;for lexprs
	 
   #+for-vax
   (setq np-reg 'r6
	 lbot-reg 'r7
	 bind-reg 'r8
	 np-plus '(+ r6)
	 np-minus '(- r6)
	 bnp-reg 'r5
	 fixnum-reg 'r5
	 olbot-reg 'r10
	 nil-reg "*** this should never be used ***"
	 comment-char "#"
	 Cstack "-(sp)"
	 unCstack "(sp)+"
	 Nilatom "$0")

   #+for-68k
   (setq bnp-reg 'a1
	 np-reg 'a2
	 lbot-reg 'd3		; only for hacked version of 68k lisp
	 bind-reg 'a3
	 olbot-reg 'a4
	 fixnum-reg 'd2
	 nil-reg 'd7
	 np-plus '(+ a2)
	 np-minus '(- a2)
	 Nilatom "#_nilatom"
	 comment-char "|"
	 Cstack "sp@-"
	 unCstack "sp@+"))

;--- evaluation frame parameters.  These must correspond to what is 
; in h/frame.h in the C system
;
(eval-when (compile load eval)
  (setq C_GO 1   	C_RET 2   	C_THROW 3   	C_RESET 4)
  (setq F_PROG 1 	F_CATCH 2 	F_RESET 3))

; offsets in frame
#-for-c
(setq OF_olderrp 12)	; 12 bytes from base of error frame
#+for-c
(setq OF_olderrp "OF_olderrp invalid")
