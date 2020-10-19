






                                  CCHHAAPPTTEERR  1111


                        TThhee JJoosseepphh LLiisstteerr TTrraaccee PPaacckkaaggee




               The Joseph ListerTrace package is an important tool for
          the  interactive debugging of a Lisp program.  It allows you
          to examine selected  calls to a function or  functions,  and
          optionally  to stop execution of the Lisp program to examine
          the values of variables.

               The trace package is a set of Lisp programs located  in
          the    Lisp   program   library   (usually   in   the   file
          /usr/lib/lisp/trace.l).  Although not normally loaded in the
          Lisp  system,  the  package will be loaded in when the first
          call to _t_r_a_c_e is made.

          ((ttrraaccee [ls_arg1 ...]))

               WHERE:   the form of the ls_arg_i is described below.

               RETURNS: a list of the  function  sucessfully  modified
                        for  tracing.   If  no  arguments are given to
                        _t_r_a_c_e, a list of all functions currently being
                        traced is returned.

               SIDE EFFECT: The  function definitions of the functions
                            to trace are modified.


          The ls_arg_i can have one of the following forms:


            ffoooo - when foo is entered and exited, the  trace  informa-
                 tion will be printed.


            ((ffoooo  bbrreeaakk))  -  when  foo is entered and exited the trace
                 information will be printed.  Also,  just  after  the
                 trace  information for foo is printed upon entry, you
                 will be put in  a special break loop.  The prompt  is
                 `T>'  and  you  may type any Lisp expression, and see
                 its value printed.  The _ith argument to the  function
                 just called can be accessed as (arg _i).  To leave the
                 trace  loop,  just  type  ^D  or  (tracereturn)   and
          ____________________
             Joseph     11sstt BBaarroonn LLiisstteerr ooff LLyymmee RReeggiiss,, 11882277--11991122;; EEnn--
          gglliisshh ssuurrggeeoonn:: iinnttrroodduucceedd aannttiisseeppttiicc ssuurrggeerryy..




          TThhee JJoosseepphh LLiisstteerr TTrraaccee PPaacckkaaggee                         1111--11







          TThhee JJoosseepphh LLiisstteerr TTrraaccee PPaacckkaaggee                         1111--22


                 execution will continue.  Note that ^D will work only
                 on UNIX systems.


            ((ffoooo iiff eexxpprreessssiioonn)) - when foo is entered and the  expres-
                 sion evaluates to non-nil, then the trace information
                 will be printed for both exit and entry.  If  expres-
                 sion evaluates to nil, then no trace information will
                 be printed.


            ((ffoooo iiffnnoott eexxpprreessssiioonn)) -  when  foo  is  entered  and  the
                 expression  evaluates to nil, then the trace informa-
                 tion will be printed for both  entry  and  exit.   If
                 both  iiff and iiffnnoott are specified, then the iiff expres-
                 sion must evaluate to non nil AND the  iiffnnoott  expres-
                 sion  must  evaluate to nil for the trace information
                 to be printed out.


            ((ffoooo eevvaalliinn eexxpprreessssiioonn)) - when foo is  entered  and  after
                 the  entry  trace  information is printed, expression
                 will be evaluated.  Exit trace  information  will  be
                 printed when foo exits.


            ((ffoooo  eevvaalloouutt  eexxpprreessssiioonn))  -  when  foo is entered, entry
                 trace information will be printed.  When  foo  exits,
                 and  before  the  exit  trace information is printed,
                 expression will be evaluated.


            ((ffoooo eevvaalliinnoouutt eexxpprreessssiioonn)) - this has the same  effect  as
                 (trace (foo evalin expression evalout expression)).


            ((ffoooo  llpprriinntt))  - this tells _t_r_a_c_e to use the level printer
                 when printing the arguments to and the result  of   a
                 call  to  foo.  The level printer prints only the top
                 levels of list structure.  Any structure below  three
                 levels  is  printed as a &.  This allows you to trace
                 functions with massive arguments or results.



                    The following trace options  permit  one  to  have
               greater control over each action which takes place when
               a function is traced.  These options are only meant  to
               be used by people who need special hooks into the trace
               package.  Most people should skip reading this section.


            ((ffoooo  ttrraacceeeenntteerr  tteeffuunncc))  -  this  tells  _t_r_a_c_e  that the


                                             Printed: October 16, 1993







          TThhee JJoosseepphh LLiisstteerr TTrraaccee PPaacckkaaggee                         1111--33


                 function to be called when foo is entered is  tefunc.
                 tefunc should be a lambda of two arguments, the first
                 argument will be bound to the name  of  the  function
                 being  traced, foo in this case.  The second argument
                 will be bound to the list of arguments to  which  foo
                 should  be applied.  The function tefunc should print
                 some sort of "entering foo" message.  It  should  not
                 apply  foo  to  the arguments, however.  That is done
                 later on.


            ((ffoooo ttrraacceeeexxiitt ttxxffuunncc)) - this tells _t_r_a_c_e that  the  func-
                 tion  to  be  called  when  foo  is exited is txfunc.
                 txfunc should be a lambda of two arguments, the first
                 argument  will  be  bound to the name of the function
                 being traced, foo in this case.  The second  argument
                 will  be bound to the result of the call to foo.  The
                 function txfunc should print some  sort  of  "exiting
                 foo" message.


            ((ffoooo eevvffccnn eevvffuunncc)) - this tells _t_r_a_c_e that the form evfunc
                 should be evaluated to get the value of  foo  applied
                 to  its  arguments.   This  option is a bit different
                 from the other special options since evfunc will usu-
                 ally  be  an expression, not just the name of a func-
                 tion, and that expression will  be  specific  to  the
                 evaluation  of function foo.  The argument list to be
                 applied will be available as T-arglist.


            ((ffoooo pprriinnttaarrggss pprrffuunncc)) - this tells _t_r_a_c_e to  used  prfunc
                 to print the arguments  to be applied to the function
                 foo.  prfunc should be a lambda of one argument.  You
                 might  want  to use this option if you wanted a print
                 function which could  handle  circular  lists.   This
                 option  will work only if you do not specify your own
                 ttrraacceeeenntteerr function.  Specifying the option llpprriinntt is
                 just  a simple way of changing the printargs function
                 to the level printer.


            ((ffoooo pprriinnttrreess pprrffuunncc)) - this tells _t_r_a_c_e to use prfunc  to
                 print the result of evaluating foo.  prfunc should be
                 a lambda of one argument.  This option will work only
                 if  you  do  not specify your own ttrraacceeeexxiitt function.
                 Specifying the option llpprriinntt changes printres to  the
                 level printer.



                    You  may  specify  more  than  one option for each
               function traced.  For example:


                                             Printed: October 16, 1993







          TThhee JJoosseepphh LLiisstteerr TTrraaccee PPaacckkaaggee                         1111--44


               _(_t_r_a_c_e _(_f_o_o _i_f _(_e_q _3 _(_a_r_g _1_)_) _b_r_e_a_k _l_p_r_i_n_t_) _(_b_a_r _e_v_a_l_i_n
               _(_p_r_i_n_t _x_y_z_z_y_)_)_)

               This  tells  _t_r_a_c_e to trace two more functions, foo and
               bar.  Should foo be called with the first  argument  _e_q
               to  3,  then  the  entering foo message will be printed
               with the level printer.  Next it  will  enter  a  trace
               break  loop,  allowing you to evaluate any lisp expres-
               sions.  When you exit the trace break loop, foo will be
               applied  to  its arguments and the resulting value will
               be printed, again using the level printer.  Bar is also
               traced,  and  each time bar is entered, an entering bar
               message will be printed and then  the  value  of  xyzzy
               will be printed.  Next bar will be applied to its argu-
               ments and the result will  be  printed.   If  you  tell
               _t_r_a_c_e  to  trace a function which is already traced, it
               will first _u_n_t_r_a_c_e it.  Thus if  you  want  to  specify
               more  than one trace option for a function, you must do
               it all at once.  The following is _n_o_t equivalent to the
               preceding call to _t_r_a_c_e for foo:

               _(_t_r_a_c_e  _(_f_o_o  _i_f  _(_e_q  _3  _(_a_r_g  _1_)_)_)  _(_f_o_o  _b_r_e_a_k_) _(_f_o_o
               _l_p_r_i_n_t_)_)

               In this example, only the last option, lprint, will  be
               in effect.

                    If the symbol $tracemute is given a non nil value,
               printing of the function name and  arguments  on  entry
               and exit will be surpressed.  This is particularly use-
               ful if the function you are tracing  fails  after  many
               calls  to  it.   In  this  case you would tell _t_r_a_c_e to
               trace the function, set $tracemute to t, and begin  the
               computation.   When  an error occurs you can use _t_r_a_c_e_-
               _d_u_m_p to print out the current trace frames.

                    Generally the trace package has its  own  internal
               names  for  the the lisp functions it uses, so that you
               can feel free to trace system functions like  _c_o_n_d  and
               not worry about adverse interaction with the actions of
               the trace package.  You can trace any type of function:
               lambda,  nlambda,  lexpr  or  macro whether compiled or
               interpreted and you can  even  trace  array  references
               (however  you  should  not attempt to store in an array
               which has been traced).

                    When tracing compiled code keep in mind that  many
               function  calls are translated directly to machine lan-
               guage  or other equivalent   function  calls.   A  full
               list of open coded functions is listed at the beginning
               of  the  liszt  compiler  source.   _T_r_a_c_e  will  do   a
               _(_s_s_t_a_t_u_s _t_r_a_n_s_l_i_n_k _n_i_l_)  to  insure that the new traced
               definitions it defines are called instead  of  the  old


                                             Printed: October 16, 1993







          TThhee JJoosseepphh LLiisstteerr TTrraaccee PPaacckkaaggee                         1111--55


               untraced  ones.  You may notice that compiled code will
               run slower after this is done.

          ((ttrraacceeaarrggss s_func [x_level]))

               WHERE:   if x_level is missing it is assumed to be 1.

               RETURNS: the arguments to the x_level_t_h call to  traced
                        function s_func are returned.

          ((ttrraacceedduummpp))

               SIDE EFFECT: the  currently  active  trace  frames  are
                            printed on the terminal.  returns  a  list
                            of functions untraced.

          ((uunnttrraaccee [s_arg1 ...]))

               RETURNS: a list of the functions which were untraced.

               NOTE: if  no  arguments  are  given,  all functions are
                     untraced.

               SIDE EFFECT: the old function definitions of all traced
                            functions  are restored except in the case
                            where it appears that the current  defini-
                            tion  of  a  function  was  not created by
                            trace.



























                                             Printed: October 16, 1993



