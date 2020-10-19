;;; ZFasl -- top routine for loading compiled Lisp-in-C
;;;
;;; J. Dalton, AIAI, Univeristy of Edinburgh
;;;

;;; N.B. Must be written in a style that can be loaded before the
;;; rest of the library, because no .o files can be loaded until
;;; zfasl is in place.  Indeed, the compiled version of this file
;;; can't be loaded unless the .l version is loaded first.

(def let				;won't be compiled & shouldn't be
  (macro (e)
    ((lambda (vars inits body)
       (cons (cons 'lambda (cons vars body))
	     inits))
     (mapcar 'car (cadr e))
     (mapcar 'cadr (cadr e))
     (cddr e))))

;;; First, make sure we have the necessary C code.

;;; Clink is now built-in and isn't called from Lisp.
; (cond ((not (getd 'clink))
;        (getaddress '_clink 'clink "subroutine")))

(cond ((not (getd 'fasl-note-redef))
       (getaddress '_set_redef 'fasl-note-redef 'lambda)))

;;; Note the kind of fasl we have
(cond ((not (status feature in-c-fasl))
       (sstatus feature in-c-fasl)))

;;; fasl for the compile-to-C liszt.  In effect, this replaces the
;;; standard, low-level, fasl that's written in C.   Another layer
;;; is built on top of this by lisplib/common2.

(def fasl
  (lexpr (nargs)			;(filename &optional map warnflag)
    ;; ignores map and warnflag arguments
    (zfasl (arg 1))))

;;; zfasl allows the name of the init routine to be specified.  An
;;; underscore will be prefixed to the name.  The Default is init,
;;; which is turned into _init.

;(declare (special *zfasl-history*))	;declare isn't available yet
(setq *zfasl-history* nil)		;for debugging

(def zfasl
  (lexpr (nargs)			;(filename &optional (initname 'init))
    (let ((filename (arg 1))
	  (o-filename (arg 1))
	  (initname (cond ((greaterp nargs 1) (arg 2)) (t 'init))))
      (let ((namelen (flatc filename))
	    (init-cname (uconcat "_" initname)))
      
	;; Add ".o" to o-filename if not already present.
	;; o-filename is eq to filename if filename ends ".o".
	(cond ((not (equal ".o" (substring o-filename (1- namelen) 2)))
	       (setq o-filename (uconcat o-filename ".o"))))

	;; Make filename be filename plus ".o" if filename doesn't exist,
	;; ".o" is not already present, and ".o" version does exist.
	(cond ((not (probef filename))
	       (cond ((and (not (eq o-filename filename))
			   (probef o-filename))
		      (setq filename o-filename))
		     (t
		      (error "Can't file file:" filename)))))

	;; Ensure filename is a symbol.
	(cond ((not (symbolp filename))
	       (setq filename (concat filename))))

	;; Print load message unless $ldprint is nil
	(cond ($ldprint (patom "[fasl ") (patom filename) (patom "]")
			(terpr)))

	(cond (;; load the compiled C code and define zinit routine.
	       ;; turn off load messages (only) during the call to cfasl.
	       (let (($ldprint nil))
		 (cfasl filename init-cname 'zinit "subroutine" ""))

	       ;; clean up _before_ calling init routine, in case
	       ;; the init involves loading other compiled files.
	       (removeaddress init-cname)

	       ;; call the file's init
	       (zinit)

	       ;; keep records for debugging
	       (let ((time (status ctime)))
		 (setq *zfasl-history*
		       (cons (list filename initname time)
			     *zfasl-history*))
		 (putprop filename time 'last-zfasl))))

	nil))))
