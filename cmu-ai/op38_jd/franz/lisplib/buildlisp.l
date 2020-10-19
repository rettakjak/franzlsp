(int:setsyntax '\; 'splicing 'zapline)
;; buildlisp.l				-[Mon Aug 15 11:04:31 1983 by jkf]-
;; build the lisp system from the C kernel
;; the order of these files is very important.
;;
(setq rcs-buildlisp-
   "$Header: /usr/lib/lisp/RCS/buildlisp.l,v 1.2 83/08/15 22:16:06 jkf Exp $")

; variables to modify the way buildlisp works:
;   build:dir -- directory containing the object files to load
;	default: /usr/lib/lisp
;   build:map -- map file to write the fasl map into.
;	default: no map is written
;   build:load -- if t then only loading will be done, no fasl'ing
;   build:lisp-type -- may contain a site dependent name to help build
;		a personalized lisp
;   lisp-library-directory -- directory which will contain lisp library
;	this directory will be part of the default search path
;   lisp-object-directory -- directory which contains the lisp object file
;
(or (boundp 'build:dir) (setq build:dir '/usr/local/lib/lisp))
(or (boundp 'build:map) (setq build:map nil))
(or (boundp 'build:load) (setq build:load nil))
(or (boundp 'build:lisp-type) (setq build:lisp-type 'franz))
(or ;(boundp 'lisp-library-directory)
   (setq lisp-library-directory '/usr/local/lib/lisp))
(or (boundp 'lisp-object-directory)
   (setq lisp-object-directory '/usr/local/bin))


(def build:load
   (lambda (x)
      (prog (name)
	 (setq name (concat build:dir "/" x))
	 (cond (build:map
		  (fasl-or-load name t build:map)
			; concatentate to map after first file loaded
			(cond ((null (status appendmap))
			       (sstatus appendmap t))))
		     (t (fasl-or-load name nil nil))))))

(def fasl-or-load
   (lambda (name provide-map map-name)
      (prog  (tempname)
      (cond ((and (null build:load)
		  (probef (setq tempname (concat name ".o"))))
	     (cond (provide-map (fasl tempname map-name))
		   (t (fasl name))))
	    ((probef (setq tempname (concat name ".l")))
	     (load tempname))
	    (t (patom "fasl-or-load: Can't find file: ")
	       (patom name)
	       (terpr)
	       (exit 1)  ; just go away fast so user will realize problem
	    )))))
	       
; For compile-to-C compiler.
;
; Ultimately, we want to load in-c-fasl.o.  But since we can't load
; any .o file until we've loaded in-c-fasl.l, we have to load it 1st.
;
; /\/: Need a better test for whether to load in-c-fasl at all.
;
(cond ((status feature i386)
       (prog (name o-name l-name)
          (setq name (concat build:dir "/in-c-fasl"))
	  (setq o-name (concat name ".o"))
	  (setq l-name (concat name ".l"))
	  (cond (build:load		;load only the .l version
		 (build:load 'in-c-fasl))
		((not (and (probef l-name) (probef o-name)))
		 (patom "One of in-c-fasl.l or .o doesn't exist.")
		 (terpr)
		 (exit 1))
		(t			;load .l then .o
		 (load l-name)
		 (fasl o-name))))))

(build:load 'common0)
(build:load 'syntax)
(build:load 'charmac)
(build:load 'macros)
(build:load 'common1)
(build:load 'common2)
(build:load 'common3)
(build:load 'vector)
(build:load 'array)
(build:load 'pp)

; only load format if it is compiled. This will save some time when
; building an interpreted lisp system
(cond ((probef (concat build:dir "/format.o"))
       (build:load 'format)))

(build:load 'version)

(and (not (eq build:lisp-type 'zlisp))
     (build:load 'tpl))

(build:load 'toplevel)

(cond ((eq build:lisp-type 'franz))
      ((eq build:lisp-type 'zlisp)
       (build:load 'zlisp))
      (t (patom "Invalid lisp type: ")
	 (patom build:lisp-type)
	 (terpr)
	 (exit 1)))

; kill definitions
(putd 'fasl-or-load  nil)
(putd 'build:load nil)
(allocate 'hunk3 2)	; make space for format to use
(new-vector 1024)
(new-vectori-long 512)
(gc)






