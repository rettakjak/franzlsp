






                                   CCHHAAPPTTEERR  99


                               AArrrraayyss aanndd VVeeccttoorrss




               Arrays  and  vectors are two means of expressing aggre-
          gate data objects in FRANZ LISP.  Vectors may be thought  of
          as  sequences  of  data.  They are intended as a vehicle for
          user-defined data types.   This  use  of  vectors  is  still
          experimental  and  subject  to  revision.   As a simple data
          structure, they are similar to hunks and  strings.   Vectors
          are  used  to implement closures, and are useful to communi-
          cate with foreign functions.  Both of these topics were dis-
          cussed in Chapter 8.  Later in this chapter, we describe the
          current implementation of vectors, and will advise the  user
          what is most likely to change.

               Arrays in FRANZ LISP provide a programmable data struc-
          ture access mechanism.  One  possible  use  for  FRANZ  LISP
          arrays is to implement Maclisp style arrays which are simple
          vectors of fixnums, flonums or general lisp values.  This is
          described  in more detail in S9.3 but first we will describe
          how array references are handled by the lisp system.

               The structure of an array object is  given  in  S1.3.10
          and reproduced here for your convenience.


          +----------------+-----------+-----------+---------------------+
          | Subpart name   | Get value | Set value |        Type         |
          |                |           |           |                     |
          +----------------+-----------+-----------+---------------------+
          |access function | getaccess | putaccess |    binary, list     |
          |                |           |           |      or symbol      |
          +----------------+-----------+-----------+---------------------+
          |   auxiliary    |  getaux   |  putaux   |       lispval       |
          +----------------+-----------+-----------+---------------------+
          |     data       | arrayref  |  replace  | block of contiguous |
          |                |           |    set    |       lispval       |
          +----------------+-----------+-----------+---------------------+
          |    length      | getlength | putlength |       fixnum        |
          +----------------+-----------+-----------+---------------------+
          |     delta      | getdelta  | putdelta  |       fixnum        |
          +----------------+-----------+-----------+---------------------+








          AArrrraayyss aanndd VVeeccttoorrss                                       99--11







          AArrrraayyss aanndd VVeeccttoorrss                                       99--22


             99..11..   ggeenneerraall  aarrrraayyss   Suppose the evaluator is told to
                evaluate _(_f_o_o _a _b_) and the function cell of the symbol
                foo  contains  an  array  object  (which  we will call
                foo_arr_obj).  First the evaluator will  evaluate  and
                stack  the  values of _a and _b.  Next it will stack the
                array object foo_arr_obj.  Finally it  will  call  the
                access  function  of foo_arr_obj.  The access function
                should be a lexpror a symbol whose function cell  con-
                tains a lexpr.  The access function is responsible for
                locating  and  returning  a value from the array.  The
                array access function is free to interpret  the  argu-
                ments  as  it  wishes.   The  Maclisp compatible array
                access function which  is  provided  in  the  standard
                FRANZ  LISP  system  interprets  the arguments as sub-
                scripts in the same way as languages like Fortran  and
                Pascal.

                     The  array  access  function  will also be called
                upon to store elements in  the  array.   For  example,
                _(_s_t_o_r_e _(_f_o_o _a _b_) _c_)  will automatically expand to (foo
                c a b) and when the evaluator is  called  to  evaluate
                this, it will evaluate the arguments _c, _b and _a.  Then
                it will stack the array object (which is stored in the
                function  cell of foo) and call the array access func-
                tion with (now)  four  arguments.   The  array  access
                function  must  be able to tell this is a store opera-
                tion, which it can do by checking the number of  argu-
                ments it has been given (a lexpr can do this very eas-
                ily).



             99..22..  ssuubbppaarrttss ooff aann aarrrraayy oobbjjeecctt   An array  is  created
                by allocating an array object with _m_a_r_r_a_y and  filling
                in the fields.  Certain lisp functions  interpret  the
                values  of the subparts of the array object in special
                ways as described  in  the  following  text.   Placing
                illegal  values  in  these subparts may cause the lisp
                system to fail.



                99..22..11..  aacccceessss ffuunnccttiioonn   The purpose  of  the  access
                   function has been described above.  The contents of
                   the access function should be  a  lexpr,  either  a
                   binary  (compiled  function) or a list (interpreted
                   function).  It may also be a symbol whose  function
                   cell  contains a function definition.  This subpart
          ____________________
             lexpr is a function which accepts any number of arguments
          which are evaluated before the function is called.




                                             Printed: October 16, 1993







          AArrrraayyss aanndd VVeeccttoorrss                                       99--33


                   is used by _e_v_a_l, _f_u_n_c_a_l_l, and _a_p_p_l_y when evaluating
                   array references.



                99..22..22..   aauuxxiilliiaarryy   This can be used for any purpose.
                   If it is a list and the first element of that  list
                   is  the symbol unmarked_array then the data subpart
                   will not be marked by the garbage  collector  (this
                   is used in the Maclisp compatible array package and
                   has the potential for  causing  strange  errors  if
                   used incorrectly).



                99..22..33..  ddaattaa   This is either nil or points to a block
                   of  data  space  allocated  by  _s_e_g_m_e_n_t  or  _s_m_a_l_l_-
                   _s_e_g_m_e_n_t_.



                99..22..44..   lleennggtthh    This is a fixnum whose value is the
                   number of elements in the data block.  This is used
                   by  the garbage collector and by _a_r_r_a_y_r_e_f to deter-
                   mine if your index is in bounds.



                99..22..55..  ddeellttaa   This is a fixnum whose  value  is  the
                   number  of bytes in each element of the data block.
                   This will be four for an array of fixnums or  value
                   cells,  and eight for an array of flonums.  This is
                   used by the garbage collector and _a_r_r_a_y_r_e_f as well.



             99..33..  TThhee MMaacclliisspp ccoommppaattiibbllee aarrrraayy ppaacckkaaggee

                     A Maclisp style array is similar to what is known
                as arrays in other languages: a block  of  homogeneous
                data elements which is indexed by one or more integers
                called subscripts.   The  data  elements  can  be  all
                fixnums, flonums or general lisp objects.  An array is
                created by a call to the  function  _a_r_r_a_y  or  _*_a_r_r_a_y.
                The only difference is that _*_a_r_r_a_y evaluates its argu-
                ments.  This call: _(_a_r_r_a_y _f_o_o _t _3 _5_) sets up an  array
                called  foo  of dimensions 3 by 5.  The subscripts are
                zero based.  The first element is _(_f_o_o _0 _0_), the  next
                is  _(_f_o_o _0 _1_)  and so on up to _(_f_o_o _2 _4_).  The t indi-
                cates a general lisp object  array  which  means  each
                element  of  foo can be any type.  Each element can be
                any type since all that is stored in the  array  is  a
                pointer  to  a  lisp  object,  not  the object itself.


                                             Printed: October 16, 1993







          AArrrraayyss aanndd VVeeccttoorrss                                       99--44


                _A_r_r_a_y does this by allocating  an  array  object  with
                _m_a_r_r_a_y and then allocating a segment of 15 consecutive
                value cells with _s_m_a_l_l_-_s_e_g_m_e_n_t and storing  a  pointer
                to  that  segment  in  the  data  subpart of the array
                object.  The length and delta  subpart  of  the  array
                object  are filled in (with 15 and 4 respectively) and
                the access function subpart is set  to  point  to  the
                appropriate   array  access  function.   In  this case
                there is a special access function for two dimensional
                value  cell  arrays called arrac-twoD, and this access
                function is used.  The auxiliary  subpart  is  set  to
                (t 3 5)  which  describes  the  type  of array and the
                bounds of the subscripts.  Finally this  array  object
                is placed in the function cell of the symbol foo.  Now
                when _(_f_o_o _1 _3_) is evaluated, the array access function
                is  invoked  with  three arguments: 1, 3 and the array
                object.  From the auxiliary field of the array  object
                it  gets  a  description  of the particular array.  It
                then determines which element _(_f_o_o _1 _3_) refers to  and
                uses  arrayref to extract that element.  Since this is
                an array of value cells, what arrayref  returns  is  a
                value cell whose value is what we want, so we evaluate
                the  value  cell  and  return  it  as  the  value   of
                _(_f_o_o _1 _3_).

                     In Maclisp the call _(_a_r_r_a_y _f_o_o _f_i_x_n_u_m _2_5_) returns
                an array whose data object is a  block  of  25  memory
                words.   When  fixnums  are  stored in this array, the
                actual numbers are stored instead of pointers  to  the
                numbers  as  is  done  in  general lisp object arrays.
                This is efficient under  Maclisp  but  inefficient  in
                FRANZ  LISP  since  every  time a value was referenced
                from an array it had to be copied and a pointer to the
                copy returned to prevent aliasing.(f is when two vari-
                ables are share the same storage location.  For  exam-
                ple  if  the copying mentioned weren't done then after
                _(_s_e_t_q _x _(_f_o_o _2_)_) was done, the value of x and  (foo 2)
                would  share the same location.  Then should the value
                of (foo 2) change, x's value  would  change  as  well.
                This  is considered dangerous and as a result pointers
                are never returned into the data space of arrays.
                Thus t, fixnum and flonum arrays are  all  implemented
                in  the  same manner.  This should not affect the com-
                patibility of Maclisp and FRANZ LISP.  If there is  an
                application  where  a  block  of fixnums or flonums is
                required, then the exact same  effect  of  fixnum  and
                flonum  arrays  in  Maclisp  can  be achieved by using
                fixnum-block and flonum-block arrays.  Such arrays are
                required  if  you want to pass a large number of argu-
                ments to a Fortran or C coded function  and  then  get
                answers back.




                                             Printed: October 16, 1993







          AArrrraayyss aanndd VVeeccttoorrss                                       99--55


                     The  Maclisp compatible array package is just one
                example of how a general array scheme  can  be  imple-
                mented.   Another  type  of  array you could implement
                would be hashed arrays.  The subscript could  be  any-
                thing,  not  just a number.  The access function would
                hash the subscript and use the  result  to  select  an
                array  element.   With  the  generality of arrays also
                comes extra cost; if you just want a simple  aggregate
                of  (less  than 128) general lisp objects you would be
                wise to look into using hunks.



             99..44..  vveeccttoorrss   Vectors were invented to fix  two  short-
                commings with hunks.  They can be longer than 128 ele-
                ments.  They also have a  tag  associated  with  them,
                which is intended to say, for example, "Think of me as
                an _B_l_o_b_i_t."  Thus a vveeccttoorr is an arbitrary sized  hunk
                with a property list.

                     Continuing  the  example, the lisp kernel may not
                know how to print out or evaluate _b_l_o_b_i_t_s, but this is
                information  which  will be common to all _b_l_o_b_i_t_s.  On
                the other hand, for each individual blobits there  are
                particulars  which  are  likely  to  change,  (height,
                weight, eye-color).  This is the part that would  pre-
                viously  have been stored in the individual entries in
                the hunk, and are stored in the data slots of the vec-
                tor.   Once again we summarize the structure of a vec-
                tor in tabular form:


                   +-------------+-----------+-----------+---------+
                   |Subpart name | Get value | Set value |  Type   |
                   |             |           |           |         |
                   +-------------+-----------+-----------+---------+
                   |  datum[_i]   |   vref    |   vset    | lispval |
                   +-------------+-----------+-----------+---------+
                   |  property   |   vprop   | vsetprop  | lispval |
                   |             |           | vputprop  |         |
                   +-------------+-----------+-----------+---------+
                   |    size     |   vsize   |     -     | fixnum  |
                   +-------------+-----------+-----------+---------+
                Vectors are created specifying size and optional  fill
                value using the function (_n_e_w_-_v_e_c_t_o_r  'x_size ['g_fill
                ['g_prop]]), or by  initial  values:  (_v_e_c_t_o_r  ['g_val
                ...]).








                                             Printed: October 16, 1993







          AArrrraayyss aanndd VVeeccttoorrss                                       99--66


             99..55..   aannaattoommyy  ooff  vveeccttoorrss    There  are  some technical
                details about vectors, that the user should know:



                99..55..11..  ssiizzee   The user is not free to alter this.  It
                   is noted when the vector is created, and is used by
                   the garbage collector.  The garbage collector  will
                   coallesce  two free vectors, which are neighbors in
                   the heap.  Internally, this is kept as  the  number
                   of  bytes of data.  Thus, a vector created by (_v_e_c_-
                   _t_o_r 'foo), has a size of 4.



                99..55..22..  pprrooppeerrttyy   Currently, we expect  the  property
                   to  be either a symbol, or a list whose first entry
                   is a symbol.  The symbols ffcclloossuurree  and  ssttrruuccttuurree--
                   vvaalluuee--aarrgguummeenntt  are  magic,  and  their  effect  is
                   described in Chapter 8.  If the property is a (non-
                   null)  symbol,  the  vector  will be printed out as
                   <symbol>[<size>].  Another case is if the  property
                   is  actually  a  (disembodied) property-list, which
                   contains a value  for  the  indicator  pprriinntt.   The
                   value  is  taken  to  be a Lisp function, which the
                   printer will invoke with two arguments:  the vector
                   and the current output port.  Otherwise, the vector
                   will be printed as vector[<size>].  We  have  vague
                   (as  yet  unimplemented) ideas about similar mecha-
                   nisms for evaluation properties.   Users  are  cau-
                   tioned  against  putting anything other than nil in
                   the property entry of a vector.



                99..55..33..  iinntteerrnnaall oorrddeerr   In memory, vectors start with
                   a  longword containing the size (which is immediate
                   data within the vector).  The next cell contains  a
                   pointer  to  the property.  Any remaining cells (if
                   any) are for data.  Vectors are handled differently
                   from  any  other  object  in in that a pointer to a
                   vector is pointer to the first data  cell,  i.e.  a
                   pointer  to  the  _t_h_i_r_d  longword of the structure.
                   This was done for efficiency in compiled  code  and
                   for  uniformity  in  referencing  immediate-vectors
                   (described below).  The user should never return  a
                   pointer  to any other part of a vector, as this may
                   cause the garbage collector to  follow  an  invalid
                   pointer.






                                             Printed: October 16, 1993







          AArrrraayyss aanndd VVeeccttoorrss                                       99--77


             99..66..   iimmmmeeddiiaattee--vveeccttoorrss    Immediate-vectors are similar
                to vectors.  They differ,  in  that  binary  data  are
                stored  in space directly within the vector.  Thus the
                garbage collector will preserve the vector itself  (if
                used),  and will only traverse the property cell.  The
                data may be referenced as  longwords,  shortwords,  or
                even  bytes.   Shorts  and  bytes  are  returned sign-
                extended.  The compiler  open-codes  such  references,
                and  will  avoid  boxing  the  resulting integer data,
                where possible.  Thus, immediate vectors may  be  used
                for  efficiently  processing character data.  They are
                also useful in storing results from functions  written
                in other languages.


                  +-------------+------------+------------+---------+
                  |Subpart name | Get value  | Set value  |  Type   |
                  |             |            |            |         |
                  +-------------+------------+------------+---------+
                  |  datum[_i]   | vrefi-byte | vseti-byte | fixnum  |
                  |             | vrefi-word | vseti-word | fixnum  |
                  |             | vrefi-long | vseti-long | fixnum  |
                  +-------------+------------+------------+---------+
                  |  property   |   vprop    |  vsetprop  | lispval |
                  |             |            |  vputprop  |         |
                  +-------------+------------+------------+---------+
                  |    size     |   vsize    |     -      | fixnum  |
                  |             | vsize-byte |            | fixnum  |
                  |             | vsize-word |            | fixnum  |
                  +-------------+------------+------------+---------+
                To  create  immediate vectors specifying size and fill
                data, you can use the functions _n_e_w_-_v_e_c_t_o_r_i_-_b_y_t_e, _n_e_w_-
                _v_e_c_t_o_r_i_-_w_o_r_d,  or  _n_e_w_-_v_e_c_t_o_r_i_-_l_o_n_g.  You can also use
                the functions _v_e_c_t_o_r_i_-_b_y_t_e, _v_e_c_t_o_r_i_-_w_o_r_d, or  _v_e_c_t_o_r_i_-
                _l_o_n_g.  All of these functions are described in chapter
                2.



















                                             Printed: October 16, 1993



