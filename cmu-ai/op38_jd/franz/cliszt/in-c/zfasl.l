;;; ZFasl -- top routine for loading compiled Lisp-in-C
;;;
;;; J. Dalton, AIAI, Univeristy of Edinburgh
;;;
;;; /\/ Doesn't use load-search-path.
;;; /\/ filename must be given without extension


;;; First, make sure we have the necessary C code.

(cond ((not (getd 'clink))
       (cfasl 'clink.o '_clink 'clink "subroutine" "")))


;;; zfasl

(defvar *zfasl-history* nil)

(defun zfasl (filename &optional (initname 'init))
  (let ((o-filename (uconcat filename ".o"))
	(filename (if (symbolp filename) filename (concat filename)))
	(init-cname (uconcat "_" initname)))

    ;; remove junk from last file.  /\/ Normally we'd do this after loading
    ;; the file, but while debugging we want the routine to be accessable
    ;; until we're ready for the next one.
    #-finished-debugging
      (removeaddress init-cname)

    (if ;; load the compiled C code and define zinit routine
	(cfasl o-filename init-cname 'zinit "subroutine" "")

	then ;; call the file's init
             (zinit)

	     ;; keep records for debugging
	     (let ((time (status ctime)))
	       (push `(,filename ,o-filename ,initname ,time)
		     *zfasl-history*)
	       (setf (get filename 'last-zfasl) time))

	     ;; clean up (/\/ needs unwind-protect?)
	     #+finished-debugging
	     (removeaddress init-cname))

    nil))
