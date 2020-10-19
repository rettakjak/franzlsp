lint -I../h *.c ../*.c \
	-lsunwindow -lpixrect  -ltermcap /lib/Mcrt1.o -lm -lc 
68k.c:
68k.c(10): warning: err may be used before set
68k.c(259): warning: OLDnp unused in function LIshowstack
68k.c(259): warning: OLDlbot unused in function LIshowstack
68k.c(313): warning: pb unused in function dothunk
adbig.c:
adbig.c(36): warning: illegal pointer combination
adbig.c(41): warning: illegal pointer combination
adbig.c(44): warning: illegal pointer combination
adbig.c(47): warning: illegal pointer combination
adbig.c(47): warning: illegal pointer combination
adbig.c(47): warning: illegal pointer combination
adbig.c(47): warning: illegal pointer combination
calqhat.c:
dodiv.c:
dsmult.c:
exarith.c:
first8.c:
first8.c(32): warning: hexnum unused in function main
first8.c(41): warning: counting unused in function main
first8.c(47): warning: squelch unused in function main
fixbits.c:
inewint.c:
mlsb.c:
mulbig.c:
mulbig.c(37): warning: illegal pointer combination
mulbig.c(44): warning: illegal pointer combination
mulbig.c(47): warning: illegal pointer combination
mulbig.c(47): warning: illegal pointer combination
mulbig.c(48): warning: illegal pointer combination
mulbig.c(48): warning: illegal pointer combination
nargs.c:
nosuncore.c:
suncore.c:
test.c:
../alloc.c:
../alloc.c(1168): warning: argument useholeflag unused in function csegment
../alloc.c(1567): warning: c unused in function inewatom
../data.c:
../divbig.c:
../divbig.c(79): warning: illegal pointer combination
../divbig.c(85): warning: illegal pointer combination
../divbig.c(22): warning: vip unused in function divbig
../divbig.c(23): warning: carry unused in function divbig
../divbig.c(90): warning: borrow set but not used in function divbig
../divbig.c(80): warning: d1 unused in function divbig
../divbig.c(85): warning: d2 unused in function divbig
../divbig.c(87): warning: d3 unused in function divbig
../divbig.c(89): warning: d4 unused in function divbig
../divbig.c(96): warning: d8 unused in function divbig
../divbig.c(234): warning: dum1 unused in function Lhau
../divbig.c(234): warning: dum2 unused in function Lhau
../divbig.c(261): warning: illegal pointer combination
../divbig.c(282): warning: illegal pointer combination
../divbig.c(331): warning: illegal pointer combination
../divbig.c(364): warning: illegal pointer combination
../divbig.c(333): warning: mylen unused in function Ibiglsh
../divbig.c(431): warning: mylbot unused in function Lsbiglsh
../divbig.c(438): warning: mylbot unused in function Lbiglsh
../divbig.c(446): warning: mylbot unused in function HackHex
../error.c:
../error.c(74): warning: pb unused in function Ierrorh
../eval.c:
../eval.c(59): warning: pb unused in function eval
../eval.c(547): warning: pb unused in function Ifuncal
../eval2.c:
../eval2.c(162): warning: illegal pointer combination
../eval2.c(196): warning: illegal pointer combination
../eval2.c(73): warning: pb unused in function Ifcall
../eval2.c(227): warning: pb unused in function ftolsp_
../eval2.c(242): warning: function ftolsp_ has return(e); and return;
../eval2.c(251): warning: pb unused in function ftlspn_
../eval2.c(342): warning: vect unused in function Ifclosure
../eval2.c(353): warning: numvars set but not used in function Ifclosure
../eval2.c(498): warning: oldbnp unused in function LIfss
../eval2.c(502): warning: OLDlbot unused in function LIfss
../eval2.c(502): warning: OLDnp unused in function LIfss
../evalf.c:
../fasl.c:
../fasl.c(621): warning: questionable conversion of function pointer
../fex1.c:
../fex1.c(29): warning: pb unused in function Nprog
../fex1.c(116): warning: pb unused in function Ncatch
../fex1.c(154): warning: pb unused in function Nerrset
../fex2.c:
../fex2.c(32): warning: pb unused in function Ndo
../fex3.c:
../fex4.c:
../fexr.c:
../ffasl.c:
../ffasl.c(22): static variable mypid unused
../fpipe.c:
../fpipe.c(121): warning: illegal pointer combination
../frame.c:
../inits.c:
../inits.c(160): warning: pb unused in function sigcall
../inits.c(205): warning: argument handler unused in function re_enable
../io.c:
../lam1.c:
../lam1.c(428): warning: function Lclose has return(e); and return;
../lam2.c:
../lam2.c(302): warning: illegal pointer combination
../lam2.c(306): warning: illegal pointer combination
../lam3.c:
../lam4.c:
../lam5.c:
../lam5.c(145): warning: illegal pointer combination
../lam6.c:
../lam6.c(31): warning: pb unused in function Lreadli
../lam7.c:
../lam7.c(194): warning: illegal pointer combination
../lam7.c(201): warning: illegal pointer combination
../lam8.c:
../lam8.c(1211): warning: typ unused in function LIvsize
../lam8.c(1298): warning: vv unused in function veciequal
../lam8.c(1298): warning: ww unused in function veciequal
../lam9.c:
../lam9.c(178): syntax error at or near symbol (
../lam9.c(178): function declaration in bad context
../lam9.c(178): function returns illegal type
../lam9.c(178): redeclaration of Inewint
../lam9.c(178): syntax error at or near symbol )
../lamgc.c:
../lamp.c:
../lamr.c:
../lamr.c(226): warning: questionable conversion of function pointer
../lamr.c(309): warning: questionable conversion of function pointer
../lisp.c:
../lisp.c(35): warning: pb unused in function main
../low.c:
../low.c(17): static variable pagealign unused
../low.c(25): static variable padding unused
../pbignum.c:
../pbignum.c(38): warning: illegal pointer combination
../pbignum.c(45): warning: illegal pointer combination
../pbignum.c(54): warning: illegal pointer combination
../rlc.c:
../rlc.c(28): HOLE undefined
../rlc.c(28): warning: HOLE may be used before set
../subbig.c:
../sysat.c:
../trace.c:
Lint pass2:
link value declared inconsistently	llib-lc(103)  ::  qfuncl.c(93)
hookupcore multiply declared	nosuncore.c(16)  ::  suncore.c(452)
main multiply declared	first8.c(25)  ::  test.c(1)
main multiply declared	first8.c(25)  ::  ../lisp.c(30)
ediv, arg. 3 used inconsistently	68k.c(10)  ::  68k.c(32)
errorh2, arg. 6 used inconsistently	../error.c(305)  ::  68k.c(105)
alloca value used inconsistently	68k.c(102)  ::  adbig.c(32)
export value used inconsistently	../divbig.c(188)  ::  adbig.c(55)
export value declared inconsistently	../divbig.c(188)  ::  adbig.c(55)
ediv, arg. 1 used inconsistently	68k.c(10)  ::  calqhat.c(25)
ediv, arg. 3 used inconsistently	68k.c(10)  ::  calqhat.c(25)
emul, arg. 1 used inconsistently	68k.c(9)  ::  calqhat.c(31)
emul, arg. 3 used inconsistently	68k.c(9)  ::  calqhat.c(31)
emul, arg. 4 used inconsistently	68k.c(9)  ::  calqhat.c(31)
emul, arg. 1 used inconsistently	68k.c(9)  ::  dodiv.c(16)
emul, arg. 4 used inconsistently	68k.c(9)  ::  dodiv.c(16)
ediv, arg. 1 used inconsistently	68k.c(10)  ::  dodiv.c(17)
ediv, arg. 2 used inconsistently	68k.c(10)  ::  dodiv.c(17)
ediv, arg. 3 used inconsistently	68k.c(10)  ::  dodiv.c(17)
emul, arg. 4 used inconsistently	68k.c(9)  ::  dsmult.c(21)
emul, arg. 1 used inconsistently	68k.c(9)  ::  exarith.c(19)
emul, arg. 2 used inconsistently	68k.c(9)  ::  exarith.c(19)
emul, arg. 4 used inconsistently	68k.c(9)  ::  exarith.c(19)
doit, arg. 2 used inconsistently	first8.c(21)  ::  first8.c(15)
doit, arg. 2 used inconsistently	first8.c(21)  ::  first8.c(16)
doit, arg. 2 used inconsistently	first8.c(21)  ::  first8.c(17)
index value used inconsistently	llib-lc(361)  ::  first8.c(37)
index value declared inconsistently	llib-lc(361)  ::  first8.c(37)
newint value used inconsistently	../alloc.c(303)  ::  inewint.c(9)
Fixzero value declared inconsistently	../low.c(165)  ::  inewint.c(8)
newint value declared inconsistently	../alloc.c(303)  ::  inewint.c(9)
emul, arg. 1 used inconsistently	68k.c(9)  ::  mlsb.c(13)
emul, arg. 4 used inconsistently	68k.c(9)  ::  mlsb.c(13)
ediv, arg. 1 used inconsistently	68k.c(10)  ::  mlsb.c(54)
ediv, arg. 3 used inconsistently	68k.c(10)  ::  mlsb.c(54)
alloca value used inconsistently	68k.c(102)  ::  mulbig.c(33)
emul, arg. 1 used inconsistently	68k.c(9)  ::  mulbig.c(51)
emul, arg. 2 used inconsistently	68k.c(9)  ::  mulbig.c(51)
emul, arg. 4 used inconsistently	68k.c(9)  ::  mulbig.c(51)
export value used inconsistently	../divbig.c(188)  ::  mulbig.c(59)
export value declared inconsistently	../divbig.c(188)  ::  mulbig.c(59)
mftab, arg. 1 used inconsistently	../sysat.c(502)  ::  suncore.c(452)
text value declared inconsistently	qfuncl.c(63)  ::  suncore.c(311)
mftab value declared inconsistently	../sysat.c(502)  ::  suncore.c(452)
blzero, arg. 1 used inconsistently	inewint.c(15)  ::  ../alloc.c(810)
blzero, arg. 1 used inconsistently	inewint.c(15)  ::  ../alloc.c(812)
fixbits, arg. 1 used inconsistently	fixbits.c(4)  ::  ../alloc.c(887)
fixbits, arg. 2 used inconsistently	fixbits.c(4)  ::  ../alloc.c(887)
blzero, arg. 1 used inconsistently	inewint.c(15)  ::  ../alloc.c(1205)
blzero, arg. 1 used inconsistently	inewint.c(15)  ::  ../alloc.c(1209)
atomtoolong value declared inconsistently	../io.c(683)  ::  ../alloc.c(406)
dsmult, arg. 3 used inconsistently	dsmult.c(15)  ::  ../divbig.c(37)
dsmult, arg. 3 used inconsistently	dsmult.c(15)  ::  ../divbig.c(51)
dsdiv value used inconsistently	mlsb.c(44)  ::  ../divbig.c(59)
dsmult, arg. 3 used inconsistently	dsmult.c(15)  ::  ../divbig.c(63)
alloca value used inconsistently	68k.c(102)  ::  ../divbig.c(79)
dsmult, arg. 3 used inconsistently	dsmult.c(15)  ::  ../divbig.c(82)
dsmult, arg. 3 used inconsistently	dsmult.c(15)  ::  ../divbig.c(83)
calqhat, arg. 1 used inconsistently	calqhat.c(5)  ::  ../divbig.c(88)
mlsb, arg. 1 used inconsistently	mlsb.c(8)  ::  ../divbig.c(90)
mlsb, arg. 2 used inconsistently	mlsb.c(8)  ::  ../divbig.c(90)
mlsb value used inconsistently	mlsb.c(8)  ::  ../divbig.c(90)
adback, arg. 1 used inconsistently	mlsb.c(26)  ::  ../divbig.c(91)
adback, arg. 2 used inconsistently	mlsb.c(26)  ::  ../divbig.c(91)
dsdiv, arg. 3 used inconsistently	mlsb.c(44)  ::  ../divbig.c(97)
dsmult, arg. 3 used inconsistently	dsmult.c(15)  ::  ../divbig.c(98)
dsmult, arg. 3 used inconsistently	dsmult.c(15)  ::  ../divbig.c(103)
Ihau, arg. 1 used inconsistently	../divbig.c(219)  ::  ../divbig.c(241)
stack, arg. 1 used inconsistently	../divbig.c(31)  ::  ../divbig.c(271)
dsmult, arg. 1 used inconsistently	dsmult.c(15)  ::  ../divbig.c(285)
dsmult, arg. 2 used inconsistently	dsmult.c(15)  ::  ../divbig.c(285)
dsmult, arg. 3 used inconsistently	dsmult.c(15)  ::  ../divbig.c(285)
dsdiv, arg. 1 used inconsistently	mlsb.c(44)  ::  ../divbig.c(309)
dsdiv, arg. 2 used inconsistently	mlsb.c(44)  ::  ../divbig.c(309)
dsdiv, arg. 3 used inconsistently	mlsb.c(44)  ::  ../divbig.c(309)
export, arg. 1 used inconsistently	../divbig.c(188)  ::  ../divbig.c(321)
export, arg. 2 used inconsistently	../divbig.c(188)  ::  ../divbig.c(321)
stack, arg. 1 used inconsistently	../divbig.c(31)  ::  ../divbig.c(353)
dsmult, arg. 1 used inconsistently	dsmult.c(15)  ::  ../divbig.c(368)
dsmult, arg. 2 used inconsistently	dsmult.c(15)  ::  ../divbig.c(368)
dsmult, arg. 3 used inconsistently	dsmult.c(15)  ::  ../divbig.c(368)
dsrsh, arg. 1 used inconsistently	mlsb.c(80)  ::  ../divbig.c(388)
dsrsh, arg. 2 used inconsistently	mlsb.c(80)  ::  ../divbig.c(388)
dsrsh, arg. 3 used inconsistently	mlsb.c(80)  ::  ../divbig.c(388)
dsrsh, arg. 4 used inconsistently	mlsb.c(80)  ::  ../divbig.c(388)
dsrsh value used inconsistently	mlsb.c(80)  ::  ../divbig.c(388)
dsadd1, arg. 1 used inconsistently	mlsb.c(61)  ::  ../divbig.c(393)
dsadd1, arg. 2 used inconsistently	mlsb.c(61)  ::  ../divbig.c(393)
dsadd1, arg. 1 used inconsistently	mlsb.c(61)  ::  ../divbig.c(405)
dsadd1, arg. 2 used inconsistently	mlsb.c(61)  ::  ../divbig.c(405)
export, arg. 1 used inconsistently	../divbig.c(188)  ::  ../divbig.c(409)
export, arg. 2 used inconsistently	../divbig.c(188)  ::  ../divbig.c(409)
dsrsh value declared inconsistently	mlsb.c(80)  ::  ../divbig.c(388)
sprintf value declared inconsistently	llib-lc(566)  ::  ../divbig.c(448)
sp value declared inconsistently	qfuncl.c(74)  ::  ../divbig.c(364)
dsdiv value declared inconsistently	mlsb.c(44)  ::  ../divbig.c(309)
mlsb value declared inconsistently	mlsb.c(8)  ::  ../divbig.c(90)
adback value declared inconsistently	mlsb.c(26)  ::  ../divbig.c(91)
Ifuncal value declared inconsistently	../eval.c(513)  ::  ../error.c(431)
nargs: variable # of args.	nargs.c(10)  ::  ../eval2.c(45)
nargs: variable # of args.	nargs.c(10)  ::  ../eval2.c(47)
xbcopy, arg. 1 used inconsistently	../eval2.c(216)  ::  ../eval2.c(161)
xbcopy, arg. 2 used inconsistently	../eval2.c(216)  ::  ../eval2.c(161)
xbcopy, arg. 1 used inconsistently	../eval2.c(216)  ::  ../eval2.c(200)
xbcopy, arg. 2 used inconsistently	../eval2.c(216)  ::  ../eval2.c(200)
nargs: variable # of args.	nargs.c(10)  ::  ../eval2.c(230)
sp value declared inconsistently	qfuncl.c(74)  ::  ../eval2.c(99)
alloca, arg. 1 used inconsistently	68k.c(102)  ::  ../fasl.c(325)
read, arg. 3 used inconsistently	llib-lc(135)  ::  ../fasl.c(326)
qsort, arg. 1 used inconsistently	llib-lc(420)  ::  ../fasl.c(372)
alloca, arg. 1 used inconsistently	68k.c(102)  ::  ../fasl.c(455)
read, arg. 3 used inconsistently	llib-lc(135)  ::  ../fasl.c(456)
strncat value declared inconsistently	llib-lc(476)  ::  ../fasl.c(261)
write, arg. 3 used inconsistently	llib-lc(197)  ::  ../fex3.c(168)
errorh1, arg. 6 used inconsistently	../error.c(293)  ::  ../fex3.c(614)
strncpy value declared inconsistently	llib-lc(478)  ::  ../fex3.c(612)
etext value declared inconsistently	llib-lc(278)  ::  ../fex3.c(93)
callg_, arg. 1 used inconsistently	../eval2.c(178)  ::  ../fex4.c(75)
callg_ value used inconsistently	../eval2.c(178)  ::  ../fex4.c(75)
time value used inconsistently	llib-lc(498)  ::  ../fex4.c(232)
ctime, arg. 1 used inconsistently	llib-lc(235)  ::  ../fex4.c(233)
time value used inconsistently	llib-lc(498)  ::  ../fex4.c(238)
localtime, arg. 1 used inconsistently	llib-lc(380)  ::  ../fex4.c(239)
signal, arg. 2 used inconsistently	llib-lc(172)  ::  ../fex4.c(327)
time value declared inconsistently	llib-lc(498)  ::  ../fex4.c(238)
errorh1, arg. 6 used inconsistently	../error.c(293)  ::  ../ffasl.c(459)
errorh1, arg. 6 used inconsistently	../error.c(293)  ::  ../ffasl.c(526)
strncpy value declared inconsistently	llib-lc(478)  ::  ../ffasl.c(432)
signal, arg. 2 used inconsistently	llib-lc(172)  ::  ../inits.c(39)
signal, arg. 2 used inconsistently	llib-lc(172)  ::  ../inits.c(41)
signal, arg. 2 used inconsistently	llib-lc(172)  ::  ../inits.c(42)
signal, arg. 2 used inconsistently	llib-lc(172)  ::  ../inits.c(43)
signal, arg. 2 used inconsistently	llib-lc(172)  ::  ../inits.c(44)
signal, arg. 2 used inconsistently	llib-lc(172)  ::  ../inits.c(139)
signal, arg. 2 used inconsistently	llib-lc(172)  ::  ../inits.c(197)
Nioreset value declared inconsistently	../fpipe.c(50)  ::  ../inits.c(56)
putc, arg. 1 used inconsistently	llib-lc(555)  ::  ../io.c(919)
putc, arg. 1 used inconsistently	llib-lc(555)  ::  ../io.c(930)
putc, arg. 1 used inconsistently	llib-lc(555)  ::  ../io.c(933)
putc, arg. 1 used inconsistently	llib-lc(555)  ::  ../io.c(937)
putc, arg. 1 used inconsistently	llib-lc(555)  ::  ../io.c(941)
stack, arg. 1 used inconsistently	../divbig.c(31)  ::  ../lam1.c(655)
stack, arg. 1 used inconsistently	../divbig.c(31)  ::  ../lam1.c(655)
stack, arg. 1 used inconsistently	../divbig.c(31)  ::  ../lam1.c(670)
stack, arg. 1 used inconsistently	../divbig.c(31)  ::  ../lam1.c(670)
stack, arg. 1 used inconsistently	../divbig.c(31)  ::  ../lam1.c(782)
stack, arg. 1 used inconsistently	../divbig.c(31)  ::  ../lam1.c(782)
stack, arg. 1 used inconsistently	../divbig.c(31)  ::  ../lam1.c(798)
stack, arg. 1 used inconsistently	../divbig.c(31)  ::  ../lam1.c(798)
sp value declared inconsistently	qfuncl.c(74)  ::  ../lam1.c(784)
exarith, arg. 1 used inconsistently	exarith.c(15)  ::  ../lam4.c(44)
exarith, arg. 2 used inconsistently	exarith.c(15)  ::  ../lam4.c(44)
exarith value used inconsistently	exarith.c(15)  ::  ../lam4.c(44)
adbig, arg. 1 used inconsistently	adbig.c(15)  ::  ../lam4.c(64)
adbig, arg. 2 used inconsistently	adbig.c(15)  ::  ../lam4.c(64)
adbig value used inconsistently	adbig.c(15)  ::  ../lam4.c(64)
adbig, arg. 1 used inconsistently	adbig.c(15)  ::  ../lam4.c(67)
adbig, arg. 2 used inconsistently	adbig.c(15)  ::  ../lam4.c(67)
adbig value used inconsistently	adbig.c(15)  ::  ../lam4.c(67)
adbig, arg. 1 used inconsistently	adbig.c(15)  ::  ../lam4.c(92)
adbig, arg. 2 used inconsistently	adbig.c(15)  ::  ../lam4.c(92)
adbig value used inconsistently	adbig.c(15)  ::  ../lam4.c(92)
adbig, arg. 1 used inconsistently	adbig.c(15)  ::  ../lam4.c(129)
adbig, arg. 2 used inconsistently	adbig.c(15)  ::  ../lam4.c(129)
adbig value used inconsistently	adbig.c(15)  ::  ../lam4.c(129)
adbig, arg. 1 used inconsistently	adbig.c(15)  ::  ../lam4.c(204)
adbig, arg. 2 used inconsistently	adbig.c(15)  ::  ../lam4.c(204)
adbig value used inconsistently	adbig.c(15)  ::  ../lam4.c(204)
exarith, arg. 1 used inconsistently	exarith.c(15)  ::  ../lam4.c(247)
exarith, arg. 2 used inconsistently	exarith.c(15)  ::  ../lam4.c(247)
exarith value used inconsistently	exarith.c(15)  ::  ../lam4.c(247)
adbig, arg. 1 used inconsistently	adbig.c(15)  ::  ../lam4.c(312)
adbig, arg. 2 used inconsistently	adbig.c(15)  ::  ../lam4.c(312)
adbig value used inconsistently	adbig.c(15)  ::  ../lam4.c(312)
adbig, arg. 1 used inconsistently	adbig.c(15)  ::  ../lam4.c(353)
adbig, arg. 2 used inconsistently	adbig.c(15)  ::  ../lam4.c(353)
adbig value used inconsistently	adbig.c(15)  ::  ../lam4.c(353)
exarith, arg. 1 used inconsistently	exarith.c(15)  ::  ../lam4.c(392)
exarith, arg. 2 used inconsistently	exarith.c(15)  ::  ../lam4.c(392)
exarith value used inconsistently	exarith.c(15)  ::  ../lam4.c(392)
mulbig, arg. 1 used inconsistently	mulbig.c(16)  ::  ../lam4.c(412)
mulbig, arg. 2 used inconsistently	mulbig.c(16)  ::  ../lam4.c(412)
mulbig value used inconsistently	mulbig.c(16)  ::  ../lam4.c(412)
mulbig, arg. 1 used inconsistently	mulbig.c(16)  ::  ../lam4.c(415)
mulbig, arg. 2 used inconsistently	mulbig.c(16)  ::  ../lam4.c(415)
mulbig value used inconsistently	mulbig.c(16)  ::  ../lam4.c(415)
adbig, arg. 1 used inconsistently	adbig.c(15)  ::  ../lam4.c(440)
adbig, arg. 2 used inconsistently	adbig.c(15)  ::  ../lam4.c(440)
adbig value used inconsistently	adbig.c(15)  ::  ../lam4.c(440)
adbig, arg. 1 used inconsistently	adbig.c(15)  ::  ../lam4.c(473)
adbig, arg. 2 used inconsistently	adbig.c(15)  ::  ../lam4.c(473)
adbig value used inconsistently	adbig.c(15)  ::  ../lam4.c(473)
adbig, arg. 1 used inconsistently	adbig.c(15)  ::  ../lam4.c(518)
adbig, arg. 2 used inconsistently	adbig.c(15)  ::  ../lam4.c(518)
adbig value used inconsistently	adbig.c(15)  ::  ../lam4.c(518)
errorh2: variable # of args.	../error.c(305)  ::  ../lam4.c(764)
errorh2, arg. 5 used inconsistently	../error.c(305)  ::  ../lam4.c(764)
adbig value declared inconsistently	adbig.c(15)  ::  ../lam4.c(518)
mulbig value declared inconsistently	mulbig.c(16)  ::  ../lam4.c(415)
exarith value declared inconsistently	exarith.c(15)  ::  ../lam4.c(392)
myfrexp: variable # of args.	68k.c(140)  ::  ../lam5.c(424)
Imuldiv, arg. 5 used inconsistently	68k.c(28)  ::  ../lam5.c(572)
Imuldiv, arg. 6 used inconsistently	68k.c(28)  ::  ../lam5.c(572)
signal, arg. 2 used inconsistently	llib-lc(172)  ::  ../lam6.c(207)
wait, arg. 1 used inconsistently	llib-lc(195)  ::  ../lam7.c(38)
getenv value used inconsistently	llib-lc(312)  ::  ../lam7.c(212)
wait, arg. 1 used inconsistently	llib-lc(195)  ::  ../lam7.c(235)
signal, arg. 2 used inconsistently	llib-lc(172)  ::  ../lam7.c(237)
signal, arg. 2 used inconsistently	llib-lc(172)  ::  ../lam7.c(257)
errorh: variable # of args.	../error.c(282)  ::  ../lam7.c(628)
ctime value used inconsistently	llib-lc(235)  ::  ../lam7.c(635)
time value declared inconsistently	llib-lc(498)  ::  ../lam7.c(623)
ctime value declared inconsistently	llib-lc(235)  ::  ../lam7.c(635)
strncpy value declared inconsistently	llib-lc(478)  ::  ../lam7.c(436)
getenv value declared inconsistently	llib-lc(312)  ::  ../lam7.c(212)
stack, arg. 1 used inconsistently	../divbig.c(31)  ::  ../lam8.c(681)
stack, arg. 1 used inconsistently	../divbig.c(31)  ::  ../lam8.c(686)
stack, arg. 1 used inconsistently	../divbig.c(31)  ::  ../lam8.c(695)
stack, arg. 1 used inconsistently	../divbig.c(31)  ::  ../lam8.c(699)
index value used inconsistently	llib-lc(361)  ::  ../lam8.c(862)
index value declared inconsistently	llib-lc(361)  ::  ../lam8.c(862)
strncpy value declared inconsistently	llib-lc(478)  ::  ../lam8.c(768)
getpwnam, arg. 1 used inconsistently	llib-lc(339)  ::  ../lam9.c(181)
access, arg. 1 used inconsistently	llib-lc(52)  ::  ../lam9.c(200)
access, arg. 2 used inconsistently	llib-lc(52)  ::  ../lam9.c(200)
chdir, arg. 1 used inconsistently	llib-lc(57)  ::  ../lam9.c(203)
unlink, arg. 1 used inconsistently	llib-lc(191)  ::  ../lam9.c(207)
time, arg. 1 used inconsistently	llib-lc(498)  ::  ../lam9.c(210)
time value used inconsistently	llib-lc(498)  ::  ../lam9.c(210)
chmod, arg. 1 used inconsistently	llib-lc(58)  ::  ../lam9.c(215)
chmod, arg. 2 used inconsistently	llib-lc(58)  ::  ../lam9.c(215)
stat, arg. 1 used inconsistently	llib-lc(180)  ::  ../lam9.c(227)
link, arg. 1 used inconsistently	llib-lc(103)  ::  ../lam9.c(260)
link, arg. 2 used inconsistently	llib-lc(103)  ::  ../lam9.c(260)
sleep, arg. 1 used inconsistently	llib-lc(464)  ::  ../lam9.c(264)
nice, arg. 1 used inconsistently	llib-lc(397)  ::  ../lam9.c(267)
time value declared inconsistently	llib-lc(498)  ::  ../lam9.c(210)
dodiv value used inconsistently	dodiv.c(8)  ::  ../pbignum.c(46)
dsneg value declared inconsistently	dodiv.c(25)  ::  ../pbignum.c(41)
dodiv value declared inconsistently	dodiv.c(8)  ::  ../pbignum.c(46)
sp value declared inconsistently	qfuncl.c(74)  ::  ../pbignum.c(30)
end value declared inconsistently	llib-lc(278)  ::  ../rlc.c(29)
stack, arg. 1 used inconsistently	../divbig.c(31)  ::  ../subbig.c(35)
stack, arg. 1 used inconsistently	../divbig.c(31)  ::  ../subbig.c(36)
adbig, arg. 1 used inconsistently	adbig.c(15)  ::  ../subbig.c(39)
adbig, arg. 2 used inconsistently	adbig.c(15)  ::  ../subbig.c(39)
adbig value used inconsistently	adbig.c(15)  ::  ../subbig.c(39)
adbig value declared inconsistently	adbig.c(15)  ::  ../subbig.c(39)
sp value declared inconsistently	qfuncl.c(74)  ::  ../subbig.c(30)
Lmonitor value declared inconsistently	../lamp.c(56)  ::  ../sysat.c(597)
strncat value declared inconsistently	llib-lc(476)  ::  ../sysat.c(461)
Nopval defined( ../fexr.c(34) ), but never used
mypid defined( ../ffasl.c(22) ), but never used
unlink returns value which is sometimes ignored
write returns value which is sometimes ignored
fpipe returns value which is always ignored
Nioreset returns value which is always ignored
Lframedump defined( ../frame.c(258) ), but never used
delayoff defined( ../inits.c(180) ), but never used
Leval defined( ../lam1.c(20) ), but never used
Lxcar defined( ../lam1.c(30) ), but never used
Lxcdr defined( ../lam1.c(49) ), but never used
oLequal defined( ../lam1.c(718) ), but never used
Zequal defined( ../lam1.c(771) ), but never used
okport defined( ../lam1.c(967) ), but never used
Iputprop returns value which is sometimes ignored
errorh2 returns value which is sometimes ignored
error returns value which is sometimes ignored
68k.c(172):isho returns value which is sometimes ignored
Ldiff defined( ../lam3.c(159) ), but never used
dothunk defined( 68k.c(310) ), but never used
Lfuncal returns value which is sometimes ignored
eval returns value which is sometimes ignored
thcpy used( 68k.c(357) ), but not defined
gtty returns value which is sometimes ignored
Ifuncal returns value which is sometimes ignored
Lbreak defined( ../lam5.c(502) ), but never used
Lctcherr value is used, but none returned
inewint defined( inewint.c(5) ), but never used
adback returns value which is always ignored
dsdiv returns value which is sometimes ignored
x defined( nargs.c(6) ), but never used
y defined( nargs.c(7) ), but never used
just defined( qfuncl.c(73) ), but never used
Lpipe defined( ../lam7.c(51) ), but never used
a4 defined( qfuncl.c(77) ), but never used
a5 defined( qfuncl.c(79) ), but never used
Lfdopen defined( ../lam7.c(72) ), but never used
a0 defined( qfuncl.c(81) ), but never used
d7 defined( qfuncl.c(82) ), but never used
jeq defined( qfuncl.c(83) ), but never used
it defined( qfuncl.c(85) ), but never used
d0 defined( qfuncl.c(86) ), but never used
d1 defined( qfuncl.c(89) ), but never used
a3 defined( qfuncl.c(91) ), but never used
bcd defined( qfuncl.c(98) ), but never used
call defined( qfuncl.c(98) ), but never used
let defined( qfuncl.c(115) ), but never used
a2 defined( qfuncl.c(116) ), but never used
_np defined( qfuncl.c(118) ), but never used
d2 defined( qfuncl.c(190) ), but never used
allocate defined( qfuncl.c(201) ), but never used
a1 defined( qfuncl.c(202) ), but never used
_int_str defined( qfuncl.c(203) ), but never used
_lbot defined( qfuncl.c(211) ), but never used
_doub_str defined( qfuncl.c(255) ), but never used
Lprname defined( ../lam7.c(409) ), but never used
_dtpr_str defined( qfuncl.c(286) ), but never used
_bnp defined( qfuncl.c(341) ), but never used
put defined( qfuncl.c(370) ), but never used
then defined( qfuncl.c(426) ), but never used
_sdot_str defined( qfuncl.c(448) ), but never used
prune defined( qfuncl.c(450) ), but never used
leave defined( qfuncl.c(469) ), but never used
zeroq defined( ../alloc.c(74) ), but never used
bbitmap defined( ../alloc.c(75) ), but never used
qbitmap defined( ../alloc.c(76) ), but never used
bitmsk defined( ../alloc.c(88) ), but never used
gc returns value which is sometimes ignored
bndchk defined( ../lam8.c(610) ), but never used
copval returns value which is sometimes ignored
atomtoolong returns value which is sometimes ignored
pnewval defined( ../alloc.c(458) ), but never used
pnewvec defined( ../alloc.c(512) ), but never used
sleep value is used, but none returned
pnveci defined( ../alloc.c(524) ), but never used
errorh returns value which is sometimes ignored
strcat returns value which is always ignored
printall defined( ../alloc.c(713) ), but never used
strcpy returns value which is always ignored
strncat returns value which is always ignored
strncpy returns value which is always ignored
gethspace defined( ../alloc.c(1235) ), but never used
mrkdpcnt defined( ../lamgc.c(31) ), but never used
conssame defined( ../lamgc.c(33) ), but never used
stty returns value which is always ignored
markit defined( ../alloc.c(1280) ), but never used
consdiff defined( ../lamgc.c(34) ), but never used
consnil defined( ../lamgc.c(35) ), but never used
Lgcstat defined( ../lamgc.c(48) ), but never used
bitmapc defined( ../lamgc.c(90) ), but never used
gcdump defined( ../lamgc.c(94) ), but never used
pbuf defined( ../lamp.c(48) ), but never used
myhook defined( ../alloc.c(1621) ), but never used
time returns value which is sometimes ignored
times returns value which is always ignored
Lgetlang defined( ../lamr.c(231) ), but never used
Lputlang defined( ../lamr.c(240) ), but never used
Lgetparams defined( ../lamr.c(250) ), but never used
Lputparams defined( ../lamr.c(259) ), but never used
$ defined( /lib/Mcrt1.o(1) ), but never used
Lgetloc defined( ../lamr.c(286) ), but never used
fclose returns value which is always ignored
Lputloc defined( ../lamr.c(295) ), but never used
fflush returns value which is always ignored
CNTTYP defined( ../lamr.c(370) ), but never used
Lod defined( ../lamr.c(374) ), but never used
fprintf returns value which is always ignored
fputc returns value which is always ignored
fread returns value which is always ignored
holend used( ../alloc.c(1244) ), but not defined
Llctrace defined( ../lamr.c(461) ), but never used
fseek returns value which is sometimes ignored
Lslevel defined( ../lamr.c(469) ), but never used
fwrite returns value which is always ignored
Lsimpld defined( ../lamr.c(475) ), but never used
getc returns value which is sometimes ignored
gftab defined( ../data.c(35) ), but never used
gctab defined( ../data.c(40) ), but never used
printf returns value which is always ignored
pagealign defined( ../low.c(17) ), but never used
putc returns value which is always ignored
proport defined( ../data.c(49) ), but never used
padding defined( ../low.c(25) ), but never used
lineleng defined( ../data.c(50) ), but never used
Negs defined( ../low.c(36) ), but never used
Lastfix defined( ../low.c(294) ), but never used
keybin defined( ../data.c(53) ), but never used
protflag defined( ../data.c(54) ), but never used
rlc defined( ../rlc.c(23) ), but never used
sprintf returns value which is always ignored
sscanf returns value which is always ignored
namptr defined( ../data.c(69) ), but never used
ungetc returns value which is always ignored
mfun defined( ../sysat.c(484) ), but never used
contval defined( ../data.c(114) ), but never used
ftemp defined( ../data.c(137) ), but never used
argptr defined( ../data.c(137) ), but never used
ttemp defined( ../data.c(137) ), but never used
lsbrkpnt defined( ../data.c(312) ), but never used
zfreespace defined( ../data.c(312) ), but never used
holbeg used( ../data.c(132) ), but not defined
errorh1 returns value which is sometimes ignored
HackHex defined( ../divbig.c(445) ), but never used
calhan returns value which is sometimes ignored
Lapply returns value which is sometimes ignored
brk returns value which is always ignored
xserr defined( ../error.c(389) ), but never used
close returns value which is always ignored
dup returns value which is always ignored
execve value is used, but none returned
dumpnamestack defined( ../eval.c(337) ), but never used
fchack defined( ../eval.c(714) ), but never used
protect defined( ../eval.c(758) ), but never used
unprot returns value which is always ignored
linterp defined( ../eval.c(776) ), but never used
Undeff defined( ../eval.c(787) ), but never used
dumpmydata defined( ../eval2.c(43) ), but never used
ftolsp_ defined( ../eval2.c(223) ), but never used
ftlspn_ defined( ../eval2.c(248) ), but never used
gethostname returns value which is always ignored
kill returns value which is always ignored
lseek returns value which is sometimes ignored
tynames used( ../fasl.c(121) ), but not defined
_erthrow used( ../fasl.c(125) ), but not defined
pipe returns value which is sometimes ignored
globtag defined( ../fex1.c(99) ), but never used
read returns value which is sometimes ignored
Nexit defined( ../fex1.c(265) ), but never used
Nsys defined( ../fex1.c(275) ), but never used
sbrk returns value which is sometimes ignored
signal returns value which is sometimes ignored
Isstatus returns value which is sometimes ignored
Iaddstat returns value which is sometimes ignored
sigsetmask returns value which is always ignored
