








































































                                   CCHHAAPPTTEERR  44


                               SSppeecciiaall FFuunnccttiioonnss




          ((aanndd [g_arg1 ...]))

               RETURNS: the  value  of  the last argument if all argu-
                        ments evaluate to a non-nil  value,  otherwise
                        _a_n_d returns nil.  It returns t if there are no
                        arguments.

               NOTE: the arguments are evaluated  left  to  right  and
                     evaluation  will cease with the first nil encoun-
                     tered.

          ((aappppllyy 'u_func 'l_args))

               RETURNS: the result of applying function u_func to  the
                        arguments in the list l_args.

               NOTE: If  u_func  is a lambda, then the _(_l_e_n_g_t_h _l___a_r_g_s_)
                     should equal the number of formal parameters  for
                     the  u_func.   If  u_func  is a nlambda or macro,
                     then l_args is bound to the single formal parame-
                     ter.


























          SSppeecciiaall FFuunnccttiioonnss                                        44--22







          SSppeecciiaall FFuunnccttiioonnss                                        44--33



              ____________________________________________________

              ; _a_d_d_1 is a lambda of 1 argument
              -> _(_a_p_p_l_y _'_a_d_d_1 _'_(_3_)_)
              4

              ; we will define _p_l_u_s_1 as a macro which will be equivalent to _a_d_d_1
              -> _(_d_e_f _p_l_u_s_1 _(_m_a_c_r_o _(_a_r_g_) _(_l_i_s_t _'_a_d_d_1 _(_c_a_d_r _a_r_g_)_)_)_)
              plus1
              -> _(_p_l_u_s_1 _3_)
              4

              ; now if we _a_p_p_l_y a macro we obtain the form it changes to.
              -> _(_a_p_p_l_y _'_p_l_u_s_1 _'_(_p_l_u_s_1 _3_)_)
              (add1 3)

              ; if we _f_u_n_c_a_l_l a macro however, the result of the macro is _e_v_a_led
              ; before it is returned.
              -> _(_f_u_n_c_a_l_l _'_p_l_u_s_1 _'_(_p_l_u_s_1 _3_)_)
              4

              ; for this particular macro, the _c_a_r of the _a_r_g is not checked
              ; so that this too will work
              -> _(_a_p_p_l_y _'_p_l_u_s_1 _'_(_f_o_o _3_)_)
              (add1 3)

              ____________________________________________________




          ((aarrgg ['x_numb]))

               RETURNS: if  x_numb  is  specified  then  the x_numb'_t_h
                        argument to the enclosing lexpr If  x_numb  is
                        not  specified then this returns the number of
                        arguments to the enclosing lexpr.

               NOTE: it is an error to the interpreter  if  x_numb  is
                     given and out of range.

          ((bbrreeaakk [g_message ['g_pred]]))

               WHERE:   if  g_message is not given it is assumed to be
                        the null string, and if g_pred is not given it
                        is assumed to be t.

               RETURNS: the value of _(_*_b_r_e_a_k _'_g___p_r_e_d _'_g___m_e_s_s_a_g_e_)






                                             Printed: October 16, 1993







          SSppeecciiaall FFuunnccttiioonnss                                        44--44


          ((**bbrreeaakk 'g_pred 'g_message))

               RETURNS: nil  immediately  if  g_pred  is nil, else the
                        value of the next (return  'value)  expression
                        typed in at top level.

               SIDE EFFECT: If  the  predicate,  g_pred,  evaluates to
                            non-null, the lisp system stops and prints
                            out  `Break  '  followed by g_message.  It
                            then enters a break loop which allows  one
                            to interactively debug a program.  To con-
                            tinue execution from a break you  can  use
                            the  _r_e_t_u_r_n  function.   to  return to top
                            level or another break level, you can  use
                            _r_e_t_b_r_k or _r_e_s_e_t.

          ((ccaasseeqq 'g_key-form l_clause1 ...))

               WHERE:   l_clause_i  is a list of the form (g_comparator
                        ['g_form_i ...]).  The comparators may be  sym-
                        bols,  small  fixnums, a list of small fixnums
                        or symbols.

               NOTE: The way caseq works is that it  evaluates  g_key-
                     form, yielding a value we will call the selector.
                     Each clause is examined  until  the  selector  is
                     found consistent with the comparator.  For a sym-
                     bol, or a fixnum, this means the two must be  _e_q.
                     For  a list, this means that the selector must be
                     _e_q to some element of the list.

                     The comparator consisting of  the  symbol  tt  has
                     special  semantics: it matches anything, and con-
                     sequently, should be the last comparator.

                     In any case, having chosen a clause, _c_a_s_e_q evalu-
                     ates each form within that clause and

               RETURNS: the value of the last form.  If no comparators
                        are matched, _c_a_s_e_q returns nil.















                                             Printed: October 16, 1993







          SSppeecciiaall FFuunnccttiioonnss                                        44--55



              ____________________________________________________

              Here are two ways of defining the same function:
              ->_(_d_e_f_u_n _f_a_t_e _(_p_e_r_s_o_n_n_a_)
                   _(_c_a_s_e_q _p_e_r_s_o_n_n_a
                     _(_c_o_w _'_(_j_u_m_p_e_d _o_v_e_r _t_h_e _m_o_o_n_)_)
                     _(_c_a_t _'_(_p_l_a_y_e_d _n_e_r_o_)_)
                     _(_(_d_i_s_h _s_p_o_o_n_) _'_(_r_a_n _a_w_a_y _w_i_t_h _e_a_c_h _o_t_h_e_r_)_)
                     _(_t _'_(_l_i_v_e_d _h_a_p_p_i_l_y _e_v_e_r _a_f_t_e_r_)_)_)_)
              fate
              ->_(_d_e_f_u_n _f_a_t_e _(_p_e_r_s_o_n_n_a_)
                   _(_c_o_n_d
                        _(_(_e_q _p_e_r_s_o_n_n_a _'_c_o_w_) _'_(_j_u_m_p_e_d _o_v_e_r _t_h_e _m_o_o_n_)_)
                        _(_(_e_q _p_e_r_s_o_n_n_a _'_c_a_t_) _'_(_p_l_a_y_e_d _n_e_r_o_)_)
                        _(_(_m_e_m_q _p_e_r_s_o_n_n_a _'_(_d_i_s_h _s_p_o_o_n_)_) _'_(_r_a_n _a_w_a_y _w_i_t_h _e_a_c_h _o_t_h_e_r_)_)
                        _(_t _'_(_l_i_v_e_d _h_a_p_p_i_l_y _e_v_e_r _a_f_t_e_r_)_)_)_)
              fate
              ____________________________________________________




          ((ccaattcchh g_exp [ls_tag]))

               WHERE:   if ls_tag is not given, it is  assumed  to  be
                        nil.

               RETURNS: the result of _(_*_c_a_t_c_h _'_l_s___t_a_g _g___e_x_p_)

               NOTE: catch is defined as a macro.

          ((**ccaattcchh 'ls_tag g_exp))

               WHERE:   ls_tag  is  either  a symbol or a list of sym-
                        bols.

               RETURNS: the result of evaluating g_exp  or  the  value
                        thrown during the evaluation of g_exp.

               SIDE EFFECT: this  first sets up a `catch frame' on the
                            lisp runtime stack.   Then  it  begins  to
                            evaluate  g_exp.   If g_exp evaluates nor-
                            mally, its value is  returned.   If,  how-
                            ever, a value is thrown during the evalua-
                            tion of g_exp then this *catch will return
                            with  that  value if one of these cases is
                            true:

                (1)   the tag thrown to is ls_tag

                (2)   ls_tag is a list and the tag thrown to is a mem-
                      ber of this list


                                             Printed: October 16, 1993







          SSppeecciiaall FFuunnccttiioonnss                                        44--66


                (3)   ls_tag is nil.

               NOTE: Errors  are  implemented  as  a  special  kind of
                     throw.  A catch with no tag  will  not  catch  an
                     error  but  a  catch  whose tag is the error type
                     will catch that type of error.   See  Chapter  10
                     for more information.

          ((ccoommmmeenntt [g_arg ...]))

               RETURNS: the symbol comment.

               NOTE: This does absolutely nothing.

          ((ccoonndd [l_clause1 ...]))

               RETURNS: the  last  value evaluated in the first clause
                        satisfied.  If no clauses are  satisfied  then
                        nil is returned.

               NOTE: This  is  the  basic  conditional  `statement' in
                     lisp.  The clauses are  processed  from  left  to
                     right.   The  first element of a clause is evalu-
                     ated.  If it evaluated to a non-null  value  then
                     that  clause  is satisfied and all following ele-
                     ments of that clause  are  evaluated.   The  last
                     value  computed  is  returned as the value of the
                     cond.  If there is just one element in the clause
                     then its value is returned.  If the first element
                     of a clause evaluates to nil, then the other ele-
                     ments  of  that  clause are not evaluated and the
                     system moves to the next clause.

          ((ccvvttttooiinnttlliisspp))

               SIDE EFFECT: The reader is modified to conform with the
                            Interlisp syntax.  The character % is made
                            the escape character and special  meanings
                            for  comma,  backquote  and  backslash are
                            removed.  Also the reader is told to  con-
                            vert upper case to lower case.

          ((ccvvttttooffrraannzzlliisspp))

               SIDE EFFECT: FRANZ LISP's default syntax is reinstated.
                            One would run this function  after  having
                            run  any  of  the  other _c_v_t_t_o_- functions.
                            Backslash is made  the  escape  character,
                            super-brackets  work again, and the reader
                            distinguishes  between  upper  and   lower
                            case.




                                             Printed: October 16, 1993







          SSppeecciiaall FFuunnccttiioonnss                                        44--77


          ((ccvvttttoommaacclliisspp))

               SIDE EFFECT: The  reader  is  modified  to conform with
                            Maclisp syntax.  The character /  is  made
                            the escape character and the special mean-
                            ings for backslash, left and right bracket
                            are  removed.   The  reader  is made case-
                            insensitive.

          ((ccvvttttoouucciilliisspp))

               SIDE EFFECT: The reader is modified to conform with UCI
                            Lisp  syntax.  The character / is made the
                            escape character, tilde is made  the  com-
                            ment character, exclamation point takes on
                            the  unquote  function  normally  held  by
                            comma,  and  backslash,  comma,  semicolon
                            become normal characters.  Here  too,  the
                            reader is made case-insensitive.

          ((ddeebbuugg s_msg))

               SIDE EFFECT: Enter the Fixit package described in Chap-
                            ter 15.  This package allows you to  exam-
                            ine  the  evaluation  stack in detail.  To
                            leave the Fixit package type 'ok'.

          ((ddeebbuuggggiinngg 'g_arg))

               SIDE EFFECT: If g_arg is non-null,  Franz  unlinks  the
                            transfer  tables, does a _(_*_r_s_e_t _t_) to turn
                            on evaluation monitoring and sets the all-
                            error  catcher  (ER%all)  to be _d_e_b_u_g_-_e_r_r_-
                            _h_a_n_d_l_e_r.  If g_arg  is  nil,  all  of  the
                            above changes are undone.

          ((ddeeccllaarree [g_arg ...]))

               RETURNS: nil

               NOTE: this is a no-op to the evaluator.  It has special
                     meaning to the compiler (see Chapter 12).













                                             Printed: October 16, 1993







          SSppeecciiaall FFuunnccttiioonnss                                        44--88


          ((ddeeff s_name (s_type l_argl g_exp1 ...)))

               WHERE:   s_type is one of  lambda,  nlambda,  macro  or
                        lexpr.

               RETURNS: s_name

               SIDE EFFECT: This  defines  the  function s_name to the
                            lisp system.   If  s_type  is  nlambda  or
                            macro  then  the argument list l_argl must
                            contain exactly one non-nil symbol.

          ((ddeeffmmaaccrroo s_name l_arg g_exp1 ...))
          ((ddeeffccmmaaccrroo s_name l_arg g_exp1 ...))

               RETURNS: s_name

               SIDE EFFECT: This defines the macro  s_name.   _d_e_f_m_a_c_r_o
                            makes  it  easy  to  write macros since it
                            makes the syntax just like _d_e_f_u_n.  Further
                            information  on  _d_e_f_m_a_c_r_o  is  in  S8.3.2.
                            _d_e_f_c_m_a_c_r_o defines compiler-only macros, or
                            cmacros.   A cmacro is stored on the prop-
                            erty list of a symbol under the  indicator
                            ccmmaaccrroo.  Thus a function can have a normal
                            definition and a cmacro  definition.   For
                            an  example of the use of cmacros, see the
                            definitions   of   nthcdr   and   nth   in
                            /usr/lib/lisp/common2.l

          ((ddeeffuunn s_name [s_mtype] ls_argl g_exp1 ... ))

               WHERE:   s_mtype  is one of fexpr, expr, args or macro.

               RETURNS: s_name

               SIDE EFFECT: This defines the function s_name.

               NOTE: this exists for Maclisp compatibility, it is just
                     a  macro  which changes the defun form to the def
                     form.   An  s_mtype  of  fexpr  is  converted  to
                     nlambda  and of expr to lambda. Macro remains the
                     same.  If ls_arg1 is a non-nil symbol,  then  the
                     type  is  assumed  to be lexpr and ls_arg1 is the
                     symbol which is bound to the number of args  when
                     the function is entered.
                     For  compatibility  with  the  Lisp Machine Lisp,
                     there are three types of optional parameters that
                     can  occur  in  ls_argl:  _&_o_p_t_i_o_n_a_l declares that
                     the following symbols are optional,  and  may  or
                     may  not appear in the argument list to the func-
                     tion, _&_r_e_s_t _s_y_m_b_o_l declares that all forms in the
                     function  call  that  are  not  accounted  for by


                                             Printed: October 16, 1993







          SSppeecciiaall FFuunnccttiioonnss                                        44--99


                     previous lambda bindings are to  be  assigned  to
                     _s_y_m_b_o_l,  and  _&_a_u_x  _f_o_r_m_1 _._._. _f_o_r_m_n declares that
                     the _f_o_r_m_i are either symbols, in which case  they
                     are  lambda bound to nniill, or lists, in which case
                     the first element of the list is lambda bound  to
                     the second, evaluated element.


              ____________________________________________________

              ; _d_e_f and _d_e_f_u_n here are used to define identical functions
              ; you can decide for yourself which is easier to use.
              -> _(_d_e_f _a_p_p_e_n_d_1 _(_l_a_m_b_d_a _(_l_i_s _e_x_t_r_a_) _(_a_p_p_e_n_d _l_i_s _(_l_i_s_t _e_x_t_r_a_)_)_)_)
              append1

              -> _(_d_e_f_u_n _a_p_p_e_n_d_1 _(_l_i_s _e_x_t_r_a_) _(_a_p_p_e_n_d _l_i_s _(_l_i_s_t _e_x_t_r_a_)_)_)
              append1

              ; Using the & forms...
              -> _(_d_e_f_u_n _t_e_s_t _(_a _b _&_o_p_t_i_o_n_a_l _c _&_a_u_x _(_r_e_t_v_a_l _0_) _&_r_e_s_t _z_)
                              _(_i_f _c _t_h_e_m _(_m_s_g _"_O_p_t_i_o_n_a_l _a_r_g _p_r_e_s_e_n_t_" _N
                                                                      _"_c _i_s _" _c _N_)_)
                                      _(_m_s_g _"_r_e_s_t _i_s _" _z _N
                                                        _"_r_e_t_v_a_l _i_s _" _r_e_t_v_a_l _N_)_)
              test
              -> _(_t_e_s_t _1 _2 _3 _4_)
              Optional arg present
              c is 3
              rest is (4)
              retval is 0
              ____________________________________________________




          ((ddeeffvvaarr s_variable ['g_init]))

               RETURNS: s_variable.

               NOTE: This  form is put at the top level in files, like
                     _d_e_f_u_n..

               SIDE EFFECT: This declares s_variable to be special. If
                            g_init   is   present  and  s_variable  is
                            unbound  when  the  file   is   read   in,
                            s_variable  will  be  set  to the value of
                            g_init.  An advantage  of  `(defvar  foo)'
                            over  `(declare (special foo))' is that if
                            a file containing defvars  is  loaded  (or
                            fasl'ed)  in during compilation, the vari-
                            ables mentioned in the  defvar's  will  be
                            declared  special.   The  only way to have
                            that effect with `(declare (special foo))'


                                             Printed: October 16, 1993







          SSppeecciiaall FFuunnccttiioonnss                                       44--1100


                            is to _i_n_c_l_u_d_e the file.

          ((ddoo l_vrbs l_test g_exp1 ...))

               RETURNS: the  last form in the cdr of l_test evaluated,
                        or a value explicitly given by a return evalu-
                        ated within the do body.

               NOTE: This  is the basic iteration form for FRANZ LISP.
                     l_vrbs is a list of zero or more  var-init-repeat
                     forms.  A var-init-repeat form looks like:
                          (s_name [g_init [g_repeat]])
                     There  are  three cases depending on what is pre-
                     sent in the form.  If  just  s_name  is  present,
                     this means that when the do is entered, s_name is
                     lambda-bound to nil and is never modified by  the
                     system  (though  the program is certainly free to
                     modify   its   value).    If    the    form    is
                     (s_name 'g_init) then the only difference is that
                     s_name is lambda-bound to  the  value  of  g_init
                     instead of nil.  If g_repeat is also present then
                     s_name is lambda-bound to g_init when the loop is
                     entered  and  after each pass through the do body
                     s_name is  bound to the value of g_repeat.
                     l_test is either nil or has the form  of  a  cond
                     clause.   If  it  is nil then the do body will be
                     evaluated only once and the do will  return  nil.
                     Otherwise,  before  the  do body is evaluated the
                     car of l_test is evaluated and if the  result  is
                     non-null,  this  signals  an  end to the looping.
                     Then the rest of the forms in l_test  are  evalu-
                     ated and the value of the last one is returned as
                     the value of the do.  If the  cdr  of  l_test  is
                     nil,  then  nil  is  returned -- thus this is not
                     exactly like a cond clause.
                     g_exp1 and those forms  which  follow  constitute
                     the  do  body.  A do body is like a prog body and
                     thus may have labels and one may  use  the  func-
                     tions go and return.
                     The sequence of evaluations is this:

                (1)   the  init  forms are evaluated left to right and
                      stored in temporary locations.

                (2)   Simultaneously all do variables are lambda bound
                      to the value of their init forms or nil.

                (3)   If l_test is non-null, then the car is evaluated
                      and if it is non-null, the rest of the forms  in
                      l_test  are  evaluated  and  the  last  value is
                      returned as the value of the do.




                                             Printed: October 16, 1993







          SSppeecciiaall FFuunnccttiioonnss                                       44--1111


                (4)   The forms in the do body are evaluated  left  to
                      right.

                (5)   If  l_test  is  nil the do function returns with
                      the value nil.

                (6)   The repeat forms are evaluated and saved in tem-
                      porary locations.

                (7)   The  variables  with repeat forms are simultane-
                      ously bound to the values of those forms.

                (8)   Go to step 3.

               NOTE: there is an alternate form of  do  which  can  be
                     used  when  there is only one do variable.  It is
                     described next.


              ____________________________________________________

              ; this is  a simple function which numbers the elements of a list.
              ; It uses a _d_o function with two local variables.
              -> _(_d_e_f_u_n _p_r_i_n_t_e_m _(_l_i_s_)
                        _(_d_o _(_(_x_x _l_i_s _(_c_d_r _x_x_)_)
                          _(_i _1 _(_1_+ _i_)_)_)
                         _(_(_n_u_l_l _x_x_) _(_p_a_t_o_m _"_a_l_l _d_o_n_e_"_) _(_t_e_r_p_r_)_)
                         _(_p_r_i_n_t _i_)
                         _(_p_a_t_o_m _"_: _"_)
                         _(_p_r_i_n_t _(_c_a_r _x_x_)_)
                         _(_t_e_r_p_r_)_)_)
              printem
              -> _(_p_r_i_n_t_e_m _'_(_a _b _c _d_)_)
              1: a
              2: b
              3: c
              4: d
              all done
              nil
              ->
              ____________________________________________________














                                             Printed: October 16, 1993







          SSppeecciiaall FFuunnccttiioonnss                                       44--1122


          ((ddoo s_name g_init g_repeat g_test g_exp1 ...))

               NOTE: this is another, less general,  form of  do.   It
                     is evaluated by:

                (1)   evaluating g_init

                (2)   lambda binding s_name to value of g_init

                (3)   g_test  is evaluated and if it is not nil the do
                      function returns with nil.

                (4)   the do body is evaluated beginning at g_exp1.

                (5)   the repeat  form  is  evaluated  and  stored  in
                      s_name.

                (6)   go to step 3.

               RETURNS: nil

          ((eennvviirroonnmmeenntt [l_when1 l_what1 l_when2 l_what2 ...]))
          ((eennvviirroonnmmeenntt--mmaacclliisspp  [l_when1 l_what1 l_when2 l_what2 ...]))
          ((eennvviirroonnmmeenntt--llmmlliisspp [l_when1 l_what1 l_when2 l_what2 ...]))

               WHERE:   the when's  are  a  subset  of  (eval  compile
                        load),  and  the symbols have the same meaning
                        as they do in 'eval-when'.

                        The what's may be
                             (files file1 file2 ... fileN),
                        which insure that the named files are  loaded.
                        To  see  if  file_i  is  loaded, it looks for a
                        'version'  property  under  file_i's   property
                        list.   Thus  to prevent multiple loading, you
                        should put
                             (putprop 'myfile t 'version),
                        at the end of myfile.l.

                        Another acceptable form for a what is
                        (syntax type)
                        Where type is either maclisp,  intlisp,  ucil-
                        isp, franzlisp.

               SIDE EFFECT: _e_n_v_i_r_o_n_m_e_n_t_-_m_a_c_l_i_s_p  sets  the environment
                            to that which `liszt -m' would generate.

                            _e_n_v_i_r_o_n_m_e_n_t_-_l_m_l_i_s_p   sets  up   the   lisp
                            machine  environment. This is like maclisp
                            but it has additional macros.

                            For these specialized  environments,  only
                            the     ffiilleess    clauses    are    useful.


                                             Printed: October 16, 1993







          SSppeecciiaall FFuunnccttiioonnss                                       44--1133


                                 (environment-maclisp  (compile  eval)
                            (files foo bar))

               RETURNS: the last list of files requested.

          ((eerrrr ['s_value [nil]]))

               RETURNS: nothing (it never returns).

               SIDE EFFECT: This  causes an error and if this error is
                            caught by an _e_r_r_s_e_t then that _e_r_r_s_e_t  will
                            return  s_value  instead  of  nil.  If the
                            second arg is given, then it must  be  nil
                            (MAClisp compatibility).

          ((eerrrroorr ['s_message1 ['s_message2]]))

               RETURNS: nothing (it never returns).

               SIDE EFFECT: s_message1  and  s_message2 are _p_a_t_o_med if
                            they are given  and  then  _e_r_r  is  called
                            (with   no  arguments),  which  causes  an
                            error.

          ((eerrrrsseett g_expr [s_flag]))

               RETURNS: a list of one  element,  which  is  the  value
                        resulting from evaluating g_expr.  If an error
                        occurs during the evaluation of  g_expr,  then
                        the locus of control will return to the _e_r_r_s_e_t
                        which will then return nil (unless  the  error
                        was  caused  by a call to _e_r_r_, with a non-null
                        argument).

               SIDE EFFECT: S_flag is evaluated before g_expr is eval-
                            uated.  If s_flag is not given, then it is
                            assumed to be t.  If an error occurs  dur-
                            ing  the  evaluation of g_expr, and s_flag
                            evaluated to a non-null  value,  then  the
                            error message associated with the error is
                            printed  before  control  returns  to  the
                            errset.













                                             Printed: October 16, 1993







          SSppeecciiaall FFuunnccttiioonnss                                       44--1144


          ((eevvaall 'g_val ['x_bind-pointer]))

               RETURNS: the result of evaluating g_val.

               NOTE: The evaluator evaluates g_val in this way:
                     If  g_val is a symbol, then the evaluator returns
                     its value.  If g_val had never  been  assigned  a
                     value,  then  this  causes  an `Unbound Variable'
                     error.  If  x_bind-pointer  is  given,  then  the
                     variable   is  evaluated  with  respect  to  that
                     pointer  (see  _e_v_a_l_f_r_a_m_e  for  details  on  bind-
                     pointers).

                     If  g_val  is  of  type  value, then its value is
                     returned.  If g_val is of  any  other  type  than
                     list, g_val is returned.

                     If  g_val is a list object then g_val is either a
                     function call or array reference.  Let  g_car  be
                     the first element of g_val.  We continually eval-
                     uate g_car until we end up with a symbol  with  a
                     non-null  function binding or a non-symbol.  Call
                     what we end up with: g_func.

                     G_func must be one of three types:  list,  binary
                     or array.  If it is a list then the first element
                     of the list, which we shall call g_functype, must
                     be  either  lambda,  nlambda, macro or lexpr.  If
                     g_func is a binary, then its discipline, which we
                     shall call g_functype, is either lambda, nlambda,
                     macro or a string.  If g_func is  an  array  then
                     this  form  is evaluated specially, see Chapter 9
                     on arrays.  If g_func is a list or  binary,  then
                     g_functype  will  determine  how the arguments to
                     this function, the cdr of g_val,  are  processed.
                     If g_functype is a string, then this is a foreign
                     function call (see S8.5 for more details).

                     If g_functype is lambda or lexpr,  the  arguments
                     are  evaluated  (by calling _e_v_a_l recursively) and
                     stacked.  If g_functype is nlambda then the argu-
                     ment  list  is  stacked.   If g_functype is macro
                     then the entire form, g_val is stacked.

                     Next, the formal variables are lambda bound.  The
                     formal  variables  are  the  cadr  of g_func.  If
                     g_functype is  nlambda,  lexpr  or  macro,  there
                     should  only  be one formal variable.  The values
                     on the stack are lambda bound to the formal vari-
                     ables  except  in  the case of a lexpr, where the
                     number of actual arguments is bound to the formal
                     variable.



                                             Printed: October 16, 1993







          SSppeecciiaall FFuunnccttiioonnss                                       44--1155


                     After  the  binding  is  done,  the  function  is
                     invoked, either by jumping to the entry point  in
                     the case of a binary or by evaluating the list of
                     forms beginning at cddr g_func.   The  result  of
                     this function invocation is returned as the value
                     of the call to eval.

          ((eevvaallffrraammee 'x_pdlpointer))

               RETURNS: an evalframe  descriptor  for  the  evaluation
                        frame    just    before    x_pdlpointer.    If
                        x_pdlpointer is nil, it returns the evaluation
                        frame  of  the  frame  just before the current
                        call to _e_v_a_l_f_r_a_m_e.

               NOTE: An evalframe descriptor describes a call to _e_v_a_l,
                     _a_p_p_l_y or _f_u_n_c_a_l_l.  The form of the descriptor is
                     _(_t_y_p_e  _p_d_l_-_p_o_i_n_t_e_r  _e_x_p_r_e_s_s_i_o_n  _b_i_n_d_-_p_o_i_n_t_e_r  _n_p_-
                     _i_n_d_e_x _l_b_o_t_-_i_n_d_e_x_)
                     where type is `eval' if this describes a call  to
                     _e_v_a_l  or  `apply'  if  this is a call to _a_p_p_l_y or
                     _f_u_n_c_a_l_l.    pdl-pointer   is   a   number   which
                     describes  this  context.   It  can  be passed to
                     _e_v_a_l_f_r_a_m_e to obtain the next descriptor  and  can
                     be  passed to _f_r_e_t_u_r_n to cause a return from this
                     context.  bind-pointer is the  size  of  variable
                     binding  stack  when  this evaluation began.  The
                     bind-pointer can be given as a second argument to
                     _e_v_a_l  to  order to evaluate variables in the same
                     context as this  evaluation.  If type  is  `eval'
                     then    expression    will    have    the    form
                     _(_f_u_n_c_t_i_o_n_-_n_a_m_e _a_r_g_1 _._._._).   If  type  is  `apply'
                     then    expression    will    have    the    form
                     _(_f_u_n_c_t_i_o_n_-_n_a_m_e _(_a_r_g_1 _._._._)_).  np-index  and  lbot-
                     index  are pointers into the argument stack (also
                     known as the _n_a_m_e_s_t_a_c_k  array)  at  the  time  of
                     call.   lbot-index  points to the first argument,
                     np-index points one beyond the last argument.
                     In order for there to be enough  information  for
                     _e_v_a_l_f_r_a_m_e to return, you must call _(_*_r_s_e_t _t_).

               EXAMPLE: _(_p_r_o_g_n _(_e_v_a_l_f_r_a_m_e _n_i_l_)_)
                        returns  _(_e_v_a_l  _2_1_4_7_4_7_8_6_0_0  _(_p_r_o_g_n  _(_e_v_a_l_f_r_a_m_e
                        _n_i_l_)_) _1 _8 _7_)











                                             Printed: October 16, 1993







          SSppeecciiaall FFuunnccttiioonnss                                       44--1166


          ((eevvaallhhooookk 'g_form 'su_evalfunc ['su_funcallfunc]))

               RETURNS: the result of evaluating g_form  after  lambda
                        binding  `evalhook'  to su_evalfunc and, if it
                        is  given,  lambda  binding  `funcallhook'  to
                        su_funcallhook.

               NOTE: As explained in S14.4, the function _e_v_a_l may pass
                     the job of evaluating a form  to  a  user  `hook'
                     function  when  various  switches  are  set.  The
                     hook function normally  prints  the  form  to  be
                     evaluated  on  the terminal and then evaluates it
                     by calling _e_v_a_l_h_o_o_k.  _E_v_a_l_h_o_o_k  does  the  lambda
                     binding  mentioned  above  and then calls _e_v_a_l to
                     evaluate  the  form  after  setting  an  internal
                     switch  to  tell _e_v_a_l not to call the user's hook
                     function just this one  time.   This  allows  the
                     evaluation  process  to  advance one step and yet
                     insure that further  calls  to  _e_v_a_l  will  cause
                     traps  to  the  hook  function (if su_evalfunc is
                     non-null).
                     In order for  _e_v_a_l_h_o_o_k  to  work,  _(_*_r_s_e_t _t_)  and
                     _(_s_s_t_a_t_u_s _e_v_a_l_h_o_o_k _t_)  must  have been done previ-
                     ously.

          ((eexxeecc s_arg1 ...))

               RETURNS: the result of forking and executing  the  com-
                        mand   named   by   concatenating  the  s_arg_i
                        together with spaces in between.

          ((eexxeeccee 's_fname ['l_args ['l_envir]]))

               RETURNS: the error code  from  the  system  if  it  was
                        unable  to  execute  the  command s_fname with
                        arguments l_args and with the environment  set
                        up  as specified in l_envir.  If this function
                        is successful, it will not return, instead the
                        lisp  system  will be overlaid by the new com-
                        mand.

          ((ffrreettuurrnn 'x_pdl-pointer 'g_retval))

               RETURNS: g_retval from  the  context  given  by  x_pdl-
                        pointer.

               NOTE: A  pdl-pointer  denotes a certain expression cur-
                     rently being evaluated.  The  pdl-pointer  for  a
                     given  expression can be obtained from _e_v_a_l_f_r_a_m_e.






                                             Printed: October 16, 1993







          SSppeecciiaall FFuunnccttiioonnss                                       44--1177


          ((ffrreexxpp 'f_arg))

               RETURNS: a list cell _(_e_x_p_o_n_e_n_t _. _m_a_n_t_i_s_s_a_) which repre-
                        sents the given flonum

               NOTE: The  exponent will be a fixnum, the mantissa a 56
                     bit bignum.  If you think of the the binary point
                     occurring  right after the high order bit of man-
                     tissa, then f_arg = 2* mantissa.

          ((ffuunnccaallll 'u_func ['g_arg1 ...]))

               RETURNS: the value of applying function u_func  to  the
                        arguments  g_arg_i  and  then  evaluating  that
                        result if u_func is a macro.

               NOTE: If u_func is a macro or nlambda then there should
                     be only one g_arg.  _f_u_n_c_a_l_l is the function which
                     the evaluator uses to evaluate lists.  If _f_o_o  is
                     a    lambda    or    lexpr    or    array,   then
                     _(_f_u_n_c_a_l_l _'_f_o_o _'_a _'_b _'_c_)    is    equivalent    to
                     _(_f_o_o _'_a _'_b _'_c_).    If   _f_o_o  is  a  nlambda  then
                     _(_f_u_n_c_a_l_l _'_f_o_o _'_(_a _b _c_)_) is equivalent to _(_f_o_o _a _b
                     _c_).    Finally,   if   _f_o_o   is   a   macro  then
                     _(_f_u_n_c_a_l_l _'_f_o_o _'_(_f_o_o _a _b _c_)_)  is   equivalent   to
                     _(_f_o_o _a _b _c_).

          ((ffuunnccaallllhhooookk 'l_form 'su_funcallfunc ['su_evalfunc]))

               RETURNS: the  result  of _f_u_n_c_a_l_ling the _(_c_a_r _l___f_o_r_m_) on
                        the  already  evaluated   arguments   in   the
                        _(_c_d_r _l___f_o_r_m_)  after  lambda  binding `funcall-
                        hook' to su_funcallfunc and, if it  is  given,
                        lambda binding `evalhook' to su_evalhook.

               NOTE: This function is designed to continue the evalua-
                     tion process with  as  little  work  as  possible
                     after a funcallhook trap has occurred.  It is for
                     this reason that the form of l_form  is  unortho-
                     dox:  its _c_a_r is the name of the function to call
                     and its _c_d_r are a  list  of  arguments  to  stack
                     (without  evaluating  again)  before  calling the
                     given function.  After stacking the arguments but
                     before  calling _f_u_n_c_a_l_l an internal switch is set
                     to prevent _f_u_n_c_a_l_l from passing the job  of  fun-
                     calling  to su_funcallfunc.  If _f_u_n_c_a_l_l is called
                     recursively   in   funcalling   l_form   and   if
                     su_funcallfunc is non-null, then the arguments to
                     _f_u_n_c_a_l_l will actually be given to  su_funcallfunc
                     (a lexpr) to be funcalled.
                     In  order  for  _e_v_a_l_h_o_o_k  to  work, _(_*_r_s_e_t _t_) and
                     _(_s_s_t_a_t_u_s _e_v_a_l_h_o_o_k _t_) must have been  done  previ-
                     ously.   A  more detailed description of _e_v_a_l_h_o_o_k


                                             Printed: October 16, 1993







          SSppeecciiaall FFuunnccttiioonnss                                       44--1188


                     and _f_u_n_c_a_l_l_h_o_o_k is given in Chapter 14.

          ((ffuunnccttiioonn u_func))

               RETURNS: the function binding of u_func  if  it  is  an
                        symbol   with  a  function  binding  otherwise
                        u_func is returned.

          ((ggeettddiisscc 'y_func))

               RETURNS: the discipline of the machine  coded  function
                        (either lambda, nlambda or macro).

          ((ggoo g_labexp))

               WHERE:   g_labexp  is either a symbol or an expression.

               SIDE EFFECT: If g_labexp is an expression, that expres-
                            sion  is  evaluated and should result in a
                            symbol.  The locus  of  control  moves  to
                            just  following the symbol g_labexp in the
                            current prog or do body.

               NOTE: this is only valid in the context of a prog or do
                     body.   The  interpreter  and compiler will allow
                     non-local _g_o's although the compiler won't  allow
                     a _g_o to leave a function body.  The compiler will
                     not allow g_labexp to be an expression.

          ((iiff 'g_a 'g_b))
          ((iiff 'g_a 'g_b 'g_c ...))
          ((iiff 'g_a tthheenn  'g_b [...] [eellsseeiiff 'g_c tthheenn 'g_d ...]  [eellssee
          'g_e [...]))
          ((iiff  'g_a  tthheenn  'g_b [...] [eellsseeiiff 'g_c tthheennrreett] [eellssee 'g_d
          [...]))

               NOTE: The various forms of _i_f are intended to be a more
                     readable  conditional  statement,  to  be used in
                     place of _c_o_n_d.  There are two  varieties  of  _i_f,
                     with  keywords,  and  without.   The keyword-less
                     variety is inherited from common  Maclisp  usage.
                     A  keyword-less, two argument _i_f is equivalent to
                     a one-clause _c_o_n_d, i.e. (_c_o_n_d (a b)).   Any other
                     keyword-less  _i_f  must  have at least three argu-
                     ments.  The first two  arguments  are  the  first
                     clause  of the equivalent _c_o_n_d, and all remaining
                     arguments are shoved into a second clause  begin-
                     ning  with  tt.   Thus,  the  second form of _i_f is
                     equivalent to
                          (_c_o_n_d (a b) (t c ...)).

                     The keyword variety has the following grouping of
                     arguments:   a   predicate,  a  then-clause,  and


                                             Printed: October 16, 1993







          SSppeecciiaall FFuunnccttiioonnss                                       44--1199


                     optional else-clause.  The  predicate  is  evalu-
                     ated,  and  if  the  result is non-nil, the then-
                     clause will be performed, in the sense  described
                     below.  Otherwise, (i.e. the result of the predi-
                     cate evaluation was  precisely  nil),  the  else-
                     clause will be performed.

                     Then-clauses  will either consist entirely of the
                     single keyword tthheennrreett, or will  start  with  the
                     keyword  tthheenn,  and  be  followed by at least one
                     general expression.  (These  general  expressions
                     must  not  be one of the keywords.)  To actuate a
                     tthheennrreett means to cease further evaluation of  the
                     _i_f, and to return the value of the predicate just
                     calculated.  The performance of the longer clause
                     means  to  evaluate  each  general  expression in
                     turn, and then return the last value  calculated.

                     The  else-clause  may begin with the keyword eellssee
                     and be followed by at least one  general  expres-
                     sion.   The rendition of this clause is just like
                     that of a then-clause.  An else-clause may  begin
                     alternatively  with  the  keyword  eellsseeiiff, and be
                     followed  (recursively)  by  a  predicate,  then-
                     clause,  and optional else-clause.  Evaluation of
                     this clause, is just evaluation  of  an  _i_f-form,
                     with  the same predicate, then- and else-clauses.

          ((II--tthhrrooww--eerrrr 'l_token))

               WHERE:   l_token is the _c_d_r of the value returned  from
                        a _*_c_a_t_c_h with the tag ER%unwind-protect.

               RETURNS: nothing (never returns in the current context)

               SIDE EFFECT: The error or throw denoted by  l_token  is
                            continued.

               NOTE: This function is used to implement _u_n_w_i_n_d_-_p_r_o_t_e_c_t
                     which allows the processing of a transfer of con-
                     trol  though a certain context to be interrupted,
                     a user function  to  be  executed  and  than  the
                     transfer  of  control  to  continue.  The form of
                     l_token is either
                     _(_t _t_a_g _v_a_l_u_e_) for a throw or
                     _(_n_i_l _t_y_p_e _m_e_s_s_a_g_e _v_a_l_r_e_t  _c_o_n_t_u_a_b  _u_n_i_q_u_e_i_d  _[_a_r_g
                     _._._._]_) for an error.
                     This  function is not to be used for implementing
                     throws or errors and is only documented here  for
                     completeness.





                                             Printed: October 16, 1993







          SSppeecciiaall FFuunnccttiioonnss                                       44--2200


          ((lleett l_args g_exp1 ... g_exprn))

               RETURNS: the  result  of  evaluating g_exprn within the
                        bindings given by l_args.

               NOTE: l_args is either nil (in which case _l_e_t  is  just
                     like  _p_r_o_g_n)  or it is a list of binding objects.
                     A binding object is a  list  _(_s_y_m_b_o_l _e_x_p_r_e_s_s_i_o_n_).
                     When a _l_e_t is entered, all of the expressions are
                     evaluated and then simultaneously lambda-bound to
                     the  corresponding  symbols.   In  effect,  a _l_e_t
                     expression  is  just  like  a  lambda  expression
                     except  the  symbols and their initial values are
                     next to each other, making the expression  easier
                     to  understand.  There are some added features to
                     the _l_e_t expression: A binding object can just  be
                     a  symbol,  in  which  case the expression corre-
                     sponding to that symbol is `nil'.  If  a  binding
                     object  is  a  list and the first element of that
                     list is another list, then that list  is  assumed
                     to be a binding template and _l_e_t will do a _d_e_s_e_t_q
                     on it.

          ((lleett** l_args g_exp1 ... g_expn))

               RETURNS: the result of evaluating  g_exprn  within  the
                        bindings given by l_args.

               NOTE: This  is  identical to _l_e_t except the expressions
                     in the binding  list  l_args  are  evaluated  and
                     bound sequentially instead of in parallel.

          ((lleexxpprr--ffuunnccaallll 'g_function ['g_arg1 ...] 'l_argn))

               NOTE: This  is  a cross between funcall and apply.  The
                     last argument, must be a list  (possibly  empty).
                     The  element  of  list arg are stack and then the
                     function is funcalled.

               EXAMPLE: (lexpr-funcall 'list 'a '(b c d)) is the  same
                        as
                         (funcall 'list 'a 'b 'c 'd)













                                             Printed: October 16, 1993







          SSppeecciiaall FFuunnccttiioonnss                                       44--2211


          ((lliissttiiffyy 'x_count))

               RETURNS: a list of x_count of the arguments to the cur-
                        rent function (which must be a lexpr).

               NOTE: normally  arguments   1   through   x_count   are
                     returned.  If x_count is negative then  a list of
                     last abs(x_count) arguments are returned.

          ((mmaapp 'u_func 'l_arg1 ...))

               RETURNS: l_arg1

               NOTE: The function u_func is applied to successive sub-
                     lists  of  the  l_arg_i.  All sublists should have
                     the same length.

          ((mmaappcc 'u_func 'l_arg1 ...))

               RETURNS: l_arg1.

               NOTE: The function u_func is applied to successive ele-
                     ments  of  the  argument lists.  All of the lists
                     should have the same length.

          ((mmaappccaann 'u_func 'l_arg1 ...))

               RETURNS: nconc applied to the results of the functional
                        evaluations.

               NOTE: The function u_func is applied to successive ele-
                     ments of the argument lists.  All sublists should
                     have the same length.

          ((mmaappccaarr 'u_func 'l_arg1 ...))

               RETURNS: a  list  of the values returned from the func-
                        tional application.

               NOTE: the function u_func is applied to successive ele-
                     ments of the argument lists.  All sublists should
                     have the same length.













                                             Printed: October 16, 1993







          SSppeecciiaall FFuunnccttiioonnss                                       44--2222


          ((mmaappccoonn 'u_func 'l_arg1 ...))

               RETURNS: nconc applied to the results of the functional
                        evaluation.

               NOTE: the function u_func is applied to successive sub-
                     lists of the argument lists.  All sublists should
                     have the same length.

          ((mmaapplliisstt 'u_func 'l_arg1 ...))

               RETURNS: a list of the results of the functional evalu-
                        ations.

               NOTE: the function u_func is applied to successive sub-
                     lists  of  the  arguments  lists.   All  sublists
                     should have the same length.

               Readers may find the following summary table useful  in
               remembering  the  differences  between  the six mapping
               functions:


               +-----------------+---------------------------------------------+
               |                 |              Value returned is              |
               |                 |                                             |
               | Argument to     | l_arg1   list of results   _n_c_o_n_c of results |
               | functional is   |                                             |
               +-----------------+---------------------------------------------+
               |                 |                                             |
               |elements of list |  mapc        mapcar             mapcan      |
               |                 |                                             |
               |    sublists     |  map         maplist            mapcon      |
               +-----------------+---------------------------------------------+



          ((mmffuunnccttiioonn t_entry 's_disc))

               RETURNS: a  lisp  object  of  type  binary  composed of
                        t_entry and s_disc.

               NOTE: t_entry is a pointer to the machine  code  for  a
                     function,  and  s_disc  is  the  discipline (e.g.
                     lambda).










                                             Printed: October 16, 1993







          SSppeecciiaall FFuunnccttiioonnss                                       44--2233


          ((oobblliisstt))

               RETURNS: a list of all symbols on the oblist.

          ((oorr [g_arg1 ... ]))

               RETURNS: the value of the first non-null  argument   or
                        nil if all arguments evaluate to nil.

               NOTE: Evaluation  proceeds  left  to right and stops as
                     soon as one of the arguments evaluates to a  non-
                     null value.

          ((pprroogg l_vrbls g_exp1 ...))

               RETURNS: the value explicitly given in a return form or
                        else nil if no return is done by the time  the
                        last g_exp_i is evaluated.

               NOTE: the local variables are lambda-bound to nil, then
                     the g_exp_i are  evaluated  from  left  to  right.
                     This  is  a  prog body (obviously) and this means
                     than any symbols seen are not evaluated, but  are
                     treated as labels.  This also means that return's
                     and go's are allowed.

          ((pprroogg11 'g_exp1 ['g_exp2 ...]))

               RETURNS: g_exp1

          ((pprroogg22 'g_exp1 'g_exp2 ['g_exp3 ...]))

               RETURNS: g_exp2

               NOTE: the forms are evaluated from left  to  right  and
                     the value of g_exp2 is returned.

          ((pprrooggnn 'g_exp1 ['g_exp2 ...]))

               RETURNS: the last g_exp_i.

          ((pprrooggvv 'l_locv 'l_initv g_exp1 ...))

               WHERE:   l_locv  is  a list of symbols and l_initv is a
                        list of expressions.

               RETURNS: the value of the last g_exp_i evaluated.

               NOTE: The expressions in  l_initv  are  evaluated  from
                     left  to  right and then lambda-bound to the sym-
                     bols in l_locv.  If there are too few expressions
                     in l_initv then the missing values are assumed to
                     be nil.  If there are  too  many  expressions  in


                                             Printed: October 16, 1993







          SSppeecciiaall FFuunnccttiioonnss                                       44--2244


                     l_initv then the extra ones are ignored (although
                     they are evaluated).  Then the g_exp_i are  evalu-
                     ated  left to right.  The body of a progv is like
                     the body of a progn,  it  is  _n_o_t  a  prog  body.
                     (C.f.  _l_e_t)

          ((ppuurrccooppyy 'g_exp))

               RETURNS: a  copy of g_exp with new pure cells allocated
                        wherever possible.

               NOTE: pure space is never swept up by the garbage  col-
                     lector,  so  this  should only be done on expres-
                     sions which are not likely to become  garbage  in
                     the  future.   In  certain cases, data objects in
                     pure space become read-only after a _d_u_m_p_l_i_s_p  and
                     then  an attempt to modify the object will result
                     in an illegal memory reference.

          ((ppuurreepp 'g_exp))

               RETURNS: t iff the object g_exp is in pure space.

          ((ppuuttdd 's_name 'u_func))

               RETURNS: u_func

               SIDE EFFECT: this sets the function binding  of  symbol
                            s_name to u_func.

          ((rreettuurrnn ['g_val]))

               RETURNS: g_val  (or  nil  if g_val is not present) from
                        the enclosing prog or do body.

               NOTE: this form is only valid in the context of a  prog
                     or do body.

          ((sseelleeccttqq 'g_key-form [l_clause1 ...]))

               NOTE: This  function  is  just  like _c_a_s_e_q (see above),
                     except that the symbol  ootthheerrwwiissee  has  the  same
                     semantics  as  the  symbol tt, when used as a com-
                     parator.











                                             Printed: October 16, 1993







          SSppeecciiaall FFuunnccttiioonnss                                       44--2255


          ((sseettaarrgg 'x_argnum 'g_val))

               WHERE:   x_argnum is greater than zero and less than or
                        equal to the number of arguments to the lexpr.

               RETURNS: g_val

               SIDE EFFECT: the lexpr's x_argnum'th argument is set to
                            g-val.

               NOTE: this can only be used within the body of a lexpr.

          ((tthhrrooww 'g_val [s_tag]))

               WHERE:   if s_tag is not given, it  is  assumed  to  be
                        nil.

               RETURNS: the value of _(_*_t_h_r_o_w _'_s___t_a_g _'_g___v_a_l_).

          ((**tthhrrooww 's_tag 'g_val))

               RETURNS: g_val  from the first enclosing catch with the
                        tag s_tag or with no tag at all.

               NOTE: this is used in conjunction with _*_c_a_t_c_h to  cause
                     a clean jump to an enclosing context.

          ((uunnwwiinndd--pprrootteecctt g_protected [g_cleanup1 ...]))

               RETURNS: the result of evaluating g_protected.

               NOTE: Normally  g_protected  is evaluated and its value
                     remembered, then the g_cleanup_i are evaluated and
                     finally   the   saved  value  of  g_protected  is
                     returned.  If something should happen when evalu-
                     ating  g_protected  which  causes control to pass
                     through g_protected  and thus through the call to
                     the  unwind-protect,  then  the  g_cleanup_i  will
                     still  be   evaluated.    This   is   useful   if
                     g_protected  does  something sensitive which must
                     be cleaned up whether  or  not  g_protected  com-
                     pletes.













                                             Printed: October 16, 1993



