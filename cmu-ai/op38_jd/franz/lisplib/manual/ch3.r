






                                   CCHHAAPPTTEERR  33


                              AArriitthhmmeettiicc FFuunnccttiioonnss




               This chapter describes FRANZ LISP's functions for doing
          arithmetic.  Often the same function is known by many names.
          For  example,  _a_d_d is also _p_l_u_s, and _s_u_m.  This is caused by
          our desire to be compatible with  other  Lisps.   The  FRANZ
          LISP  user should avoid using functions with names such as +
          and * unless their arguments are fixnums.  The Lisp compiler
          takes advantage of these implicit declarations.

               An  attempt  to  divide or to generate a floating point
          result outside of the range of floating point  numbers  will
          cause  a  floating  exception signal from the UNIX operating
          system.  The user can catch and process  this  interrupt  if
          desired (see the description of the _s_i_g_n_a_l function).



             33..11..  SSiimmppllee AArriitthhmmeettiicc FFuunnccttiioonnss

          ((aadddd ['n_arg1 ...]))
          ((pplluuss ['n_arg1 ...]))
          ((ssuumm ['n_arg1 ...]))
          ((++ ['x_arg1 ...]))

               RETURNS: the  sum of the arguments. If no arguments are
                        given, 0 is returned.

               NOTE: if the size of the partial sum exceeds the  limit
                     of a fixnum, the partial sum will be converted to
                     a bignum.  If any of the arguments  are  flonums,
                     the  partial  sum  will  be converted to a flonum
                     when that argument is processed  and  the  result
                     will thus be a flonum.  Currently, if in the pro-
                     cess of doing the addition a bignum must be  con-
                     verted  into  a  flonum  an  error  message  will
                     result.












          AArriitthhmmeettiicc FFuunnccttiioonnss                                     33--11







          AArriitthhmmeettiicc FFuunnccttiioonnss                                     33--22


          ((aadddd11 'n_arg))
          ((11++ 'x_arg))

               RETURNS: its argument plus 1.

          ((ddiiffff ['n_arg1 ... ]))
          ((ddiiffffeerreennccee ['n_arg1 ... ]))
          ((-- ['x_arg1 ... ]))

               RETURNS: the result of subtracting from n_arg1 all sub-
                        sequent arguments.  If no arguments are given,
                        0 is returned.

               NOTE: See the description of add for  details  on  data
                     type conversions and restrictions.

          ((ssuubb11 'n_arg))
          ((11-- 'x_arg))

               RETURNS: its argument minus 1.

          ((mmiinnuuss 'n_arg))

               RETURNS: zero minus n_arg.

          ((pprroodduucctt ['n_arg1 ... ]))
          ((ttiimmeess ['n_arg1 ... ]))
          ((** ['x_arg1 ... ]))

               RETURNS: the  product  of  all  of  its  arguments.  It
                        returns 1 if there are no arguments.

               NOTE: See the  description  of  the  function  _a_d_d  for
                     details  and  restrictions  to the automatic data
                     type coercion.

          ((qquuoottiieenntt ['n_arg1 ...]))
          ((// ['x_arg1 ...]))

               RETURNS: the result of dividing the first  argument  by
                        succeeding ones.

               NOTE: If  there  are  no arguments, 1 is returned.  See
                     the description of the function _a_d_d  for  details
                     and restrictions of data type coercion.  A divide
                     by zero will cause a floating exception interrupt
                     -- see the description of the _s_i_g_n_a_l function.








                                             Printed: October 16, 1993







          AArriitthhmmeettiicc FFuunnccttiioonnss                                     33--33


          ((**qquuoo 'i_x 'i_y))

               RETURNS: the integer part of i_x / i_y.

          ((DDiivviiddee 'i_dividend 'i_divisor))

               RETURNS: a  list  whose  car  is the quotient and whose
                        cadr is  the  remainder  of  the  division  of
                        i_dividend by i_divisor.

               NOTE: this is restricted to integer division.

          ((EEmmuullddiivv 'x_fact1 'x_fact2 'x_addn 'x_divisor))

               RETURNS: a  list  of the quotient and remainder of this
                        operation:
                        ((x_fact1 * x_fact2) + (sign extended) x_addn) / x_divisor.

               NOTE: this is useful for creating a  bignum  arithmetic
                     package in Lisp.



             33..22..  pprreeddiiccaatteess

          ((nnuummbbeerrpp 'g_arg))

          ((nnuummbbpp 'g_arg))

               RETURNS: t  iff  g_arg  is  a number (fixnum, flonum or
                        bignum).

          ((ffiixxpp 'g_arg))

               RETURNS: t iff g_arg is a fixnum or bignum.

          ((ffllooaattpp 'g_arg))

               RETURNS: t iff g_arg is a flonum.

          ((eevveennpp 'x_arg))

               RETURNS: t iff x_arg is even.












                                             Printed: October 16, 1993







          AArriitthhmmeettiicc FFuunnccttiioonnss                                     33--44


          ((ooddddpp 'x_arg))

               RETURNS: t iff x_arg is odd.

          ((zzeerroopp 'g_arg))

               RETURNS: t iff g_arg is a number equal to 0.

          ((oonneepp 'g_arg))

               RETURNS: t iff g_arg is a number equal to 1.

          ((pplluusspp 'n_arg))

               RETURNS: t iff n_arg is greater than zero.

          ((mmiinnuusspp 'g_arg))

               RETURNS: t iff g_arg is a negative number.

          ((ggrreeaatteerrpp ['n_arg1 ...]))
          ((>> 'fx_arg1 'fx_arg2))
          ((>>&& 'x_arg1 'x_arg2))

               RETURNS: t iff the arguments are in a strictly decreas-
                        ing order.

               NOTE: In  functions _g_r_e_a_t_e_r_p and _> the function _d_i_f_f_e_r_-
                     _e_n_c_e is used to compare adjacent values.  If  any
                     of  the arguments are non-numbers, the error mes-
                     sage will come from the _d_i_f_f_e_r_e_n_c_e function.  The
                     arguments  to _> must  be fixnums or both flonums.
                     The arguments to _>_& must both be fixnums.

          ((lleesssspp ['n_arg1 ...]))
          ((<< 'fx_arg1 'fx_arg2))
          ((<<&& 'x_arg1 'x_arg2))

               RETURNS: t iff the arguments are in a strictly increas-
                        ing order.

               NOTE: In  functions _l_e_s_s_p and _< the function _d_i_f_f_e_r_e_n_c_e
                     is used to compare adjacent values.   If  any  of
                     the  arguments are non numbers, the error message
                     will come  from  the  _d_i_f_f_e_r_e_n_c_e  function.   The
                     arguments  to  _< may be either fixnums or flonums
                     but must be the same type.  The arguments  to  _<_&
                     must be fixnums.







                                             Printed: October 16, 1993







          AArriitthhmmeettiicc FFuunnccttiioonnss                                     33--55


          ((== 'fx_arg1 'fx_arg2))

          ((==&& 'x_arg1 'x_arg2))

               RETURNS: t  iff the arguments have the same value.  The
                        arguments to = must be the either both fixnums
                        or  both flonums.  The arguments to =& must be
                        fixnums.



             33..33..  TTrriiggnnoommeettrriicc FFuunnccttiioonnss

                     Some of these funtcions are taken from  the  host
                math  library,  and  we take no further responsibility
                for their accuracy.

          ((ccooss 'fx_angle))

               RETURNS: the (flonum)  cosine  of  fx_angle  (which  is
                        assumed to be in radians).

          ((ssiinn 'fx_angle))

               RETURNS: the  sine  of fx_angle (which is assumed to be
                        in radians).

          ((aaccooss 'fx_arg))

               RETURNS: the (flonum) arc cosine of fx_arg in the range
                        0 to -n.

          ((aassiinn 'fx_arg))

               RETURNS: the  (flonum)  arc sine of fx_arg in the range
                        --n/2 to -n/2.

          ((aattaann 'fx_arg1 'fx_arg2))

               RETURNS: the (flonum) arc tangent of fx_arg1/fx_arg2 in
                        the range --n to -n.



             33..44..  BBiiggnnuumm//FFiixxnnuumm MMaanniippuullaattiioonn










                                             Printed: October 16, 1993







          AArriitthhmmeettiicc FFuunnccttiioonnss                                     33--66


          ((hhaaiippaarrtt bx_number x_bits))

               RETURNS: a fixnum (or bignum) which contains the x_bits
                        high bits of _(_a_b_s _b_x___n_u_m_b_e_r_) if x_bits is pos-
                        itive,  otherwise  it returns the _(_a_b_s _x___b_i_t_s_)
                        low bits of _(_a_b_s _b_x___n_u_m_b_e_r_).

          ((hhaauulloonngg bx_number))

               RETURNS: the number of significant bits in bx_number.

               NOTE: the result is equal to the least integer  greater
                     to or equal to the base two logarithm of one plus
                     the absolute value of bx_number.

          ((bbiiggnnuumm--lleeffttsshhiifftt bx_arg x_amount))

               RETURNS: bx_arg shifted left by x_amount.  If  x_amount
                        is  negative,  bx_arg will be shifted right by
                        the magnitude of x_amount.

               NOTE: If bx_arg is shifted right, it will be rounded to
                     the nearest even number.

          ((ssttiicckkyy--bbiiggnnuumm--lleeffttsshhiifftt 'bx_arg 'x_amount))

               RETURNS: bx_arg  shifted left by x_amount.  If x_amount
                        is negative, bx_arg will be shifted  right  by
                        the magnitude of x_amount and rounded.

               NOTE: sticky rounding is done this way: after shifting,
                     the low order bit is changed to 1 if any 1's were
                     shifted off to the right.



             33..55..  BBiitt MMaanniippuullaattiioonn

          ((bboooollee 'x_key 'x_v1 'x_v2 ...))

               RETURNS: the result of the bitwise boolean operation as
                        described in the following table.

               NOTE: If there are more than 3 arguments, then  evalua-
                     tion  proceeds  left  to  right with each partial
                     result becoming the new value of x_v1.  That is,
                          _(_b_o_o_l_e _'_k_e_y _'_v_1 _'_v_2 _'_v_3_) _=_= _(_b_o_o_l_e _'_k_e_y _(_b_o_o_l_e _'_k_e_y _'_v_1 _'_v_2_) _'_v_3_).
                     In the following table, * represents bitwise and,
                     + represents bitwise or, O+ represents bitwise xor
                     and  ~  represents  bitwise  negation  and is the
                     highest precedence operator.












          AArriitthhmmeettiicc FFuunnccttiioonnss                                     33--77


          +-------------------------------------------------------------------------------------------+
          |                                    (boole 'key 'x 'y)                                     |
          |                                                                                           |
          +-------------------------------------------------------------------------------------------+
          | key         0          1          2         3         4          5          6         7   |
          |result       0        x * y     ~ x * y      y      x * ~ y       x        x O+ y     x + y |
          |                                                                                           |
          |common                                                                                     |
          |names                  and                          bitclear                xor       or   |
          |                                                                                           |
          +-------------------------------------------------------------------------------------------+
          |                                                                                           |
          | key         8          9         10        11         12        13         14        15   |
          |result   ~ (x + y)   ~(x O+ y)     ~ x     ~ x + y     ~ y      x + ~ y   ~ x + ~ y    -1   |
          |common                                                                                     |
          |names       nor       equiv               implies                          nand            |
          +-------------------------------------------------------------------------------------------+

          ((llsshh 'x_val 'x_amt))

               RETURNS: x_val shifted left by x_amt if x_amt is  posi-
                        tive.   If x_amt is negative, then _l_s_h returns
                        x_val shifted right by the magnitude if x_amt.

               NOTE: This  always returns a fixnum even for those num-
                     bers whose magnitude is so large that they  would
                     normally be represented as a bignum, i.e. shifter
                     bits are lost.  For more  general  bit  shifters,
                     see _b_i_g_n_u_m_-_l_e_f_t_s_h_i_f_t and _s_t_i_c_k_y_-_b_i_g_n_u_m_-_l_e_f_t_s_h_i_f_t_.

          ((rroott 'x_val 'x_amt))

               RETURNS: x_val rotated left by x_amt if x_amt is  posi-
                        tive.   If  x_amt  is  negative, then x_val is
                        rotated right by the magnitude of x_amt.



             33..66..  OOtthheerr FFuunnccttiioonnss

                     As noted above, some of the  following  functions
                are  inherited  from  the  host math library, with all
                their virtues and vices.












                                             Printed: October 16, 1993







          AArriitthhmmeettiicc FFuunnccttiioonnss                                     33--88


          ((aabbss 'n_arg))
          ((aabbssvvaall 'n_arg))

               RETURNS: the absolute value of n_arg.

          ((eexxpp 'fx_arg))

               RETURNS: _e raised to the fx_arg power (flonum) .

          ((eexxpptt 'n_base 'n_power))

               RETURNS: n_base raised to the n_power power.

               NOTE: if either of the arguments are flonums, the  cal-
                     culation will be done using _l_o_g and _e_x_p.

          ((ffaacctt 'x_arg))

               RETURNS: x_arg factorial. (fixnum or bignum)

          ((ffiixx 'n_arg))

               RETURNS: a fixnum as close as we can get to n_arg.

               NOTE: _f_i_x  will  round  down.  Currently, if n_arg is a
                     flonum larger than the size  of  a  fixnum,  this
                     will fail.

          ((ffllooaatt 'n_arg))

               RETURNS: a flonum as close as we can get to n_arg.

               NOTE: if n_arg is a bignum larger than the maximum size
                     of a  flonum,  then  a  floating  exception  will
                     occur.

          ((lloogg 'fx_arg))

               RETURNS: the natural logarithm of fx_arg.

          ((mmaaxx 'n_arg1 ... ))

               RETURNS: the maximum value in the list of arguments.












                                             Printed: October 16, 1993







          AArriitthhmmeettiicc FFuunnccttiioonnss                                     33--99


          ((mmiinn 'n_arg1 ... ))

               RETURNS: the minimum value in the list of arguments.

          ((mmoodd 'i_dividend 'i_divisor))
          ((rreemmaaiinnddeerr 'i_dividend 'i_divisor))

               RETURNS: the  remainder  when  i_dividend is divided by
                        i_divisor.

               NOTE: The sign of the result will have the same sign as
                     i_dividend.

          ((**mmoodd 'x_dividend 'x_divisor))

               RETURNS: the balanced representation of x_dividend mod-
                        ulo x_divisor.

               NOTE: the  range  of  the  balanced  representation  is
                     abs(x_divisor)/2    to    (abs(x_divisor)/2)    -
                     x_divisor + 1.

          ((rraannddoomm ['x_limit]))

               RETURNS: a fixnum between 0 and x_limit - 1 if  x_limit
                        is  given.   If  x_limit  is  not  given,  any
                        fixnum,  positive  or   negative,   might   be
                        returned.

          ((ssqqrrtt 'fx_arg))

               RETURNS: the square root of fx_arg.























                                             Printed: October 16, 1993



