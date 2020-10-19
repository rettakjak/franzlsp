(include-if (null (get 'chead 'version)) "../chead.l")
(Liszt-file vector
   "$Header: vector.l,v 1.11 83/11/22 10:13:48 jkf Exp $")

;;; ----	v e c t o r			vector referencing
;;;
;;;				-[Fri Nov 11 22:35:50 1983 by jkf]-


(defun cc-vset ()
   ;;  Set a vector created via 'vector'.
   (d-vset 'lisp))

(defun cc-vref ()
   ;;  Reference a vector created via 'vector'.
   (d-vref 'lisp))

(defun cc-vseti-byte ()
   ;;  Set a vector created via 'vectori-byte'.
   (d-vset 'byte))

(defun cc-vrefi-byte ()
   ;;  Reference a vector created via 'vectori-byte'.
   (d-vref 'byte))

(defun cc-vseti-word ()
   ;;  Set a vector created via 'vectori-word'.
   (d-vset 'word))

(defun cc-vrefi-word ()
   ;;  Reference a vector created via 'vectori-word'.
   (d-vref 'word))

(defun cc-vseti-long ()
   ;;  Set a vector created via 'vectori-long'.
   (d-vset 'long))

(defun cc-vrefi-long ()
   ;;  Reference a vector created via 'vectori-long'.
   (d-vref 'long))

;--- d-vset :: handle all types of vset's
(defun d-vset (type)
   ;;  Generic vector store.  Type is either 'lisp', 'byte', 'word',
   ;; or 'long'.
   (let ((vect (cadr v-form))
	 (index (caddr v-form))
	 (val (cadddr v-form))
	 (vect-addr) (index-addr)
	 #+for-c (access-expr)
	 (vect-val) (fetchval)
	 (temp) (size)
	 (vec-reg #+for-vax 'r0 #+for-68k 'a0 #+for-c 'r0)
	 (val-reg #+for-vax 'r1 #+for-68k 'd1 #+for-c 'u1)
	 (index-reg '#.fixnum-reg)
	 (temp-reg #+for-vax 'r4 #+for-68k 'd0 #+for-c 'vset-reg)
	 (temp-areg #+for-vax 'bogus! #+for-68k 'a1 #+for-c 'vset-areg)
	 (oklab (d-genlab))
	 (needlowcheck t))		; t if must check lower index bounds

       #+for-68k (d-regused '#.fixnum-reg)
       (makecomment `(doing vec set type ,type))
       (if (fixp index)
	   then (if (<& index 0)
		    then (comp-err "vector index less than 0 " v-form))
		(setq needlowcheck nil))

       ; Compute the value to be stored...
       ;
       ; /\/ Not computing args in order here...
       ;
       ; If we are doing an immediate vector, then get the value
       ; instead of the boxed fixnum (in the case of byte), or
       ; word/long.  PNX version leaves it boxed until used...
       #+(or for-vax for-68k)
       (if (null (eq 'lisp type)) then (setq val `(cdr ,val)))

       (if (null (setq vect-val (d-simple val)))
	   then (let ((g-loc val-reg) g-cc g-ret)
		    (d-exp val))
		(setq vect-val val-reg)
		(d-clearreg val-reg)			;/\/ added for pnx
		(comp-warn "3rd arg compiled first in:" N
			   (or v-form))
	   else (setq vect-val (e-cvt vect-val)))

       ; make sure that we are not going to clobber val-reg...
       (if (not (and (d-simple vect) (d-simple index)))
	   then ; val-reg could be clobbered when we do the
		; fetching of the vector or index values
		(setq fetchval t)
		(push nil g-locs)	;do this...		[jwd]
		(incr g-loccnt)		;whenever we stack	[jwd]
		(e-move vect-val (e-cvt 'stack)))

       ; Compute the index after computing vector...
       ;
       (if (setq index-addr (d-simple index))
	   then (let ((g-loc vec-reg) g-cc g-ret)
		    (d-exp vect))
		(setq vect-addr vec-reg)	; the vector op is in vec-reg
		; we really want the cdr of index (the actual number).
		; if we can do that simply, great.  otherwise we
		; bring the index into index-reg and then do the cdr ourselves
		#+(or for-vax for-68k)
		(if (setq temp (d-simple `(cdr ,index)))
		    then (d-move temp index-reg)
		    else (d-move index-addr index-reg)
			 #+for-vax
			 (e-move `(0 ,index-reg) index-reg)
			 #+for-68k
			 (progn
			     (e-move index-reg 'a5)
			     (e-move '(0 a5) index-reg)))
		#+for-c
		(d-move `(iunbox ,index-addr)	; add unbox to index IADR
			index-reg)		; and move that
		(setq index-addr index-reg)
	   else ; the index isn't computable simply, so we must
		; stack the vector location to keep it safe
		(let ((g-loc 'stack) g-cc g-ret)
		    (d-exp vect))
		(push nil g-locs)
		(incr g-loccnt)
		; compute index's value into index-reg
		(d-fixnumexp index)
		; now put vector address into vec-reg
		(d-move 'unstack vec-reg)
		(decr g-loccnt)
		(pop g-locs)
		(setq vect-addr vec-reg
		      index-addr index-reg)
		; must be sure that the cc's reflect the value of index-reg
		#+(or for-vax for-68k)
		(e-tst index-reg))

       ;   At this point, vect-addr (always vec-reg) contains the location of
       ; the start of the vector,  index-addr (always index-reg) contains
       ; the index value.
       ;   The condition codes reflect the value of the index.
       ; First we insure that the index is non negative
       ; test must use a jmp in case the object file is large
       ;
       #+(or for-vax for-68k)
       (if needlowcheck
	   then (e-write2 #+for-vax 'jgeq #+for-68k 'jpl oklab)
		(e-write2 'jmp 'vecindexerr)
		(e-label oklab)
		(setq oklab (d-genlab)))
       #+for-c
       (if needlowcheck
	   then (e-statement 'if `(,index-addr < 0) 'goto 'vecindexerr))

       ;; now, we compare against the size of the vector
       ;; the size of the vector is in bytes, we may want to shift this
       ;; to reflect the size in words or longwords, depending on the
       ;; type of reference
       #+(or for-vax for-68k)
       (progn
	 (if (eq type 'byte)
	     then ; can compare right away
		  (e-cmp index-addr `(-8 ,vect-addr))
	     else ; shift size into temp-reg
		  (setq size (if (eq type 'word) then 1 else 2))
		  #+for-vax
		      (e-write4 'ashl (concat '$- size)
			        `(-8 ,vect-addr) temp-reg)
		  #+for-68k
		  (progn
		      (e-move `(-8 ,vect-addr) temp-reg)
		      (e-write3 'asrl `($ ,size) temp-reg))
		  (e-cmp index-addr temp-reg)
		  (d-clearreg temp-reg))
         ;; size is the number of objects, the index is 0 based so
         ;; it must be less than the vector size
         (e-write2 #+for-vax 'jlss #+for-68k 'jmi oklab)
         (e-write2 'jmp 'vecindexerr)
         (e-label oklab))

       #+for-c
       (let ((size-expr (e-vect-size vect-addr type)))
	    (e-statement 'if `(,index-addr >= ,size-expr)
			 'goto 'vecindexerr))

       (if fetchval
	   then ; unstack the value to store...
		(e-move (e-cvt 'unstack) val-reg)
		(d-clearreg val-reg)	;/\/ added for pnx
		(decr g-loccnt)		;do this...		[jwd]
		(pop g-locs)		;whenever we unstack	[jwd]
		(setq vect-val val-reg))

       ;; if we get here then the access is in bounds
       #+for-c
       (setq access-expr (e-vect-ref vect-addr index-addr type))

       (if (eq type 'lisp)
	   then #+for-vax
		(e-move vect-val `(0 ,vect-addr ,index-addr))
		#+for-68k
		(progn
		    (e-move index-addr temp-reg)
		    (e-write3 'asll '($ 2) temp-reg)
		    (e-add vect-addr temp-reg)
		    (e-move temp-reg temp-areg)
		    (e-move vect-val `(0 ,temp-areg)))
		#+for-c
		(e-move vect-val access-expr)
		(if g-loc (e-move vect-val (e-cvt g-loc)))
		#+for-c
		(e-cmpnil access-expr)		;/\/ 68k???
		(if g-cc then (d-handlecc))
	   else (setq temp (cadr (assq type '((byte movb)
					      (word movw)
					      (long movl)))))
		#+for-vax
		(e-write3 temp vect-val `(0 ,vect-addr ,index-addr))
		#+for-68k
		(progn
		    (e-move index-addr temp-reg)
		    (caseq type
			(word (e-write3 'asll '($ 1) temp-reg))
			(long (e-write3 'asll '($ 2) temp-reg)))
		    (e-write3 'lea `(% 0 ,vec-reg ,temp-reg) temp-areg)
		    (if (eq type 'long)
			then (e-write3 temp vect-val `(0 ,temp-areg))
			else (e-move vect-val 'd1)
			     ; remember where vect-val is now	[jwd]
			     ; so we don't have to recompute	[jwd]
			     (setq vect-val 'd1)	;	[jwd]
			     (e-write3 temp 'd1 `(0 ,temp-areg))))
		#+for-c
		(progn
		    ; for pnx, remember we have a lispval not an int
		    (setq vect-val `(,vect-val -> i))
		    (e-move vect-val access-expr))
		(if g-loc
		    then ; [begin jwd]
		         ; At this point, index-reg contains the index and the
		         ; code below converts this to a lispval and returns
		         ; it.  But we should return the value set into the
		         ; vector, not the index.  The easiest way to do that
		         ; is to move the value into index-reg.
		         #+for-vax
			 (e-write3 (cadr (assq type '((byte cvtbl)
						      (word cvtwl)
						      (long movl))))
				   vect-val
				   index-reg)
			 #+for-68k
			 (progn
			   (e-move vect-val index-reg)
			   ; now sign-extend
			   (caseq type
			     (byte (e-write2 'extw index-reg)	;byte -> word
				   (e-write2 'extl index-reg))	;word -> long
			     (word (e-write2 'extl index-reg))));word -> long
			 ; [end jwd]
			 #+for-c
			 (progn
			     ; return val s.b. truncated to word or whatever
			     ; but vect-val hasn't been, so we take the
			     ; value out of the vector
			     (e-statement index-reg '= '(int) access-expr))

			 ; index-reg contains the value as an int,
			 ; but we need a lispval
		         (if (eq type 'byte)
			     then ; all bytes values are within the fixnum
				  ; range, we convert them to immediate
				  ; fixum with ease.
				  #+for-vax
				  (progn
				      (e-write4 'ashl '($ 2)
						index-reg index-reg)
				      (e-write3 'movab
						`(5120 ,index-reg)
						(e-cvt g-loc)))
				  #+for-68k
				  (progn
				      (e-move index-reg temp-reg)
				      (e-write3 'asll '($ 2) temp-reg)
				      (e-move temp-reg temp-areg)
				      (e-move
						(e-cvt '(fixnum 0))
						temp-reg)
				      (e-write3 'lea
						`(% 0 ,temp-areg ,temp-reg)
						temp-areg)
				      (e-move
						temp-areg
						(e-cvt g-loc)))
				  #+for-c
				  (d-move `(fixnum ,index-reg)
					  g-loc)
			     else ; must convert the hard way
				  (e-call-qnewint)
				  (d-clearreg)
				  (if (not (eq g-loc 'reg))
				      then (d-move 'reg g-loc)))
			 ; result is always non nil
			 (if (car g-cc) then (e-goto (car g-cc)))
		 elseif (car g-cc) then (e-goto (car g-cc))))
       (d-vectorindexcode)))

;--- d-vref :: handle all types of vref's
(defun d-vref (type)
   ;;  Generic vector reference.  Type is either 'lisp', 'byte', 'word',
   ;; or 'long'.
   (let ((vect (cadr v-form))
	 (index (caddr v-form))
	 (vect-addr) (index-addr) (temp) (size)
	 #+for-c (access-expr)
	 (vec-reg #+for-vax 'r0 #+for-68k 'a0 #+for-c 'r0)
	 (index-reg '#.fixnum-reg)
	 (temp-reg #+for-vax 'r4 #+for-68k 'd0 #+for-c 'vref-reg)
	 (temp-areg #+for-vax 'rX #+for-68k 'a1 #+for-c 'vref-areg)
	 (oklab (d-genlab))
	 (needlowcheck t))  ; t if must check lower index bounds

       #+for-68k (d-regused '#.fixnum-reg)
       (makecomment `(doing vec ref type ,type))
       (if (fixp index)
	   then (if (<& index 0)
		    then (comp-err "vector index less than 0 " v-form))
		(setq needlowcheck nil))

       (if (setq index-addr (d-simple index))
	   then (let ((g-loc vec-reg) g-cc g-ret)
		    (d-exp vect))
		(setq vect-addr vec-reg)	; the vector op is in vec-reg
		; we really want the cdr of index (the actual number).
		; if we can do that simply, great.  otherwise we bring the
		; index into index-reg and then do the cdr ourselves.
		; the C version can always do this "simply".
		#+(or for-vax for-68k)
		(if (setq temp (d-simple `(cdr ,index)))
		    then (d-move temp index-reg)
		    else (d-move index-addr index-reg)
			 #+for-vax
			 (e-move `(0 ,index-reg) index-reg)
			 #+for-68k
			 (progn
			     (e-move index-reg 'a5)
			     (e-move '(0 a5) index-reg)))
		#+for-c
		(d-move `(iunbox ,index-addr)	; add unbox to index IADR
			index-reg)		; and move that
		(setq index-addr index-reg)
	   else ; the index isn't computable simply, so we must
		; stack the vector location to keep it safe
		(let ((g-loc 'stack) g-cc g-ret)
		    (d-exp vect))
		(push nil g-locs)
		(incr g-loccnt)
		; compute index's value into index-reg
		(d-fixnumexp index)
		; now put vector address into vec-reg
		(d-move 'unstack vec-reg)
		(decr g-loccnt)
		(pop g-locs)
		(setq vect-addr vec-reg
		      index-addr index-reg)
		; must be sure that the cc's reflect the value of index-reg
		#+(or for-vax for-68k)
		(e-tst index-reg))
       
       ; at this point, vect-addr (always vec-reg) contains the location of
       ; the start of the vector,  index-addr (always index-reg) contains
       ; the index value.  the condition codes reflect the value of
       ; the index (vax/68k)
       ; First we insure that the index is non negative
       ; test must use a jmp in case the object file is large
       ;
       #+(or for-vax for-68k)
       (if needlowcheck
	   then (e-write2 #+for-vax 'jgeq #+for-68k 'jpl oklab)
		(e-write2 'jmp 'vecindexerr)
		(e-label oklab)
		(setq oklab (d-genlab)))
       #+for-c
       (if needlowcheck
	   then (e-statement 'if `(,index-addr < 0) 'goto 'vecindexerr))

       ; now, we compare against the size of the vector
       ; the size of the vector is in bytes, we may want to shift this
       ; to reflect the size in words or longwords, depending on the
       ; type of reference
       #+(or for-vax for-68k)
       (progn
	 (if (eq type 'byte)
	     then ; can compare right away
	          (e-cmp index-addr `(-8 ,vect-addr))
	     else ; shift size into temp-reg
		  (setq size (if (eq type 'word) then 1 else 2))
		  #+for-vax
		  (e-write4 'ashl (concat '$- size) `(-8 ,vect-addr) temp-reg)
		  #+for-68k
		  (progn
		      (e-move `(-8 ,vect-addr) temp-reg)
		      (e-write3 'asrl `($ ,size) temp-reg))
		  (e-cmp index-addr temp-reg)
		  (d-clearreg temp-reg))
	 ; size is the number of objects, the index is 0 based so
	 ; it must be less than the vector size
	 (e-write2 #+for-vax 'jlss #+for-68k 'jmi oklab)
	 (e-write2 'jmp 'vecindexerr)
	 (e-label oklab))

       #+for-c
       (let ((size-expr (e-vect-size vect-addr type)))
	    (e-statement 'if `(,index-addr >= ,size-expr)
			 'goto 'vecindexerr))

       ;; if we get here then the access is in bounds
       #+for-c
       (setq access-expr (e-vect-ref vect-addr index-addr type))

       (if g-loc
	   then ; we care about the value.
		; if the value is one of the fixnum types, then we
		; move the value to index-reg so it can be fixnum converted
		(if (eq type 'lisp)
		    then #+for-vax
			 (e-move `(0 ,vect-addr ,index-addr)
				   (e-cvt g-loc))
			 #+for-68k
			 (progn
			     (e-move index-addr temp-reg)
			     (e-write3 'asll '($ 2) temp-reg)
			     (e-add vect-addr temp-reg)
			     (e-move temp-reg temp-areg)
			     (e-move `(0 ,temp-areg) (e-cvt g-loc))
			     ; /\/ why no (e-cmpnil `(0 ,temp-areg))?
			     )
			 #+for-c
			 (progn
			     (e-move access-expr (e-cvt g-loc))
			     (e-cmpnil access-expr))
			 (if g-cc then (d-handlecc))
		    else #+for-vax
			 (progn
			     (setq temp (cadr (assq type '((byte cvtbl)
							   (word cvtwl)
							   (long movl)))))
			     (e-write3 temp
				       `(0 ,vect-addr ,index-addr)
				       index-reg))
			 #+for-68k
			 (progn
			     (setq temp
				   (cadr (assq type '((byte movb)
						      (word movw)
						      (long movl)))))
			     (caseq type
				    (word (e-write3 'asll '($ 1) index-reg))
				    (long (e-write3 'asll '($ 2) index-reg)))
			     (e-write3 'lea `(% 0 ,vec-reg ,index-reg)
				       temp-areg)
			     (if (memq type '(byte word))
				 then (e-write2 'clrl index-reg))
			     (e-write3 temp `(0 ,temp-areg) index-reg)
			     (caseq type	; now sign-extend [jwd]
			       (byte (e-write2 'extw index-reg)	;byte->word
				     (e-write2 'extl index-reg));word->long
			       (word (e-write2 'extl index-reg))))

			 #+for-c
			 (e-move access-expr index-reg)

			 (if (eq type 'byte)
			     then ; all bytes values are within the fixnum
				  ; range, we convert them to immediate
				  ; fixum with ease.
				  #+for-vax
				  (progn
				      (e-write4 'ashl '($ 2)
						index-reg index-reg)
				      (e-write3 'movab
						`(5120 ,index-reg)
						(e-cvt g-loc)))
				  #+for-68k
				  (progn
				      (e-write3 'asll '($ 2) index-reg)
				      (e-move index-reg temp-areg)
				      (e-move
						'($ _nilatom+0x1400)
						temp-reg)
				      (e-write3 'lea
						`(% 0 ,temp-areg ,temp-reg)
						temp-areg)
				      (e-move
						temp-areg
						(e-cvt g-loc)))
				  #+for-c
				  (d-move `(fixnum ,index-reg)
					  g-loc)
			     else ; must convert the hard way
				  (e-call-qnewint)
				  (d-clearreg)
				  (if (not (eq g-loc 'reg))
				      then (d-move 'reg g-loc)))
			 ; result is always non nil
			 (if (car g-cc) then (e-goto (car g-cc))))
	elseif g-cc
	     ; we dont care about the value, just whether it's nil
	   then (if (eq type 'lisp)
		    then #+for-vax
			 (e-tst `(0 ,vect-addr ,index-addr))
			 #+for-68k
			 (progn
			     (e-move index-addr temp-reg)
			     (e-write3 'asll '($ 2) temp-reg)
			     (e-add vect-addr temp-reg)
			     (e-move temp-reg temp-areg)
			     (e-cmpnil `(0 ,temp-areg)))
			 #+for-c
			 (e-cmpnil access-expr)
			 (d-handlecc)
		    else ; if fixnum, then it is always true
			 (if (car g-cc) then (e-goto (car g-cc)))))

       ; /\/ The 68k version needs to do (d-clearreg temp-reg)
       ; /\/ and (d-clearreg temp-areg) here because they were
       ; /\/ used in computing the value.

       (d-vectorindexcode)))


;--- d-vectorindexcode :: put out code to call the vector range error.
; At this point the vector is in r0, the index an immediate fixnum in r5
; we call the function int:vector-range-error with two arguments, the
; vector and the index.
;
#+(or for-vax for-68k)
(defun d-vectorindexcode ()
   (if (null g-didvectorcode)
      then (let ((afterlab (d-genlab)))
	      (e-goto afterlab)
	      (e-label 'vecindexerr)
	      (d-move #+for-vax 'r0 #+for-68k 'a0 #+for-c 'r0
		      'stack)
	      (e-call-qnewint)
	      (d-move 'reg 'stack)
	      (d-calltran 'int:vector-range-error 2)
	      ; never returns
	      (e-label afterlab))
	   (setq g-didvectorcode t)))

; The PNX compiler can't handle vector errors in this way because in C
; labels have to be local to a function.  So we need to emit vector error
; code once for each function that deals with vectors.  Also, we want to
; make sure the error lable is at the outermost level of the function and
; not inside some inner block.  Therefore, we're going to emit the error
; code at the end of the function.  g-didvectorcode won't help us here --
; we need something that says we need the error code, not that we've already
; done it.  Actually, we use the same variable and just change its meaning.
; For the PNX compiler, g-didvectorcode means that we have emitted some
; code that deals with vectors and that needs error signalling code somewhere.
; So...
;
#+for-c
(defun d-vectorindexcode ()
   (setq g-didvectorcode t))		;need error code eventually

; The error call goes at the end of the function, after the return, so
; we don't need to goto around it.
;
#+for-c
(defun d-vectorerrorcode ()
   (if g-didvectorcode
       then    (e-label 'vecindexerr)
	       (d-move 'reg 'stack)
	       (e-call-qnewint)
	       (d-move 'reg 'stack)
	       (d-calltran 'int:vector-range-error 2)
	       ; never returns
	       (e-line "/* NOTREACHED */")))


;--- e-vect-ref [PNX only]
;
; Returns an expression that extracts an element of a vector
;
(defun e-vect-ref (vect-addr index-addr type)
  (caseq type
    (lisp `(,vect-addr ->  v.vector  \[ ,index-addr \]))
    (byte `(,vect-addr -> vb.vectorb \[ ,index-addr \]))
    (word `(,vect-addr -> vw.vectorw \[ ,index-addr \]))
    (long `(,vect-addr -> vl.vectorl \[ ,index-addr \]))
    (t (comp-err "Internal error: illegal vector type " (or type)))))

;--- e-vect-size [PNX only]
;
; Returns an expression that converts the vector size in bytes (as
; stored with the vector) into units of the element type.
;
(defun e-vect-size (vect-addr type)
  (let ((byte-size-expr (e-vect-ref vect-addr -2 'long)))
    (caseq type
      ((lisp long) `(,byte-size-expr >> 2))
      (byte           byte-size-expr)
      (word        `(,byte-size-expr >> 1))
      (t (comp-err "Internal error: illegal vector type " (or type))))))


;------------------------ vector access functions

;--- cc-vectorp :: check for vectorness
;
(defun cc-vectorp nil
  (d-typesimp (cadr v-form) #.(immed-const 18)))

;--- cc-vectorip :: check for vectoriness
;
(defun cc-vectorip nil
  (d-typesimp (cadr v-form) #.(immed-const 19)))

;--- c-vsize :: extract vsize
;
(defun c-vsize nil
   (d-vectorsize (cadr v-form) '2))

(defun c-vsize-byte nil
   (d-vectorsize (cadr v-form) '0))

(defun c-vsize-word nil
   (d-vectorsize (cadr v-form) '1))

(defun d-vectorsize (form shift)
   (let ((g-loc #+for-vax 'reg #+for-68k 'a0 #+for-c 'reg)
	 g-cc
	 g-ret)
       (d-exp form))
   ; get size into `fixnum-reg' for fixnum boxing
   (if (zerop shift)
       then #+for-vax
            (e-move '(-8 r0) '#.fixnum-reg)
	    #+for-68k
            (e-move '(-8 a0) '#.fixnum-reg)
	    #+for-c
	    (e-move (e-vect-ref 'r0 -2 'long) '#.fixnum-reg)
       else #+for-vax
	    (e-write4 'ashl (concat '$- shift) '(-8 r0) '#.fixnum-reg)
	    #+for-68k
	    (progn
		(e-move '(-8 a0) '#.fixnum-reg)
		(e-write3 'asrl `($ ,shift) '#.fixnum-reg))
	    #+for-c
	    (e-move `(,(e-vect-ref 'r0 -2 'long) >> ,shift) '#.fixnum-reg))
   (e-call-qnewint))
