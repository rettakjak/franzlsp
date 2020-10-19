;;; ZFasl -- top routine for loading compiled Lisp-in-C
;;;
;;; J. Dalton, AIAI, Univeristy of Edinburgh
;;;

;;; N.B. Must be written in a style that can be loaded before the
;;; rest of the library.

(def let
  (macro (e)
    ((lambda (vars inits body)
       (cons (cons 'lambda (cons vars body))
	     inits))
     (mapcar 'car (cadr e))
     (mapcar 'cadr (cadr e))
     (cddr e))))

;;; First, make sure we have the necessary C code.

(cond ((not (getd 'clink))
       (getaddress '_clink 'clink "subroutine")))

;;; fasl for the compile-to-C liszt.

(def fasl
  (lexpr (nargs)			;(filename &optional map warnflag)
    ;; ignores map and warnflag arguments
    (zfasl (arg 1))))

;;; zfasl allows the name of the init routine to be specified

;(declare (special *zfasl-history*))
(setq *zfasl-history* nil)		;for debugging

(def zfasl
  (lexpr (nargs)			;(filename &optional (initname 'init))
    (let ((filename (arg 1))
	  (o-filename (arg 1))
	  (initname (cond ((greaterp nargs 1) (arg 2)) (t 'init))))
      (let ((namelen (flatc filename))
	    (init-cname (uconcat "_" initname)))
      
	;; Add ".o" to o-filename if not already present
	(cond ((not (equal ".o" (substring o-filename (1- namelen) 2)))
	       (setq o-filename (uconcat o-filename ".o"))))

	;; Make filename be filename plus ".o" if filename doesn't exist,
	;; ".o" is not already present, and ".o" version does.
	(cond ((not (probef filename))
	       (cond ((and (not (eq o-filename filename))
			   (probef o-filename))
		      (setq filename o-filename))
		     (t
		      (error "Can't file file:" filename)))))

	;; Ensure filename is a symbol.
	(cond ((not (symbolp filename))
	       (setq filename (concat filename))))

	(cond (;; load the compiled C code and define zinit routine
	       (cfasl filename init-cname 'zinit "subroutine" "")
	       ;; call the file's init
	       (zinit)

	       ;; keep records for debugging
	       (let ((time (status ctime)))
		 (setq *zfasl-history*
		       (cons (list filename initname time)
			     *zfasl-history*))
		 (putprop filename time 'last-zfasl))

	       ;; clean up (/\/ needs unwind-protect?)
	       (removeaddress init-cname)))
      
	nil))))
