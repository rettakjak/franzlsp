;;; ----	c h e a d		header file for inclusion

;$Header: chead.l,v 1.8 83/11/22 10:12:27 jkf Exp $
;
;			-[Tue Nov 22 08:32:26 1983 by jkf]-

; Copyright (c) 1982 ,  The Regents of the University of California.
; Copyright (c) 1980 ,  The Regents of the University of California.
; All rights reserved.  

; authors: John K. Foderaro and Kevin Layer

(putprop 'chead t 'version)	; flag that this file has been loaded

;--- build vax by default
;
(cond ((not (or (status feature for-vax)
		(status feature for-68k)
		(status feature for-c)))
       (sstatus feature for-vax)))

; global franz special variables
(declare (special $gcprint 	; t means print stats when  gc occurs.
		  $ldprint	; t means print fasl messages
		  $gccount$	; incremented every gc
		  $global-reg$	; t means that np and lbot are in global regs
		  float-format	; printf string used to print flonums
		  lisp-library-directory ; contains as assembler
		  lisp-object-directory  ; contains lisp for -r option
		  franz-minor-version-number ; just what it says
		  ))

; keep 'em sorted please!
(declare (special
	     Liszt-file-names
	     arithequiv
	     bnp-sym
	     ch-newline
	     compiler-name
	     er-fatal		;; # of fatal erros
	     er-warn		;; # of warnings
	     fl-anno
	     fl-asm
	     fl-comments
   #+for-c   fl-initname	; name of init routine appended to C code
	     fl-inter
	     fl-macl
	     fl-profile
	     fl-tran
	     fl-tty
	     fl-verb
	     fl-vms
	     fl-warn
	     fl-xref
	     formsiz
   #+for-c   g-C-block-level
	     g-allf
	     g-arginfo
	     g-args
	     g-arrayspecs
	     g-bindloc
	     g-bindtype
	     g-calltype
	     g-cc
	     g-comments
	     g-compare		; holds comparison 'till if...goto (pnx)
	     g-compfcn		; t if compiling a function
	     g-complrname
	     g-cmpop
	     g-current
	     g-currentargs
	     g-decls
	     g-defined	;prop indicating def in file being compiled [jwd]
	     g-didvectorcode
	     g-dropnpcnt
	     g-falseop
   #+for-c   g-fixnum-block-level
	     g-flocal
	     g-fname
	     g-ftype
	     g-funcs
	     g-functype
	     g-ignorereg
	     g-labs
	     g-litcnt
	     g-lits
	     g-loc
	     g-localf
	     g-loccnt
	     g-locs
	     g-masklab
	     g-optionalp
	     g-reflst
	     g-refseen
	     g-regmaskvec
	     g-reguse
	     g-ret
	     g-skipcode
	     g-spec
	     g-stackspace
	     g-stdref
	     g-topsym
	     g-tran
	     g-tranloc
	     g-trancnt
	     g-trueloc
	     g-trueop
	     g-assumed-lambda	;list of functions called before defined [jwd]
	     g-vartype
	     ibase
	     in-line-lambda-number
	     internal-macros
	     k-ftype
	     liszt-eof-forms
	     liszt-file-name
	     liszt-process-forms
	     liszt-root-name
	     macros
	     old-declare-fcn
	     old-top-level
	     original-readtable
	     piport
	     poport
	     readtable
	     special
	     twa-list
	     user-top-level
	     v-dfile
	     v-form
	     v-hfile
	     v-ifile
	     v-sfile
	     v-xfile
	     vms-pointers
	     vns-include
	     vp-dfile
	     vp-hfile
	     vp-sfile
	     vp-xfile
	     vps-include))

(eval-when (compile eval)
   (or (get 'const 'loaded) (load '../const.l)))

; load in the macro files if compiling or interpreting.
;
(eval-when (compile eval)
   (or (get 'cmacros 'version) (load '../cmacros)))
