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
