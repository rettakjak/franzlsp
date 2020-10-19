






                                   CCHHAAPPTTEERR  88


                        FFuunnccttiioonnss,, FFcclloossuurreess,, aanndd MMaaccrrooss






             88..11..  vvaalliidd ffuunnccttiioonn oobbjjeeccttss

                     There are many different objects which can occupy
                the function field of a symbol object.  Table 8.1,  on
                the  following  page,  shows all of the possibilities,
                how to recognize them, and where to look for  documen-
                tation.



             88..22..  ffuunnccttiioonnss

                     The  basic  Lisp function is the lambda function.
                When a lambda function is called, the actual arguments
                are  evaluated from left to right and are lambda-bound
                to the formal parameters of the lambda function.

                     An nlambda function is usually used for functions
                which  are  invoked  by  the  user at top level.  Some
                built-in functions which evaluate their  arguments  in
                special  ways  are  also  nlambdas (e.g _c_o_n_d, _d_o, _o_r).
                When an  nlambda  function  is  called,  the  list  of
                unevaluated  arguments  is  lambda bound to the single
                formal parameter of the nlambda function.

                     Some programmers will  use  an  nlambda  function
                when  they  are  not  sure  how many arguments will be
                passed.  Then, the first thing  the  nlambda  function
                does  is  map  _e_v_a_l over the list of unevaluated argu-
                ments it has been passed.  This is usually  the  wrong
                thing  to  do,  as it will not work compiled if any of
                the arguments are local variables.  The solution is to
                use  a  lexpr.   When  a lexpr function is called, the
                arguments are evaluated and a fixnum  whose  value  is
                the  number of arguments is lambda-bound to the single
                formal parameter of the lexpr function.  The lexpr can
                then access the arguments using the _a_r_g function.

                     When a function is compiled, _s_p_e_c_i_a_l declarations
                may be needed to preserve its behavior.   An  argument
                is  not  lambda-bound to the name of the corresponding
                formal parameter unless that formal parameter has been



          FFuunnccttiioonnss,, FFcclloossuurreess,, aanndd MMaaccrrooss                         88--11







          FFuunnccttiioonnss,, FFcclloossuurreess,, aanndd MMaaccrrooss                         88--22





          +-------------------+------------------------+----------------+
          |  informal name    |      object type       | documentation  |
          +-------------------+------------------------+----------------+
          |   interpreted     |     list with _c_a_r      |      8.2       |
          | lambda function   |      _e_q to lambda      |                |
          +-------------------+------------------------+----------------+
          |   interpreted     |     list with _c_a_r      |      8.2       |
          | nlambda function  |     _e_q to nlambda      |                |
          +-------------------+------------------------+----------------+
          |   interpreted     |     list with _c_a_r      |      8.2       |
          |  lexpr function   |      _e_q to lexpr       |                |
          +-------------------+------------------------+----------------+
          |   interpreted     |     list with _c_a_r      |      8.3       |
          |      macro        |      _e_q to macro       |                |
          +-------------------+------------------------+----------------+
          |     fclosure      |   vector with _v_p_r_o_p    |      8.4       |
          |                   |     _e_q to fclosure     |                |
          +-------------------+------------------------+----------------+
          |     compiled      | binary with discipline |      8.2       |
          | lambda or lexpr   |      _e_q to lambda      |                |
          |     function      |                        |                |
          +-------------------+------------------------+----------------+
          |     compiled      | binary with discipline |      8.2       |
          | nlambda function  |     _e_q to nlambda      |                |
          +-------------------+------------------------+----------------+
          |     compiled      | binary with discipline |      8.3       |
          |      macro        |      _e_q to macro       |                |
          +-------------------+------------------------+----------------+
          |     foreign       | binary with discipline |      8.5       |
          +-----s-u-b-r-o-uo-tf-i-n"-es-u-b-r-o-u+t-i-n-e-"-.-n-r--3-b-o-t--1-2-4-0->-?-1-2-4-0-+----------------+
          |     foreign       | binary with discipline |      8.5       |
          +------f-u-n-c-t-i-oo-nf--"-f-u-n-c+t-i-o-n-"-.-n-r--3-b-o-t--1-3-2-0->-?-1-3-2-0-+----------------+
          |     foreign       | binary with discipline |      8.5       |
          +--i-n-to-ef-g-e"-ri-n-ft-ue-ng-ce-tr-i--of-nu-n-c+t-i-o-n-"-.-n-r--3-b-o-t--1-4-0-0->-?-1-4-0-0-+----------------+
          |     foreign       | binary with discipline |      8.5       |
          +---r-e-a-l-o-ff-u-n"-cr-te-ia-ol-n--f-u-n-c+t-i-o-n-"-.-n-r--3-b-o-t--1-4-8-0->-?-1-4-8-0-+----------------+
          |     foreign       | binary with discipline |      8.5       |
          +-----C--f-u-n-co-tf-i-o"-nc---f-u-n-c+t-i-o-n-"-.-n-r--3-b-o-t--1-5-6-0->-?-1-5-6-0-+----------------+
          |     foreign       | binary with discipline |      8.5       |
          +--d-oo-uf-b-l"-ed-o-fu-ub-nl-ce-t--ic-o--nf-u-n-c+t-i-o-n-"-.-n-r--3-b-o-t--1-6-4-0->-?-1-6-4-0-+----------------+
          |     foreign       | binary with discipline |      8.5       |
          +-s-t-ro-uf-c-t"-uv-re-ec-t-fo-ur-n--cc-t--if-ou-nn-c+t-i-o-n-"-.-n-r--3-b-o-t--1-7-2-0->-?-1-7-2-0-+----------------+
          |      array        |      array object      |       9        |
          +-------------------+------------------------+----------------+
                                    Table 8.1







                                             Printed: October 16, 1993







          FFuunnccttiioonnss,, FFcclloossuurreess,, aanndd MMaaccrrooss                         88--33


                declared _s_p_e_c_i_a_l (see S12.3.2.2).

                     Lambda and lexpr functions both  compile  into  a
                binary object with a discipline of lambda.  However, a
                compiled lexpr still acts like an interpreted lexpr.



             88..33..  mmaaccrrooss

                     An important feature of Lisp is  its  ability  to
                manipulate  programs  as  data.   As a result of this,
                most Lisp implementations  have  very  powerful  macro
                facilities.  The Lisp language's macro facility can be
                used to incorporate popular features of the other lan-
                guages  into Lisp.  For example, there are macro pack-
                ages which allow one to create  records  (ala  Pascal)
                and  refer  to  elements of those records by the field
                names.  The _s_t_r_u_c_t package imported from Maclisp  does
                this.   Another  popular  use  for macros is to create
                more readable control  structures  which  expand  into
                _c_o_n_d,  _o_r  and _a_n_d.  One such example is the If macro.
                It allows you to write

                _(_I_f _(_e_q_u_a_l _n_u_m_b _0_) _t_h_e_n _(_p_r_i_n_t _'_z_e_r_o_) _(_t_e_r_p_r_)
                 _e_l_s_e_i_f _(_e_q_u_a_l _n_u_m_b _1_) _t_h_e_n _(_p_r_i_n_t _'_o_n_e_) _(_t_e_r_p_r_)
                 _e_l_s_e _(_p_r_i_n_t _'_|_I _g_i_v_e _u_p_|_)_)

                which expands to

                _(_c_o_n_d
                    _(_(_e_q_u_a_l _n_u_m_b _0_) _(_p_r_i_n_t _'_z_e_r_o_) _(_t_e_r_p_r_)_)
                    _(_(_e_q_u_a_l _n_u_m_b _1_) _(_p_r_i_n_t _'_o_n_e_) _(_t_e_r_p_r_)_)
                    _(_t _(_p_r_i_n_t _'_|_I _g_i_v_e _u_p_|_)_)_)




                88..33..11..  mmaaccrroo ffoorrmmss

                        A macro is a function  which  accepts  a  Lisp
                   expression   as  input  and  returns  another  Lisp
                   expression.  The action the macro takes  is  called
                   macro expansion.  Here is a simple example:

                   -> _(_d_e_f _f_i_r_s_t _(_m_a_c_r_o _(_x_) _(_c_o_n_s _'_c_a_r _(_c_d_r _x_)_)_)_)
                   first
                   -> _(_f_i_r_s_t _'_(_a _b _c_)_)
                   a
          ____________________
             tthhee ffiirrsstt cchhaarraacctteerr ooff tthhee ssttrriinngg iiss ssiiggnniiffiiccaanntt ((ii..ee ""ss""
          iiss ookk ffoorr ""ssuubbrroouuttiinnee""))



                                             Printed: October 16, 1993







          FFuunnccttiioonnss,, FFcclloossuurreess,, aanndd MMaaccrrooss                         88--44


                   -> _(_a_p_p_l_y _'_f_i_r_s_t _'_(_f_i_r_s_t _'_(_a _b _c_)_)_)
                   (car '(a b c))

                   The  first input line defines a macro called _f_i_r_s_t.
                   Notice that the macro has one formal parameter,  _x.
                   On the second input line, we ask the interpreter to
                   evaluate _(_f_i_r_s_t _'_(_a _b _c_)_).  _E_v_a_l  sees  that  _f_i_r_s_t
                   has  a  function  definition  of  type macro, so it
                   evaluates _f_i_r_s_t's definition, passing to _f_i_r_s_t,  as
                   an  argument,  the  form  _e_v_a_l itself was trying to
                   evaluate: _(_f_i_r_s_t _'_(_a _b _c_)_).  The _f_i_r_s_t macro  chops
                   off  the  car of the argument with _c_d_r, cons' a _c_a_r
                   at  the  beginning  of   the   list   and   returns
                   _(_c_a_r _'_(_a _b _c_)_),  which _e_v_a_l evaluates.  The value _a
                   is returned as the value of _(_f_i_r_s_t _'_(_a _b _c_)_).  Thus
                   whenever  _e_v_a_l  tries  to evaluate a list whose car
                   has a macro definition it ends up doing (at  least)
                   two operations, the first of which is a call to the
                   macro to let it macro  expand  the  form,  and  the
                   other is the evaluation of the result of the macro.
                   The result of the macro may be yet another call  to
                   a  macro,  so _e_v_a_l may have to do even more evalua-
                   tions until it can finally determine the  value  of
                   an  expression.   One  way  to see how a macro will
                   expand is to use _a_p_p_l_y as shown on the third  input
                   line above.



                88..33..22..  ddeeffmmaaccrroo

                        The  macro  _d_e_f_m_a_c_r_o makes it easier to define
                   macros because it allows you to name the  arguments
                   to  the  macro  call.  For example, suppose we find
                   ourselves     often     writing      code      like
                   _(_s_e_t_q _s_t_a_c_k _(_c_o_n_s _n_e_w_e_l_t _s_t_a_c_k_).  We could define a
                   macro named _p_u_s_h to do this for  us.   One  way  to
                   define it is:

                   -> _(_d_e_f _p_u_s_h
                         _(_m_a_c_r_o _(_x_) _(_l_i_s_t _'_s_e_t_q _(_c_a_d_d_r _x_) _(_l_i_s_t _'_c_o_n_s _(_c_a_d_r _x_) _(_c_a_d_d_r _x_)_)_)_)_)
                   push

                   then  _(_p_u_s_h _n_e_w_e_l_t _s_t_a_c_k_)  will  expand to the form
                   mentioned above.  The same macro written using def-
                   macro would be:

                   -> _(_d_e_f_m_a_c_r_o _p_u_s_h _(_v_a_l_u_e _s_t_a_c_k_)
                       _(_l_i_s_t _'_s_e_t_q _,_s_t_a_c_k _(_l_i_s_t _'_c_o_n_s _,_v_a_l_u_e _,_s_t_a_c_k_)_)_)
                   push

                   Defmacro  allows  you  to name the arguments of the
                   macro call, and makes  the  macro  definition  look


                                             Printed: October 16, 1993







          FFuunnccttiioonnss,, FFcclloossuurreess,, aanndd MMaaccrrooss                         88--55


                   more like a function definition.



                88..33..33..  tthhee bbaacckkqquuoottee cchhaarraacctteerr mmaaccrroo

                        The  default  syntax  for  FRANZ LISP has four
                   characters with associated character  macros.   One
                   is  semicolon  for  comments.   Two  others are the
                   backquote and comma which are used by the backquote
                   character  macro.   The  fourth  is  the sharp sign
                   macro described in the next section.

                        The backquote macro is used  to  create  lists
                   where  many  of  the  elements  are fixed (quoted).
                   This makes it very useful for creating macro  defi-
                   nitions.   In  the  simplest case, a backquote acts
                   just like a single quote:

                   ->_`_(_a _b _c _d _e_)
                   (a b c d e)

                   If a comma precedes an element of a backquoted list
                   then that element is evaluated and its value is put
                   in the list.

                   ->_(_s_e_t_q _d _'_(_x _y _z_)_)
                   (x y z)
                   ->_`_(_a _b _c _,_d _e_)
                   (a b c (x y z) e)

                   If a comma followed by an at sign precedes an  ele-
                   ment  in  a  backquoted  list, then that element is
                   evaluated and spliced into the list with _a_p_p_e_n_d.

                   ->_`_(_a _b _c _,_@_d _e_)
                   (a b c x y z e)

                   Once a list begins with a backquote, the commas may
                   appear anywhere in the list as this example shows:

                   ->_`_(_a _b _(_c _d _,_(_c_d_r _d_)_) _(_e _f _(_g _h _,_@_(_c_d_d_r _d_) _,_@_d_)_)_)
                   (a b (c d (y z)) (e f (g h z x y z)))

                   It  is  also  possible and sometimes even useful to
                   use the backquote macro within itself.  As a  final
                   demonstration  of  the  backquote  macro,  we shall
                   define the first and  push  macros  using  all  the
                   power  at  our disposal: defmacro and the backquote
                   macro.

                   ->_(_d_e_f_m_a_c_r_o _f_i_r_s_t _(_l_i_s_t_) _`_(_c_a_r _,_l_i_s_t_)_)
                   first


                                             Printed: October 16, 1993







          FFuunnccttiioonnss,, FFcclloossuurreess,, aanndd MMaaccrrooss                         88--66


                   ->_(_d_e_f_m_a_c_r_o _p_u_s_h _(_v_a_l_u_e _s_t_a_c_k_) _`_(_s_e_t_q _,_s_t_a_c_k _(_c_o_n_s _,_v_a_l_u_e _,_s_t_a_c_k_)_)_)
                   stack



                88..33..44..  sshhaarrpp ssiiggnn cchhaarraacctteerr mmaaccrroo

                        The sharp sign macro can perform a  number  of
                   different  functions   at read time.  The character
                   directly following the sharp sign determines  which
                   function  will  be  done,  and  following  Lisp  s-
                   expressions may serve as arguments.



                   88..33..44..11..  ccoonnddiittiioonnaall iinncclluussiioonn

                      If you plan to run one source file in more  than
                      one environment then you may want to some pieces
                      of code to be included  or not included  depend-
                      ing  on  the  environment.   The C language uses
                      "#ifdef" and "#ifndef"  for  this  purpose,  and
                      Lisp  uses  "#+" and "#-".  The environment that
                      the sharp sign macro checks is the  _(_s_t_a_t_u_s _f_e_a_-
                      _t_u_r_e_s_)  list  which is initialized when the Lisp
                      system is built  and which may  be   altered  by
                      _(_s_s_t_a_t_u_s _f_e_a_t_u_r_e _f_o_o_)                        and
                      _(_s_s_t_a_t_u_s _n_o_f_e_a_t_u_r_e _b_a_r_) The form  of conditional
                      inclusion is
                                   _#_+_w_h_e_n _w_h_a_t
                      where  _w_h_e_n  is either a symbol or an expression
                      involving symbols and the functions _a_n_d, _o_r, and
                      _n_o_t.  The meaning is that _w_h_a_t will only be read
                      in if _w_h_e_n is true.  A symbol in  _w_h_e_n  is  true
                      only  if  it  appears  in  the _(_s_t_a_t_u_s _f_e_a_t_u_r_e_s_)
                      list.



















                                             Printed: October 16, 1993







          FFuunnccttiioonnss,, FFcclloossuurreess,, aanndd MMaaccrrooss                         88--77



              ____________________________________________________

              ; suppose we want to write a program which references a file
              ; and which can run at ucb, ucsd and cmu where the file naming conventions
              ; are different.
              ;
              -> _(_d_e_f_u_n _h_o_w_o_l_d _(_n_a_m_e_)
                       _(_t_e_r_p_r_)
                          _(_l_o_a_d _#_+_(_o_r _u_c_b _u_c_s_d_) _"_/_u_s_r_/_l_i_b_/_l_i_s_p_/_a_g_e_s_._l_"
                                           _#_+_c_m_u _"_/_u_s_r_/_l_i_s_p_/_d_o_c_/_a_g_e_s_._l_"_)
                             _(_p_a_t_o_m _n_a_m_e_)
                             _(_p_a_t_o_m _" _i_s _"_)
                                _(_p_r_i_n_t _(_c_d_r _(_a_s_s_o_c _n_a_m_e _a_g_e_f_i_l_e_)_)_)
                                   _(_p_a_t_o_m _"_y_e_a_r_s _o_l_d_"_)
                                      _(_t_e_r_p_r_)_)
              ____________________________________________________



          The form
                                   _#_-_w_h_e_n _w_h_a_t
          is equivalent to
                                _#_+_(_n_o_t _w_h_e_n_) _w_h_a_t



                   88..33..44..22..  ffiixxnnuumm cchhaarraacctteerr eeqquuiivvaalleennttss

                      When working with fixnum equivalents of  charac-
                      ters,  it  is  often hard to remember the number
                      corresponding to a character.  The form
                                       _#_/_c
                      is equivalent to the  fixnum  representation  of
                      character c.


              ____________________________________________________

              ; a function which returns t if the user types y else it returns nil.
              ;
              -> _(_d_e_f_u_n _y_e_s_o_r_n_o _n_i_l
                       _(_p_r_o_g_n _(_a_n_s_)
                                        _(_s_e_t_q _a_n_s _(_t_y_i_)_)
                                                  _(_c_o_n_d _(_(_e_q_u_a_l _a_n_s _#_/_y_) _t_)
                                                                        _(_t _n_i_l_)_)_)_)
              ____________________________________________________








                                             Printed: October 16, 1993







          FFuunnccttiioonnss,, FFcclloossuurreess,, aanndd MMaaccrrooss                         88--88


                   88..33..44..33..  rreeaadd ttiimmee eevvaalluuaattiioonn

                      Occasionally you want to express a constant as a
                      Lisp expression, yet you don't want to  pay  the
                      penalty  of evaluating this expression each time
                      it is referenced.  The form
                                  _#_._e_x_p_r_e_s_s_i_o_n
                      evaluates  the  expression  at  read  time   and
                      returns its value.


              ____________________________________________________

              ; a function to test if any of bits 1 3 or 12 are set in a fixnum.
              ;
              -> _(_d_e_f_u_n _t_e_s_t_i_t _(_n_u_m_)
                       _(_c_o_n_d _(_(_z_e_r_o_p _(_b_o_o_l_e _1 _n_u_m _#_._(_+ _(_l_s_h _1 _1_) _(_l_s_h _1 _3_) _(_l_s_h _1 _1_2_)_)_)_)
                                        _n_i_l_)
                                      _(_t _t_)_)_)
              ____________________________________________________






             88..44..  ffcclloossuurreess

                     Fclosures  are  a type of functional object.  The
                purpose is to remember the values  of  some  variables
                between  invocations  of  the functional object and to
                protect this data from being inadvertently overwritten
                by  other  Lisp  functions.   Fortran programs usually
                exhibit this behavior for their variables.  (In  fact,
                some  versions  of Fortran would require the variables
                to be in COMMON).  Thus it is easy to write  a  linear
                congruent  random  number generator in Fortran, merely
                by keeping the seed as a variable in the function.  It
                is much more risky to do so in Lisp, since any special
                variable you picked, might be used by some other func-
                tion.  Fclosures are an attempt to provide most of the
                same functionality as closures in Lisp  Machine  Lisp,
                to users of FRANZ LISP.  Fclosures are related to clo-
                sures in this way:
                (fclosure '(a b) 'foo) <==>
                     (let ((a a) (b b)) (closure '(a b) 'foo))



                88..44..11..  aann eexxaammppllee

          ____________________________________________________________



                                             Printed: October 16, 1993







          FFuunnccttiioonnss,, FFcclloossuurreess,, aanndd MMaaccrrooss                         88--99


          % lliisspp
          Franz Lisp, Opus 38.60
          ->((ddeeffuunn ccooddee ((mmee ccoouunntt))
            ((pprriinntt ((lliisstt ''iinn xx))))
            ((sseettqq xx ((++ 11 xx))))
            ((ccoonndd ((((ggrreeaatteerrpp ccoouunntt 11)) ((ffuunnccaallll mmee mmee ((ssuubb11 ccoouunntt))))))))
            ((pprriinntt ((lliisstt ''oouutt xx))))))
          code
          ->((ddeeffuunn tteesstteerr ((oobbjjeecctt ccoouunntt))
            ((ffuunnccaallll oobbjjeecctt oobbjjeecctt ccoouunntt)) ((tteerrpprrii))))
          tester
          ->((sseettqq xx 00))
          0
          ->((sseettqq zz ((ffcclloossuurree ''((xx)) ''ccooddee))))
          fclosure[8]
          -> ((tteesstteerr zz 33))
          (in 0)(in 1)(in 2)(out 3)(out 3)(out 3)
          nil
          ->xx
          0
          ____________________________________________________________





                        The function _f_c_l_o_s_u_r_e  creates  a  new  object
                   that  we  will  call  an  fclosure, (although it is
                   actually a vector).  The fclosure contains a  func-
                   tional  object, and a set of symbols and values for
                   the symbols.  In the above  example,  the  fclosure
                   functional object is the function code.  The set of
                   symbols and values just contains the symbol `x' and
                   zero,  the  value of `x' when the fclosure was cre-
                   ated.

                   When an fclosure is funcall'ed:

                   1)   The Lisp system lambda binds  the  symbols  in
                        the  fclosure to their values in the fclosure.

                   2)   It continues the  funcall  on  the  functional
                        object of the fclosure.

                   3)   Finally, it un-lambda binds the symbols in the
                        fclosure and at the same time stores the  cur-
                        rent values of the symbols in the fclosure.


                        Notice  that  the fclosure is saving the value
                   of the symbol `x'.  Each time a  fclosure  is  cre-
                   ated,  new space is allocated for saving the values
                   of the symbols. Thus if we execute fclosure  again,


                                             Printed: October 16, 1993







          FFuunnccttiioonnss,, FFcclloossuurreess,, aanndd MMaaccrrooss                        88--1100


                   over the same function, we can have two independent
                   counters:

          ____________________________________________________________

          -> ((sseettqq zzzz ((ffcclloossuurree ''((xx)) ''ccooddee))))
          fclosure[1]
          -> ((tteesstteerr zzzz 22))
          (in 0)(in 1)(out 2)(out 2)
          -> ((tteesstteerr zzzz 22))
          (in 2)(in 3)(out 4)(out 4)
          -> ((tteesstteerr zz 33))
          (in 3)(in 4)(in 5)(out 6)(out 6)(out 6)
          ____________________________________________________________







                88..44..22..  uusseeffuull ffuunnccttiioonnss

                        Here are some quick some  summaries  of  func-
                   tions  dealing  with  closures.  They are more for-
                   mally defined in S2.8.4.  To recap,  fclosures  are
                   made by _(_f_c_l_o_s_u_r_e _'_l___v_a_r_s _'_g___f_u_n_c_o_b_j_).  l_vars is a
                   list of symbols (not containing nil), g_funcobj  is
                   any  object  that can be funcalled.  (Objects which
                   can be funcalled, include compiled Lisp  functions,
                   lambda  expressions,  symbols,  foreign  functions,
                   etc.)  In general, if you want a compiled  function
                   to  be closed over a variable, you must declare the
                   variable  to  be  special  within   the   function.
                   Another example would be:

                               (fclosure '(a b) #'(lambda (x) (plus x a)))

                   Here,  the  #'  construction will make the compiler
                   compile the lambda expression.

                        There are times when you want to  share  vari-
                   ables  between  fclosures.  This can be done if the
                   fclosures are created at the same time using  _f_c_l_o_-
                   _s_u_r_e_-_l_i_s_t.   The function _f_c_l_o_s_u_r_e_-_a_l_i_s_t returns an
                   assoc list giving the symbols  and  values  in  the
                   fclosure.   The  predicate  _f_c_l_o_s_u_r_e_p returns t iff
                   its  argument  is  a  fclosure.   Other   functions
                   imported  from  Lisp  Machine  Lisp are _s_y_m_e_v_a_l_-_i_n_-
                   _f_c_l_o_s_u_r_e_,   _l_e_t_-_f_c_l_o_s_e_d_,    and    _s_e_t_-_i_n_-_f_c_l_o_s_u_r_e_.
                   Lastly,  the function _f_c_l_o_s_u_r_e_-_f_u_n_c_t_i_o_n returns the
                   function argument.



                                             Printed: October 16, 1993







          FFuunnccttiioonnss,, FFcclloossuurreess,, aanndd MMaaccrrooss                        88--1111


                88..44..33..  iinntteerrnnaall ssttrruuccttuurree

                        Currently, closures are  implemented  as  vec-
                   tors, with property being the symbol fclosure.  The
                   functional object is the first entry.  The  remain-
                   ing  entries are structures which point to the sym-
                   bols and values for the closure, (with a  reference
                   count  to  determine  if  a  recursive  closure  is
                   active).



             88..55..  ffoorreeiiggnn ssuubbrroouuttiinneess aanndd ffuunnccttiioonnss

                     FRANZ LISP has the ability  to  dynamically  load
                object  files  produced by other compilers and to call
                functions defined in those files.  These functions are
                called _f_o_r_e_i_g_n functions.*  There are seven  types  of
                foreign functions.  They are characterized by the type
                of result they  return,  and  by  differences  in  the
                interpretation of their arguments.  They come from two
                families: a group  suited  for  languages  which  pass
                arguments  by  reference  (e.g.  Fortran), and a group
                suited for languages which  pass  arguments  by  value
                (e.g. C).


                There are four types in the first group:

                ssuubbrroouuttiinnee
                     This  does  not return anything.  The Lisp system
                     always returns t after calling a subroutine.

                ffuunnccttiioonn
                     This returns whatever the function returns.  This
                     must  be  a valid Lisp object or it may cause the
                     Lisp system to fail.

                iinntteeggeerr--ffuunnccttiioonn
                     This returns an integer  which  the  Lisp  system
                     makes into a fixnum and returns.

                rreeaall--ffuunnccttiioonn
                     This returns a double precision real number which
                     the Lisp system makes into a flonum and  returns.

          ____________________
             *This  topic  is  also discussed in Report PAM-124 of the
          Center for  Pure  and  Applied  Mathematics,  UCB,  entitled
          ``Parlez-Vous  Franz?  An Informal Introduction to Interfac-
          ing Foreign Functions to Franz LISP'', by James R. Larus




                                             Printed: October 16, 1993







          FFuunnccttiioonnss,, FFcclloossuurreess,, aanndd MMaaccrrooss                        88--1122


                There are three types in the second group:

                cc--ffuunnccttiioonn
                     This  is like an integer function, except for its
                     different interpretation of arguments.

                ddoouubbllee--cc--ffuunnccttiioonn
                     This is like a real-function.

                vveeccttoorr--cc--ffuunnccttiioonn
                     This is for C functions which return a structure.
                     The  first  argument  to such functions must be a
                     vector (of type vectori), into which  the  result
                     is  stored.  The second Lisp argument becomes the
                     first argument to the C function, and so on

                A foreign function is accessed through a binary object
                just like a compiled Lisp function.  The difference is
                that the discipline field of a  binary  object  for  a
                foreign  function is a string whose first character is
                given in the following table:


                             +-------+-------------------+
                             |letter |       type        |
                             +-------+-------------------+
                             |  s    |    subroutine     |
                             +-------+-------------------+
                             |  f    |     function      |
                             +-------+-------------------+
                             |  i    | integer-function  |
                             +-------+-------------------+
                             |  r    |  real-function.   |
                             +-------+-------------------+
                             |  c    |    c-function     |
                             +-------+-------------------+
                             |  v    | vector-c-function |
                             +-------+-------------------+
                             |  d    | double-c-function |
                             +-------+-------------------+
                             +-------+-------------------+
                Two functions  are  provided  for  setting-up  foreign
                functions.   _C_f_a_s_l  loads an object file into the Lisp
                system and sets up one foreign function binary object.
                If there are more than one function in an object file,
                _g_e_t_a_d_d_r_e_s_s can be used to set  up  additional  foreign
                function objects.

                     Foreign   functions  are  called  just like other
                functions, e.g _(_f_u_n_n_a_m_e _a_r_g_1 _a_r_g_2_).  When  a  function
                in  the  Fortran  group  is  called, the arguments are
                evaluated and then examined.  List,  hunk  and  symbol



                                             Printed: October 16, 1993







          FFuunnccttiioonnss,, FFcclloossuurreess,, aanndd MMaaccrrooss                        88--1133


                arguments  are  passed  unchanged to the foreign func-
                tion.  Fixnum and flonum arguments are copied  into  a
                temporary  location  and  a  pointer  to  the value is
                passed (this is because Fortran uses call by reference
                and it is dangerous to modify the contents of a fixnum
                or flonum which something else might  point  to).   If
                the argument is an array object, the data field of the
                array object is passed to the foreign  function  (This
                is  the  easiest  way to send large amounts of data to
                and receive large amounts of data from a foreign func-
                tion).   If  a binary object is an argument, the entry
                field of that object is passed to the foreign function
                (the entry field is the address of a function, so this
                amounts to passing a function as an argument).

                     When a function in the C group is called,  fixnum
                and flownum arguments are passed by value.  For almost
                all other arguments, the address is merely provided to
                the  C  routine.   The  only exception arises when you
                want to invoke a C routine which  expects  a  ``struc-
                ture''  argument.  Recall that a (rarely used) feature
                of the C language is the ability to pass structures by
                value.   This  copies  the  structure  onto the stack.
                Since the Franz's nearest equivalent to a C  structure
                is  a  vector, we provide an escape clause to copy the
                contents of an immediate-type vector by value.  If the
                property  field  of  a vectori argument, is the symbol
                "value-structure-argument", then the  binary  data  of
                this immediate-type vector is copied into the argument
                list of the C routine.

                     The method a foreign function uses to access  the
                arguments  provided  by  Lisp is dependent on the lan-
                guage of the foreign function.  The following  scripts
                demonstrate  how how Lisp can interact with three lan-
                guages: C, Pascal and  Fortran.   C  and  Pascal  have
                pointer  types  and  the first script shows how to use
                pointers to extract  information  from  Lisp  objects.
                There  are  two  functions  defined for each language.
                The first (cfoo in C, pfoo in Pascal)  is  given  four
                arguments,  a  fixnum, a flonum-block array, a hunk of
                at least two fixnums  and  a  list  of  at  least  two
                fixnums.   To demonstrate that the values were passed,
                each ?foo function prints its arguments (or  parts  of
                them).   The  ?foo  function  then modifies the second
                element of the flonum-block array and returns a  3  to
                Lisp.   The second function (cmemq in C, pmemq in Pas-
                cal) acts just like the Lisp _m_e_m_q function (except  it
                won't work for fixnums whereas the lisp _m_e_m_q will work
                for small fixnums).  In the script, typed input is  in
                bboolldd,  computer output is in roman and comments are in
                _i_t_a_l_i_c_.



                                             Printed: October 16, 1993







          FFuunnccttiioonnss,, FFcclloossuurreess,, aanndd MMaaccrrooss                        88--1144


          ____________________________________________________________

          _T_h_e_s_e _a_r_e _t_h_e _C _c_o_d_e_d _f_u_n_c_t_i_o_n_s
          % ccaatt cchh88aauuxxcc..cc
          /* demonstration of c coded foreign integer-function */

          /* the following will be used to extract fixnums out of a list of fixnums */
          struct listoffixnumscell
          {    struct listoffixnumscell *cdr;
               int *fixnum;
          };

          struct listcell
          {       struct listcell *cdr;
                  int car;
          };

          cfoo(a,b,c,d)
          int *a;
          double b[];
          int *c[];
          struct listoffixnumscell *d;
          {
              printf("a: %d, b[0]: %f, b[1]: %f0, *a, b[0], b[1]);
              printf(" c (first): %d   c (second): %d0,
                         *c[0],*c[1]);
              printf(" ( %d %d ... )", *(d->fixnum), *(d->cdr->fixnum));
              b[1] = 3.1415926;
              return(3);
          }

          struct listcell *
          cmemq(element,list)
          int element;
          struct listcell *list;
          {
             for( ; list && element != list->car ;  list = list->cdr);
             return(list);
          }


          _T_h_e_s_e _a_r_e _t_h_e _P_a_s_c_a_l _c_o_d_e_d _f_u_n_c_t_i_o_n_s
          % ccaatt cchh88aauuxxpp..pp
          type    pinteger = ^integer;
                  realarray = array[0..10] of real;
                  pintarray = array[0..10] of pinteger;
                  listoffixnumscell = record
                                          cdr  : ^listoffixnumscell;
                                          fixnum : pinteger;
                                      end;
                  plistcell = ^listcell;
                  listcell = record
                                cdr : plistcell;


                                             Printed: October 16, 1993







          FFuunnccttiioonnss,, FFcclloossuurreess,, aanndd MMaaccrrooss                        88--1155


                                car : integer;
                             end;

          function pfoo ( var a : integer ;
                          var b : realarray;
                          var c : pintarray;
                          var d : listoffixnumscell) : integer;
          begin
             writeln(' a:',a, ' b[0]:', b[0], ' b[1]:', b[1]);
             writeln(' c (first):', c[0]^,' c (second):', c[1]^);
             writeln(' ( ', d.fixnum^, d.cdr^.fixnum^, ' ...) ');
             b[1] := 3.1415926;
             pfoo := 3
          end ;

          { the function pmemq looks for the Lisp pointer given as the first argument
            in the list pointed to by the second argument.
            Note that we declare " a : integer " instead of " var a : integer " since
            we are interested in the pointer value instead of what it points to (which
            could be any Lisp object)
          }
          function pmemq( a : integer; list : plistcell) : plistcell;
          begin
           while (list <> nil) and (list^.car <> a) do list := list^.cdr;
           pmemq := list;
          end ;


          _T_h_e _f_i_l_e_s _a_r_e _c_o_m_p_i_l_e_d
          % cccc --cc cchh88aauuxxcc..cc
          1.0u 1.2s 0:15 14% 30+39k 33+20io 147pf+0w
          % ppcc --cc cchh88aauuxxpp..pp
          3.0u 1.7s 0:37 12% 27+32k 53+32io 143pf+0w


          % lliisspp
          Franz Lisp, Opus 38.60
          _F_i_r_s_t _t_h_e _f_i_l_e_s _a_r_e _l_o_a_d_e_d _a_n_d _w_e _s_e_t _u_p _o_n_e  _f_o_r_e_i_g_n  _f_u_n_c_-
          _t_i_o_n  _b_i_n_a_r_y_.  _W_e _h_a_v_e _t_w_o _f_u_n_c_t_i_o_n_s _i_n _e_a_c_h _f_i_l_e _s_o _w_e _m_u_s_t
          _c_h_o_o_s_e _o_n_e _t_o _t_e_l_l _c_f_a_s_l _a_b_o_u_t_.  _T_h_e _c_h_o_i_c_e _i_s _a_r_b_i_t_r_a_r_y_.
          -> ((ccffaassll ''cchh88aauuxxcc..oo ''__ccffoooo ''ccffoooo ""iinntteeggeerr--ffuunnccttiioonn""))
          /usr/lib/lisp/nld -N -A /usr/local/lisp -T 63000 ch8auxc.o -e _cfoo -o /tmp/Li7055.0  -lc
          #63000-"integer-function"
          -> ((ccffaassll ''cchh88aauuxxpp..oo ''__ppffoooo ''ppffoooo ""iinntteeggeerr--ffuunnccttiioonn"" ""--llppcc""))
          /usr/lib/lisp/nld -N -A /tmp/Li7055.0 -T 63200 ch8auxp.o -e _pfoo -o /tmp/Li7055.1 -lpc -lc
          #63200-"integer-function"
          _H_e_r_e _w_e _s_e_t _u_p _t_h_e _o_t_h_e_r _f_o_r_e_i_g_n _f_u_n_c_t_i_o_n _b_i_n_a_r_y _o_b_j_e_c_t_s
          -> ((ggeettaaddddrreessss ''__ccmmeemmqq ''ccmmeemmqq ""ffuunnccttiioonn"" ''__ppmmeemmqq ''ppmmeemmqq ""ffuunnccttiioonn""))
          #6306c-"function"
          _W_e _w_a_n_t _t_o _c_r_e_a_t_e _a_n_d _i_n_i_t_i_a_l_i_z_e _a_n _a_r_r_a_y  _t_o  _p_a_s_s  _t_o  _t_h_e
          _c_f_o_o  _f_u_n_c_t_i_o_n_.  _I_n _t_h_i_s _c_a_s_e _w_e _c_r_e_a_t_e _a_n _u_n_n_a_m_e_d _a_r_r_a_y _a_n_d
          _s_t_o_r_e _i_t _i_n _t_h_e _v_a_l_u_e _c_e_l_l _o_f _t_e_s_t_a_r_r_.  _W_h_e_n  _w_e  _c_r_e_a_t_e  _a_n
          _a_r_r_a_y  _t_o  _p_a_s_s  _t_o  _t_h_e  _P_a_s_c_a_l _p_r_o_g_r_a_m _w_e _w_i_l_l _u_s_e _a _n_a_m_e_d


                                             Printed: October 16, 1993







          FFuunnccttiioonnss,, FFcclloossuurreess,, aanndd MMaaccrrooss                        88--1166


          _a_r_r_a_y _j_u_s_t _t_o _d_e_m_o_n_s_t_r_a_t_e _t_h_e _d_i_f_f_e_r_e_n_t _w_a_y _t_h_a_t  _n_a_m_e_d  _a_n_d
          _u_n_n_a_m_e_d _a_r_r_a_y_s _a_r_e _c_r_e_a_t_e_d _a_n_d _a_c_c_e_s_s_e_d_.
          -> ((sseettqq tteessttaarrrr ((aarrrraayy nniill fflloonnuumm--bblloocckk 22))))
          array[2]
          -> ((ssttoorree ((ffuunnccaallll tteessttaarrrr 00)) 11..223344))
          1.234
          -> ((ssttoorree ((ffuunnccaallll tteessttaarrrr 11)) 55..667788))
          5.678
          -> ((ccffoooo 338855 tteessttaarrrr ((hhuunnkk 1100 1111 1133 1144)) ''((1155 1166 1177))))
          a: 385, b[0]: 1.234000, b[1]: 5.678000
           c (first): 10   c (second): 11
           ( 15 16 ... )
           3
          _N_o_t_e _t_h_a_t _c_f_o_o _h_a_s _r_e_t_u_r_n_e_d _3 _a_s _i_t _s_h_o_u_l_d_.  _I_t _a_l_s_o _h_a_d _t_h_e
          _s_i_d_e _e_f_f_e_c_t _o_f _c_h_a_n_g_i_n_g _t_h_e _s_e_c_o_n_d _v_a_l_u_e  _o_f  _t_h_e  _a_r_r_a_y  _t_o
          _3_._1_4_1_5_9_2_6  _w_h_i_c_h _c_h_e_c_k _n_e_x_t_.
          -> ((ffuunnccaallll tteessttaarrrr 11))
          3.1415926


          _I_n _p_r_e_p_a_r_a_t_i_o_n _f_o_r _c_a_l_l_i_n_g _p_f_o_o _w_e _c_r_e_a_t_e _a_n _a_r_r_a_y_.
          -> ((aarrrraayy tteesstt fflloonnuumm--bblloocckk 22))
          array[2]
          -> ((ssttoorree ((tteesstt 00)) 11..223344))
          1.234
          -> ((ssttoorree ((tteesstt 11)) 55..667788))
          5.678
          -> ((ppffoooo 338855 ((ggeettdd ''tteesstt)) ((hhuunnkk 1100 1111 1133 1144)) ''((1155 1166 1177))))
           a:       385 b[0]:  1.23400000000000E+00 b[1]:  5.67800000000000E+00
           c (first):        10 c (second):        11
           (         15        16 ...)
          3
          -> ((tteesstt 11))
          3.1415926

           _N_o_w _t_o _t_e_s_t _o_u_t _t_h_e _m_e_m_q_'_s
          _-_> ((ccmmeemmqq ''aa ''((bb cc aa dd ee ff))))
          _(_a _d _e _f_)
          _-_> ((ppmmeemmqq ''ee ''((aa dd ff gg aa xx))))
          _n_i_l
          ________________________________________________________________________________________________________________________





                     The Fortran example will be much shorter since in
                Fortran you can't follow pointers as you can in  other
                languages.   The  Fortran function ffoo is given three
                arguments:  a  fixnum,  a  fixnum-block  array  and  a
                flonum.   These  arguments  are  printed out to verify
                that they made it and then  the  first  value  of  the
                array  is  modified.   The  function  returns a double


                                             Printed: October 16, 1993







          FFuunnccttiioonnss,, FFcclloossuurreess,, aanndd MMaaccrrooss                        88--1177


                precision value which is converted to a flonum by lisp
                and  printed.  Note that the entry point corresponding
                to the Fortran function ffoo is _ffoo_ as  opposed  to
                the C and Pascal convention of preceding the name with
                an underscore.

          ____________________________________________________________


          % ccaatt cchh88aauuxxff..ff
                  double precision function ffoo(a,b,c)
                  integer a,b(10)
                  double precision c
                  print 2,a,b(1),b(2),c
          2       format(' a=',i4,', b(1)=',i5,', b(2)=',i5,' c=',f6.4)
                  b(1) = 22
                  ffoo = 1.23456
                  return
                  end
          % ff7777 --cc cchh88aauuxxff..ff
          ch8auxf.f:
             ffoo:
          0.9u 1.8s 0:12 22% 20+22k 54+48io 158pf+0w
          % lliisspp
          Franz Lisp, Opus 38.60
          -> ((ccffaassll ''cchh88aauuxxff..oo ''__ffffoooo__ ''ffffoooo ""rreeaall--ffuunnccttiioonn"" ""--llFF7777 --llII7777""))
          /usr/lib/lisp/nld -N -A /usr/local/lisp -T 63000 ch8auxf.o -e _ffoo_
          -o /tmp/Li11066.0 -lF77 -lI77 -lc
          #6307c-"real-function"

          -> ((aarrrraayy tteesstt ffiixxnnuumm--bblloocckk 22))
          array[2]
          -> ((ssttoorree ((tteesstt 00)) 1100))
          10
          -> ((ssttoorree ((tteesstt 11)) 1111))
          11
          -> ((ffffoooo 338855 ((ggeettdd ''tteesstt)) 55..667788))
           a= 385, b(1)=   10, b(2)=   11 c=5.6780
          1.234559893608093
          -> ((tteesstt 00))
          22

          ____________________________________________________________












                                             Printed: October 16, 1993



