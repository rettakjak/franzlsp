start:movl	sp@,d2
lea	sp@(4),a3
movl	d2,d1
asll	#2,d1
lea	a3@(4,d1:l),a4
movl	#flag+0x8000,a3@-
movl	#lisp+0x8000,a3@-
movl	a3,sp
pea	a4@
pea	a3@
movl	#lisp+0x8000,sp@-
jsr	execve
execve: pea	0x3b:w
trap	#0
addw	#12,a7
pea	0:w
jsr	_exit
_exit: pea	1:w
trap	#0
flag:	.asciz	"-f"
lisp:	.asciz  "/usr/local/bin/lisp"
.even
	.globl	F00015	|(fcn lambda xrefinit)
F00015:
	link	a6,#-L00017
	tstb	sp@(-132)
	moveml	#L00018,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00016:
	lea	a2@,a5	|(calling command-line-args)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	movl	d7,a2@+
	cmpl	a4@,d7
	jeq	L00020
	movl	#_nilatom+0x1400+8,a2@+	|(calling signal)
	movl	a3@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	#_nilatom+0x1400+60,a2@+	|(calling signal)
	movl	a3@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(4),a5
	movl	d7,a5@
	movl	a3@(8),a5
	movl	a5@,d0
	movl	d0,sp@-
	movl	a3@(12),sp@-
	movl	#2,sp@-
	movl	a2,_np
	movl	a2,_lbot
	jbsr	_qpushframe
	movl	d0,_errp
	tstl	_retval
	jeq	L00022
	movl	_lispretval,d0
	jra	L00021
L00022:
	movl	a3@(16),a2@+
	movl	a4@,a2@+
	movl	a4@(8),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00024
	movl	a4@(8),a1
	cmpl	a1@(8),d7
	jeq	L00024
	movl	a4@(8),a1
	movl	a1@(8),a4@(8)
	cmpl	a1@(8),d7
	jra	L00023
L00024:
	movl	d7,d0
L00023:
	movl	a4@(8),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00027
	movl	a3@(20),a2@+
	movl	a4@(8),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00027
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-8),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00026
L00027:
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00026:
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
L00021:
	movl	_errp,a5
	movl	a5@(12),_errp
	movl	a5,sp
	addl	#32,sp
	movl	d0,a0
	movl	a0@(4),a2@+
	movl	a4@(8),d0	|(calling exit)
	cmpl	a4@(8),d7
	jne	L00029
	movl	#_nilatom+0x1400-4,d0
L00029:
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	jra	L00019
L00020:
	movl	a3@(24),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(28),a5	|(calling terpr)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(4),a5
	movl	d7,a5@
	movl	a3@(4),a5
	movl	a5@,d0
L00019:
	subql	#8,a2
	moveml	a6@(-24),#L00018
	unlk	a6
	rts
L00018 = 15552
L00017 = 24
	.globl	F00030	|(fcn nlambda lxref)
F00030:
	link	a6,#-L00032
	tstb	sp@(-132)
	moveml	#L00033,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00031:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	_bnp,a1
	movl	a3@(32),a5
	movl	a5@,a1@+
	movl	a3@(32),a1@+
	movl	a3@(32),a5
	movl	d7,a5@
	movl	a3@(36),a5
	movl	a5@,a1@+
	movl	a3@(36),a1@+
	movl	a3@(36),a5
	movl	d7,a5@
	movl	a3@(40),a5
	movl	a5@,a1@+
	movl	a3@(40),a1@+
	movl	a3@(40),a5
	movl	d7,a5@
	movl	a3@(44),a5
	movl	a5@,a1@+
	movl	a3@(44),a1@+
	movl	a3@(44),a5
	movl	d7,a5@
	movl	a3@(48),a5
	movl	a5@,a1@+
	movl	a3@(48),a1@+
	movl	a3@(48),a5
	movl	d7,a5@
	movl	a3@(52),a5
	movl	a5@,a1@+
	movl	a3@(52),a1@+
	movl	a3@(52),a5
	movl	d7,a5@
	movl	a3@(56),a5
	movl	a5@,a1@+
	movl	a3@(56),a1@+
	movl	a3@(56),a5
	movl	d7,a5@
	movl	a3@(60),a5
	movl	a5@,a1@+
	movl	a3@(60),a1@+
	movl	a3@(60),a5
	movl	d7,a5@
	movl	a3@(64),a5
	movl	a5@,a1@+
	movl	a3@(64),a1@+
	movl	a3@(64),a5
	movl	d7,a5@
	movl	a1,_bnp
	movl	a3@(8),a5	|(calling makereadtable)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(68),a5
	movl	d0,a5@
	lea	a2@,a5	|(calling gensym)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(60),a5
	movl	d0,a5@
	lea	a2@,a5	|(calling gensym)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(56),a5
	movl	d0,a5@
	lea	a2@,a5	|(calling gensym)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(52),a5
	movl	d0,a5@
	lea	a2@,a5	|(calling gensym)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(48),a5
	movl	d0,a5@
	lea	a2@,a5	|(calling gensym)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(44),a5
	movl	d0,a5@
	lea	a2@,a5	|(calling gensym)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(40),a5
	movl	d0,a5@
	cmpl	a4@,d7
	jeq	L00036
	movl	#_nilatom+0x1400+180,a2@+
	movl	a4@,a1	|(calling getcharn)
	movl	a1@(4),a2@+
	movl	#_nilatom+0x1400+4,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00036
	movl	a4@,a1	|(calling readlist)
	|(calling explode)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a0
	movl	a0@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(36)
	movl	a4@(36),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	addl	d0,a5
	movb	a5@,d0
	extw	d0
	extl	d0
	moveq	#1,d1
	asll	d0,d1
	movl	d1,d0
	andw	#516,d0
	jeq	L00039
	movl	a3@(72),a5
	movl	a4@(36),a5@
	movl	a4@,a5
	movl	a5@,a4@
	jra	L00038
L00039:
	movl	d7,d0
L00038:
	jra	L00035
L00036:
	movl	d7,d0
L00035:
	movl	a4@,a2@+	|(beginning do)
L00042:
	cmpl	a4@(64),d7
	jne	L00043
	movl	d7,d0
	jra	L00044
L00043:
	movl	a3@(76),a2@+
	movl	a4@(64),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00046
	movl	a3@(8),a5
	movl	a5@,d6
	movl	a3@(32),a5
	movl	d6,a5@
	jra	L00045
L00046:
	cmpl	a4@(60),d7
	jeq	L00047
	movl	a4@(64),a0	|(calling process-annotate-file)
	movl	a0@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00045
L00047:
	movl	a3@(80),a2@+
	movl	a4@(64),a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00048
	movl	a3@(8),a5
	movl	a5@,a4@(60)
	jra	L00045
L00048:
	movl	a4@(64),a1	|(calling process-xref-file)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00045:
	movl	a4@(64),a5
	movl	a5@,a4@(64)
	jra	L00042
L00044:
	subql	#4,a2
	cmpl	a4@(60),d7
	jne	L00050
	lea	a2@,a5	|(calling generate-xref-file)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00049
L00050:
	movl	d7,d0
L00049:
	movl	#_nilatom+0x1400+0,d0
	jra	L00034
|	movl	d7,d0
L00034:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1@(-20),a5
	movl	a1@(-24),a5@
	movl	a1@(-28),a5
	movl	a1@(-32),a5@
	movl	a1@(-36),a5
	movl	a1@(-40),a5@
	movl	a1@(-44),a5
	movl	a1@(-48),a5@
	movl	a1@(-52),a5
	movl	a1@(-56),a5@
	movl	a1@(-60),a5
	movl	a1@(-64),a5@
	movl	a1@(-68),a5
	movl	a1@(-72),a5@
	movl	a1,_bnp
	subl	#72,_bnp
	subl	#64,a2
	moveml	a6@(-24),#L00033
	unlk	a6
	rts
L00033 = 15552
L00032 = 24
	.globl	F00051	|(fcn lambda illegal-file)
F00051:
	link	a6,#-L00053
	tstb	sp@(-132)
	moveml	#L00054,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00052:
	movl	a3@(84),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@,a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(88),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@,a2
	subql	#4,a2
	moveml	a6@(-20),#L00054
	unlk	a6
	rts
L00054 = 15488
L00053 = 20
	.globl	F00055	|(fcn lambda process-xref-file)
F00055:
	link	a6,#-L00057
	tstb	sp@(-132)
	moveml	#L00058,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00056:
	movl	a3@(32),a5
	cmpl	a5@,d7
	jeq	L00060
	movl	a3@(92),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@,a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00059
L00060:
	movl	d7,d0
L00059:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a4@,a2@+	|(calling nreverse)
	|(calling exploden)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(8)
	movl	#_nilatom+0x1400+432,a2@+
	movl	a4@(8),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00062
	movl	#_nilatom+0x1400+184,a2@+
	movl	a4@(8),a5
	movl	a5@,a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00062
	movl	#_nilatom+0x1400+480,a2@+	|(calling implode)
	|(calling nreverse)
	movl	a4@(8),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+136,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(8)
	jra	L00061
L00062:
	movl	a4@,a4@(8)
L00061:
	movl	d7,d0
	movl	d0,sp@-
	movl	a3@(12),sp@-
	movl	#2,sp@-
	movl	a2,_np
	movl	a2,_lbot
	jbsr	_qpushframe
	movl	d0,_errp
	tstl	_retval
	jeq	L00068
	movl	_lispretval,d0
	jra	L00067
L00068:
	movl	a4@(8),a2@+	|(calling infile)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+144,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(4)
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
L00067:
	movl	_errp,a5
	movl	a5@(12),_errp
	movl	a5,sp
	addl	#32,sp
	cmpl	d0,d7
	jne	L00065
	movl	d7,d0
	movl	d0,sp@-
	movl	a3@(12),sp@-
	movl	#2,sp@-
	movl	a2,_np
	movl	a2,_lbot
	jbsr	_qpushframe
	movl	d0,_errp
	tstl	_retval
	jeq	L00070
	movl	_lispretval,d0
	jra	L00069
L00070:
	movl	a4@(8),a2@+	|(calling infile)
	|(calling concat)
	movl	a3@(96),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+144,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(4)
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
L00069:
	movl	_errp,a5
	movl	a5@(12),_errp
	movl	a5,sp
	addl	#32,sp
	cmpl	d0,d7
	jne	L00065
	movl	a3@(100),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@,a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00064
L00065:
	movl	a3@(8),a5
	movl	a5@,d0
	movl	d0,sp@-
	movl	a3@(12),sp@-
	movl	#2,sp@-
	movl	a2,_np
	movl	a2,_lbot
	jbsr	_qpushframe
	movl	d0,_errp
	tstl	_retval
	jeq	L00072
	movl	_lispretval,d0
	jra	L00071
L00072:
	movl	a4@(4),a2@+	|(calling read)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+160,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
L00071:
	movl	_errp,a5
	movl	a5@(12),_errp
	movl	a5,sp
	addl	#32,sp
	movl	d0,a0
	movl	a0@(4),a4@(12)
	movl	a4@(12),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00074
	movl	a3@(104),a2@+
	movl	a4@(12),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00076
	movl	a4@(12),a5
	movl	a5@,a0
	movl	a0@(4),a4@(12)
	movl	a4@(4),a2@+	|(calling process-File)
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00075
L00076:
	movl	a3@(108),a2@+
	movl	a4@(12),a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00077
	movl	a4@(4),a2@+	|(calling process-Chome)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+176,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00075
L00077:
	movl	a3@(112),a2@+
	movl	a4@(12),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00078
	movl	a3@(8),a5
	movl	a5@,d6
	movl	a3@(36),a5
	movl	d6,a5@
	movl	a4@(4),a2@+	|(calling process-Doc)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+184,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00075
L00078:
	movl	a4@,a2@+	|(calling illegal-file)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+192,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00075:
	jra	L00073
L00074:
	movl	a4@,a2@+	|(calling illegal-file)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+192,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00073:
	movl	a4@(4),a2@+	|(calling close)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00064:
	subl	#16,a2
	moveml	a6@(-24),#L00058
	unlk	a6
	rts
L00058 = 15552
L00057 = 24
	.globl	F00079	|(fcn lambda process-File)
F00079:
	link	a6,#-L00081
	tstb	sp@(-132)
	moveml	#L00082,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00080:
	movl	a3@(68),a5
	movl	a5@,a2@+
	movl	_bnp,a1
	movl	a3@(116),a5
	movl	a5@,a1@+
	movl	a3@(116),a1@+
	movl	a3@(116),a5
	movl	a4@(8),a5@
	movl	a1,_bnp
	movl	a4@,a2@+	|(beginning do)
	|(calling read)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+160,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
L00083:
	cmpl	a4@(12),d7
	jne	L00084
	movl	a4@,a2@+	|(calling close)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00085
L00084:
	movl	a4@(12),a1
	movl	a1@(4),a4@(16)
	movl	a4@(16),a2@+
	movl	a3@(60),a5
	movl	a5@,a2@+
	jbsr	_qget
	cmpl	d0,d7
	jne	L00087
	movl	a4@(16),a2@+	|(calling putprop)
	movl	a3@(8),a5
	movl	a5@,a2@+
	movl	a3@(60),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	a4@(16),a2@+
	movl	a3@(64),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	a3@(64),a5
	movl	d0,a5@
	jra	L00086
L00087:
	movl	d7,d0
L00086:
	movl	a4@(16),a2@+	|(calling putprop)
	movl	a4@(4),a2@+
	movl	a4@(16),a2@+
	movl	a3@(56),a5
	movl	a5@,a2@+
	jbsr	_qget
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(56),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	a4@(16),a2@+	|(calling putprop)
	movl	a4@(12),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@(16),a2@+
	movl	a3@(52),a5
	movl	a5@,a2@+
	jbsr	_qget
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(52),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	a4@(12),a5	|(beginning do)
	movl	a5@,a1
	movl	a1@,a2@+
L00088:
	cmpl	a4@(24),d7
	jne	L00089
	movl	d7,d0
	jra	L00090
L00089:
	movl	a4@(24),a1
	movl	a1@(4),a4@(20)
	movl	a4@(20),a2@+
	movl	a3@(60),a5
	movl	a5@,a2@+
	jbsr	_qget
	cmpl	d0,d7
	jne	L00092
	movl	a4@(20),a2@+	|(calling putprop)
	movl	a3@(8),a5
	movl	a5@,a2@+
	movl	a3@(60),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	a4@(20),a2@+
	movl	a3@(64),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	a3@(64),a5
	movl	d0,a5@
	jra	L00091
L00092:
	movl	d7,d0
L00091:
	movl	a4@(20),a2@+	|(calling putprop)
	movl	a4@(16),a2@+
	movl	a4@(4),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(20),a2@+
	movl	a3@(48),a5
	movl	a5@,a2@+
	jbsr	_qget
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(48),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	a4@(24),a5
	movl	a5@,a4@(24)
	jra	L00088
L00090:
	subql	#4,a2	|(calling read)
	movl	a4@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+160,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(12)
	jra	L00083
L00085:
	subl	#12,a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subl	#12,a2
	moveml	a6@(-20),#L00082
	unlk	a6
	rts
L00082 = 15488
L00081 = 20
	.globl	F00093	|(fcn lambda process-Chome)
F00093:
	link	a6,#-L00095
	tstb	sp@(-132)
	moveml	#L00096,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00094:
	movl	a4@,a2@+	|(beginning do)
	|(calling read)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+160,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
L00097:
	cmpl	a4@(4),d7
	jne	L00098
	movl	a4@,a2@+	|(calling close)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00099
L00098:
	movl	a4@(4),a1
	movl	a1@(4),a4@(8)
	movl	a4@(8),a2@+
	movl	a3@(60),a5
	movl	a5@,a2@+
	jbsr	_qget
	cmpl	d0,d7
	jne	L00101
	movl	a4@(8),a2@+	|(calling putprop)
	movl	a3@(8),a5
	movl	a5@,a2@+
	movl	a3@(60),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	a4@(8),a2@+
	movl	a3@(64),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	a3@(64),a5
	movl	d0,a5@
	jra	L00100
L00101:
	movl	d7,d0
L00100:
	movl	a4@(8),a2@+	|(calling putprop)
	movl	a4@(4),a5
	movl	a5@,a2@+
	movl	a4@(8),a2@+
	movl	a3@(44),a5
	movl	a5@,a2@+
	jbsr	_qget
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(44),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	a4@,a2@+	|(calling read)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+160,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(4)
	jra	L00097
L00099:
	subl	#12,a2
	moveml	a6@(-20),#L00096
	unlk	a6
	rts
L00096 = 15488
L00095 = 20
	.globl	F00102	|(fcn lambda process-Doc)
F00102:
	link	a6,#-L00104
	tstb	sp@(-132)
	moveml	#L00105,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00103:
	movl	a4@,a2@+	|(beginning do)
	|(calling read)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+160,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
L00106:
	cmpl	a4@(4),d7
	jne	L00107
	movl	a4@,a2@+	|(calling close)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00108
L00107:
	movl	a4@(4),a1
	movl	a1@(4),a4@(8)
	movl	a4@(8),a2@+
	movl	a3@(60),a5
	movl	a5@,a2@+
	jbsr	_qget
	cmpl	d0,d7
	jne	L00110
	movl	a4@(8),a2@+	|(calling putprop)
	movl	a3@(8),a5
	movl	a5@,a2@+
	movl	a3@(60),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	a4@(8),a2@+
	movl	a3@(64),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	a3@(64),a5
	movl	d0,a5@
	jra	L00109
L00110:
	movl	d7,d0
L00109:
	movl	a4@(8),a2@+	|(calling putprop)
	movl	a4@(4),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@(8),a2@+
	movl	a3@(40),a5
	movl	a5@,a2@+
	jbsr	_qget
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(40),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	a4@,a2@+	|(calling read)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+160,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(4)
	jra	L00106
L00108:
	subl	#12,a2
	moveml	a6@(-20),#L00105
	unlk	a6
	rts
L00105 = 15488
L00104 = 20
	.globl	F00111	|(fcn lambda terprchk)
F00111:
	link	a6,#-L00113
	tstb	sp@(-132)
	moveml	#L00114,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00112:
	movl	a4@,a5
	movl	a5@,sp@-
	movl	a3@(120),a5
	movl	a5@,a0
	movl	a0@,d2
	movl	sp@+,d0
	addl	d2,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00117
	jbsr	_qnewint
L00117:
	movl	a3@(120),a5
	movl	d0,a5@
	movl	a3@(120),a5
	movl	a5@,a0
	movl	a0@,d0
	cmpl	#78,d0
	jle	L00116
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(124),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@,a5
	movl	a5@,d0
	addl	#8,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00118
	jbsr	_qnewint
L00118:
	movl	a3@(120),a5
	movl	d0,a5@
	movl	a3@(120),a5
	movl	a5@,d0
	jra	L00115
L00116:
	movl	d7,d0
L00115:
	subql	#4,a2
	moveml	a6@(-24),#L00114
	unlk	a6
	rts
L00114 = 15492
L00113 = 24
	.globl	F00119	|(fcn lambda typeit)
F00119:
	link	a6,#-L00121
	tstb	sp@(-132)
	moveml	#L00122,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00120:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00124
	movl	a4@,a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	jra	L00123
L00124:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00125
	movl	a4@,a1
	movl	a1@(4),d0
	jra	L00123
L00125:
	movl	d7,d0
L00123:
	subql	#4,a2
	moveml	a6@(-20),#L00122
	unlk	a6
	rts
L00122 = 15488
L00121 = 20
	.globl	F00126	|(fcn lambda generate-xref-file)
F00126:
	link	a6,#-L00128
	tstb	sp@(-132)
	moveml	#L00129,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00127:
	movl	a3@(64),a5	|(calling sort)
	movl	a5@,a2@+
	movl	a3@(128),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+216,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(64),a5
	movl	d0,a5@
	movl	a3@(64),a5	|(beginning do)
	movl	a5@,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
L00130:
	cmpl	a4@,d7
	jne	L00131
	movl	d7,d0
	jra	L00132
L00131:
	movl	a4@,a1
	movl	a1@(4),a4@(4)
	movl	a4@(4),a2@+
	movl	a3@(56),a5
	movl	a5@,a2@+
	jbsr	_qget
	movl	d0,a4@(8)
	movl	a4@(4),a2@+
	movl	a3@(52),a5
	movl	a5@,a2@+
	jbsr	_qget
	movl	d0,a4@(12)
	movl	a4@(4),a2@+
	movl	a3@(48),a5
	movl	a5@,a2@+
	jbsr	_qget
	movl	d0,a4@(16)
	movl	a4@(4),a2@+
	movl	a3@(44),a5
	movl	a5@,a2@+
	jbsr	_qget
	movl	d0,a4@(20)
	movl	a4@(4),a2@+
	movl	a3@(40),a5
	movl	a5@,a2@+
	jbsr	_qget
	movl	d0,a4@(24)
	movl	a4@(16),a2@+	|(calling lessp)
	|(calling length)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(28)
	movl	a4@(28),a2@+
	movl	a3@(72),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+232,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00135
	movl	a4@(16),a2@+	|(calling sortcar)
	movl	a3@(128),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(16)
	jra	L00134
L00135:
	movl	d7,d0
L00134:
	movl	a4@(20),a2@+	|(beginning do)
L00136:
	cmpl	a4@(32),d7
	jne	L00137
	movl	d7,d0
	jra	L00138
L00137:
	movl	a3@(132),a2@+	|(calling concat)
	movl	a4@(32),a1
	movl	a1@(4),a0
	movl	a0@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@(8),a2@+
	jbsr	_qcons
	movl	d0,a4@(8)
	movl	a4@(32),a1
	movl	a1@(4),a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	movl	a4@(32),a5
	movl	a5@,a4@(32)
	jra	L00136
L00138:
	subql	#4,a2
	cmpl	a4@(8),d7
	jne	L00140
	movl	a4@(4),a1
	cmpl	a1@(8),d7
	jeq	L00142
	movl	a4@(4),a1	|(calling typeit)
	movl	a1@(8),a2@+
	cmpl	a1@(8),d7
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+248,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	movl	a3@(136),d0
	jra	L00141
L00142:
	movl	a4@(4),d5
	movl	a3@(140),a5
	movl	a5@,d0
	cmpl	d0,d7
	jeq	L00143
	movl	d0,a0
L00145:
	cmpl	a0@(4),d5
	jeq	L00144
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00145
	movl	a0,d0
	jra	L00143
L00144:
	movl	a3@(144),d0
	jra	L00141
L00143:
	movl	a4@(4),a2@+
	movl	a3@(148),a2@+
	jbsr	_qget
	cmpl	d0,d7
	jeq	L00146
	movl	a3@(152),a2@+	|(calling concat)
	movl	a4@(4),a2@+
	movl	a3@(148),a2@+
	jbsr	_qget
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	jra	L00141
L00146:
	movl	a3@(156),d0
L00141:
	movl	d0,a4@(8)
	jra	L00139
L00140:
	movl	d7,d0
L00139:
	movl	a4@(4),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(160),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(12),a5
	cmpl	a5@,d7
	jne	L00148
	movl	a4@(12),a1	|(calling patom)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(164),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(8),a1	|(calling patom)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00147
L00148:
	movl	a3@(168),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d7,a2@+
	movl	a4@(12),a2@+	|(beginning do)
	movl	a4@(8),a2@+
L00152:
	cmpl	a4@(36),d7
	jeq	L00155
	cmpl	a4@(40),d7
	jne	L00153
L00155:
	movl	d7,d0
	jra	L00154
L00153:
	movl	a4@(36),a1
	movl	a1@(4),a2@+
	movl	a4@(40),a0
	movl	a0@(4),a2@+
	movl	a4@(44),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(172),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(48),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(176),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#8,a2
	movl	d0,a2@+
	movl	a4@(32),a2@+
	jbsr	_qcons
	movl	d0,a4@(32)
	movl	a4@(36),a5
	movl	a5@,a2@+
	movl	a4@(40),a5
	movl	a5@,a4@(40)
	movl	a2@-,a4@(36)
	jra	L00152
L00154:
	subql	#8,a2	|(calling nreverse)
	movl	a4@(32),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
L00147:
	movl	a3@(36),a5
	cmpl	a5@,d7
	jeq	L00157
	cmpl	a4@(24),d7
	jeq	L00159
	movl	a3@(180),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(24),a5	|(calling msg-print)
	cmpl	a5@,d7
	jeq	L00161
	movl	a4@(24),d0
	jra	L00160
L00161:
	movl	a4@(24),a1
	movl	a1@(4),d0
L00160:
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(184),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00158
L00159:
	movl	a3@(188),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00158:
	jra	L00156
L00157:
	movl	d7,d0
L00156:
	cmpl	a4@(16),d7
	jne	L00163
	movl	a3@(192),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00162
L00163:
	movl	d7,d0
L00162:
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(196),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	a4@(16),d7
	jeq	L00164
	movl	a4@(28),a2@+	|(calling lessp)
	movl	a3@(72),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+232,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00165
	movl	a3@(200),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(28),a2@+	|(calling print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+256,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(204),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00164
L00165:
	movl	a4@(16),a2@+	|(beginning do)
	movl	d7,a2@+
	movl	#_nilatom+0x1400+32,a2@+
	movl	_bnp,a1
	movl	a3@(120),a5
	movl	a5@,a1@+
	movl	a3@(120),a1@+
	movl	a3@(120),a5
	movl	a4@(40),a5@
	movl	a1,_bnp
L00166:
	cmpl	a4@(32),d7
	jne	L00167
	movl	d7,d0
	jra	L00168
L00167:
	movl	a4@(32),a1
	movl	a1@(4),a0
	movl	a0@(4),a4@(36)
	movl	a4@(32),a0
	movl	a0@(4),a5
	movl	a5@,d5
	movl	a4@(8),d0
	cmpl	d0,d7
	jeq	L00170
	movl	d0,a0
L00172:
	cmpl	a0@(4),d5
	jeq	L00171
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00172
	movl	a0,d0
	jra	L00170
L00171:
	movl	a4@(36),a2@+	|(calling terprchk)
	|(calling flatc)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+264,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a0
	movl	a0@,d2
	movl	d2,d0
	addl	#2,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00173
	jbsr	_qnewint
L00173:
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+272,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(36),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00169
L00170:
	movl	a4@(36),a2@+	|(calling terprchk)
	|(calling flatc)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+264,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a0
	movl	a0@,d2
	movl	d2,sp@-
	movl	a4@(32),a1	|(calling flatc)
	movl	a1@(4),a5
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+264,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a0
	movl	a0@,d2
	movl	sp@+,d0
	addl	d2,d0
	movl	d0,sp@-
	movl	sp@+,d0
	addl	#6,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00174
	jbsr	_qnewint
L00174:
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+272,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(36),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(208),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(32),a1	|(calling patom)
	movl	a1@(4),a5
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00169:
	movl	a4@(32),a5
	cmpl	a5@,d7
	jeq	L00176
	movl	a3@(212),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00175
L00176:
	movl	d7,d0
L00175:
	movl	a4@(32),a5
	movl	a5@,a4@(32)
	jra	L00166
L00168:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subl	#12,a2
L00164:
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@,a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@,a2
L00133:
	movl	a4@,a5
	movl	a5@,a4@
	jra	L00130
L00132:
	subl	#32,a2
	moveml	a6@(-28),#L00129
	unlk	a6
	rts
L00129 = 15524
L00128 = 28
	.globl	F00177	|(fcn lambda process-annotate-file)
F00177:
	link	a6,#-L00179
	tstb	sp@(-132)
	moveml	#L00180,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00178:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a3@(8),a5
	movl	a5@,d0
	movl	d0,sp@-
	movl	a3@(12),sp@-
	movl	#2,sp@-
	movl	a2,_np
	movl	a2,_lbot
	jbsr	_qpushframe
	movl	d0,_errp
	tstl	_retval
	jeq	L00184
	movl	_lispretval,d0
	jra	L00183
L00184:
	movl	a4@,a2@+	|(calling infile)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+144,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(4)
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
L00183:
	movl	_errp,a5
	movl	a5@(12),_errp
	movl	a5,sp
	addl	#32,sp
	cmpl	d0,d7
	jne	L00182
	movl	a3@(216),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00181
L00182:
	movl	a3@(220),a2@+	|(calling concat)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@(12),a2@+	|(calling outfile)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+280,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(8)
	movl	a4@(4),a2@+	|(calling anno-it)
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+288,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@(8),a2@+	|(calling close)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(4),a2@+	|(calling close)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(224),a2@+	|(calling concat)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a3@(8),a5
	movl	a5@,d0
	movl	d0,sp@-
	movl	a3@(12),sp@-
	movl	#2,sp@-
	movl	a2,_np
	movl	a2,_lbot
	jbsr	_qpushframe
	movl	d0,_errp
	tstl	_retval
	jeq	L00188
	movl	_lispretval,d0
	jra	L00187
L00188:
	movl	a4@(16),a2@+	|(calling probef)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+296,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00190
	movl	a4@(16),a2@+	|(calling sys:unlink)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+304,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00189
L00190:
	movl	d7,d0
L00189:
	movl	a4@,a2@+	|(calling sys:link)
	movl	a4@(16),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@,a2@+	|(calling sys:unlink)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+304,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(12),a2@+	|(calling sys:link)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@(12),a2@+	|(calling sys:unlink)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+304,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
L00187:
	movl	_errp,a5
	movl	a5@(12),_errp
	movl	a5,sp
	addl	#32,sp
	cmpl	d0,d7
	jne	L00186
	movl	a3@(228),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(232),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@,a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(16),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(12),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00185
L00186:
	movl	d7,d0
L00185:
	subql	#8,a2
L00181:
	subl	#12,a2
	moveml	a6@(-20),#L00180
	unlk	a6
	rts
L00180 = 15488
L00179 = 20
	.globl	F00191	|(fcn lambda anno-it)
F00191:
	link	a6,#-L00193
	tstb	sp@(-132)
	moveml	#L00194,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00192:
	movl	a4@,a2@+	|(beginning do)
	|(calling read-a-line)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+320,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(8),a5
	movl	a5@,a2@+
L00195:
	cmpl	a4@(8),d7
	jne	L00196
	movl	d7,d0
	jra	L00197
L00196:
	movl	a4@(8),a2@+	|(calling match)
	movl	#_nilatom+0x1400+4,a2@+
	movl	a3@(236),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+328,a5
	jbsr	a5@
	lea	a2@(-12),a2
	cmpl	d0,d7
	jeq	L00199
	movl	a4@(4),a2@+	|(calling flush-a-line)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+336,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00198
L00199:
	movl	a4@(8),a2@+	|(calling match)
	movl	#_nilatom+0x1400+4,a2@+
	movl	a3@(240),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+328,a5
	jbsr	a5@
	lea	a2@(-12),a2
	cmpl	d0,d7
	jeq	L00200
	movl	d7,a4@(12)
	movl	a4@(8),a2@+	|(calling write-a-line)
	movl	a4@(4),a2@+
	movl	a4@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00198
L00200:
	movl	a4@(8),a2@+	|(calling match)
	movl	#_nilatom+0x1400+4,a2@+
	movl	a3@(244),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+328,a5
	jbsr	a5@
	lea	a2@(-12),a2
	cmpl	d0,d7
	jeq	L00201
	movl	a3@(8),a5
	movl	a5@,a4@(12)
	movl	a4@(8),a2@+	|(calling write-a-line)
	movl	a4@(4),a2@+
	movl	a4@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00198
L00201:
	cmpl	a4@(12),d7
	jeq	L00203
	movl	a4@(8),a2@+	|(calling anno-check)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+352,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00202
L00203:
	movl	d7,d0
L00202:
	movl	a4@(8),a2@+	|(calling write-a-line)
	movl	a4@(4),a2@+
	movl	a4@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00198:
	movl	a4@,a2@+	|(calling read-a-line)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+320,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(8)
	jra	L00195
L00197:
	subl	#16,a2
	moveml	a6@(-20),#L00194
	unlk	a6
	rts
L00194 = 15488
L00193 = 20
	.globl	F00204	|(fcn lambda read-a-line)
F00204:
	link	a6,#-L00206
	tstb	sp@(-132)
	moveml	#L00207,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00205:
	movl	a3@(248),a5
	movl	d7,a5@
	movl	#_nilatom+0x1400+4,a2@+	|(beginning do)
	movl	a4@,a2@+	|(calling tyi)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
L00208:
	movl	#_nilatom+0x1400+40,d6
	cmpl	a4@(8),d6
	jeq	L00211
	movl	#_nilatom+0x1400-4,d6
	cmpl	a4@(8),d6
	jne	L00209
L00211:
	movl	#_nilatom+0x1400+40,d6
	cmpl	a4@(8),d6
	jeq	L00214
	movl	a4@(4),a5
	cmpl	#1,a5@
	jle	L00213
L00214:
	movl	a3@(252),a5
	movl	a5@,a0
	movl	a4@(4),a0@
	movl	a3@(252),a5
	movl	a5@,d0
	jra	L00212
L00213:
	movl	d7,d0
L00212:
	jra	L00210
L00209:
	movl	a4@(4),a5
	movl	a5@,d2
	movl	a3@(252),a5
	movl	a5@,a0
	movl	d2,d6
	asll	#2,d6
	movl	a4@(8),a0@(0,d6:L)
	movl	a4@(4),a5
	cmpl	#126,a5@
	jle	L00216
	movl	a3@(8),a5
	movl	a5@,d6
	movl	a3@(248),a5
	movl	d6,a5@
	movl	a3@(252),a5
	movl	a5@,a0
	movl	a0,a2@+
	lea	a0@,a5
	movl	a5,sp@-
	cmpl	#_nilatom+0x1400+4088,a4@(4)
	jle	L00217
	movl	a4@(4),a0
	jbsr	_qoneplus
	movl	sp@,a5
	movl	d0,a5@
	jra	L00218
L00217:
	movl	a4@(4),d0
	addql	#4,d0
	movl	sp@,a5
	movl	d0,a5@
L00218:
	movl	a2@-,d0
	movl	a3@(252),a5
	movl	a5@,d0
	jra	L00210
|	jra	L00215
L00216:
	movl	d7,d0
L00215:
	cmpl	#_nilatom+0x1400+4088,a4@(4)
	jle	L00219
	movl	a4@(4),a0
	jbsr	_qoneplus
	movl	d0,a2@+
	jra	L00220
L00219:
	movl	a4@(4),d0
	addql	#4,d0
	movl	d0,a2@+
L00220:
	movl	a4@,a2@+	|(calling tyi)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(8)
	movl	a2@-,a4@(4)
	jra	L00208
L00210:
	subl	#12,a2
	moveml	a6@(-28),#L00207
	unlk	a6
	rts
L00207 = 15556
L00206 = 28
	.globl	F00221	|(fcn lambda write-a-line)
F00221:
	link	a6,#-L00223
	tstb	sp@(-132)
	moveml	#L00224,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00222:
	movl	a4@,a1	|(beginning do)
	movl	a1@,a2@+
	cmpl	a1@,d7
	movl	#_nilatom+0x1400+4,a2@+
L00225:
	movl	a4@(16),a5
	movl	a5@,d6
	movl	a4@(12),a5
	cmpl	a5@,d6
	jmi	L00226
	movl	a3@(248),a5
	cmpl	a5@,d7
	jeq	L00229
	movl	a4@(4),a2@+	|(calling oversize-check)
	movl	a4@(8),a2@+
	movl	a3@(8),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+368,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00228
L00229:
	movl	a4@(4),a2@+	|(calling terpr)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00228:
	jra	L00227
L00226:
	movl	a4@(16),a5	|(calling tyo)
	movl	a5@,d2
	movl	a4@,a1
	movl	d2,d6
	asll	#2,d6
	movl	a1@(0,d6:L),a2@+
	cmpl	a1@(0,d6:L),d7
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+376,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	#_nilatom+0x1400+4088,a4@(16)
	jle	L00230
	movl	a4@(16),a0
	jbsr	_qoneplus
	movl	d0,a4@(16)
	jra	L00231
L00230:
	movl	a4@(16),d0
	addql	#4,d0
	movl	d0,a4@(16)
L00231:
	jra	L00225
L00227:
	subl	#20,a2
	moveml	a6@(-28),#L00224
	unlk	a6
	rts
L00224 = 15556
L00223 = 28
	.globl	F00232	|(fcn lambda flush-a-line)
F00232:
	link	a6,#-L00234
	tstb	sp@(-132)
	moveml	#L00235,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00233:
	movl	a4@,a2@+	|(calling oversize-check)
	movl	a4@(4),a2@+
	movl	d7,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+368,a5
	jbsr	a5@
	lea	a2@(-12),a2
	subql	#8,a2
	moveml	a6@(-20),#L00235
	unlk	a6
	rts
L00235 = 15488
L00234 = 20
	.globl	F00236	|(fcn lambda oversize-check)
F00236:
	link	a6,#-L00238
	tstb	sp@(-132)
	moveml	#L00239,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00237:
	movl	a3@(248),a5
	cmpl	a5@,d7
	jeq	L00241
	movl	a4@(4),a2@+	|(beginning do)
	|(calling tyi)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
L00242:
	cmpl	#_nilatom+0x1400-4,a4@(12)
	jeq	L00245
	cmpl	#_nilatom+0x1400+40,a4@(12)
	jne	L00243
L00245:
	cmpl	a4@(8),d7
	jeq	L00247
	cmpl	#_nilatom+0x1400+40,a4@(12)
	jne	L00247
	movl	a4@(12),a2@+	|(calling tyo)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+376,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00246
L00247:
	movl	d7,d0
L00246:
	jra	L00244
L00243:
	cmpl	a4@(8),d7
	jeq	L00250
	movl	a4@(12),a2@+	|(calling tyo)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+376,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00249
L00250:
	movl	d7,d0
L00249:
	movl	a4@(4),a2@+	|(calling tyi)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(12)
	jra	L00242
L00244:
	subql	#4,a2
	jra	L00240
L00241:
	movl	d7,d0
L00240:
	subl	#12,a2
	moveml	a6@(-20),#L00239
	unlk	a6
	rts
L00239 = 15488
L00238 = 20
	.globl	F00251	|(fcn lambda anno-check)
F00251:
	link	a6,#-L00253
	tstb	sp@(-132)
	moveml	#L00254,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00252:
	movl	a4@,a2@+	|(calling match)
	movl	#_nilatom+0x1400+4,a2@+
	movl	a3@(256),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+328,a5
	jbsr	a5@
	lea	a2@(-12),a2
	cmpl	d0,d7
	jeq	L00256
	movl	d7,a2@+
	movl	a4@,a2@+	|(calling find-func)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+384,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(8)
	cmpl	d0,d7
	jeq	L00258
	movl	a4@(8),a2@+
	movl	a3@(48),a5
	movl	a5@,a2@+
	jbsr	_qget
	movl	d0,a2@+
	cmpl	a4@(12),d7
	jeq	L00260
	movl	a4@(12),a2@+	|(calling printrcd)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+392,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00259
L00260:
	movl	d7,d0
L00259:
	subql	#4,a2
	jra	L00257
L00258:
	movl	d7,d0
L00257:
	subql	#4,a2
	jra	L00255
L00256:
	movl	d7,d0
L00255:
	subql	#8,a2
	moveml	a6@(-20),#L00254
	unlk	a6
	rts
L00254 = 15488
L00253 = 20
	.globl	F00261	|(fcn lambda printrcd)
F00261:
	link	a6,#-L00263
	tstb	sp@(-132)
	moveml	#L00264,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00262:
	movl	a4@,a2@+	|(calling sortcar)
	movl	a3@(128),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@(8),a2@+	|(calling print-rec)
	movl	a4@(4),a2@+
	movl	#_nilatom+0x1400+0,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+400,a5
	jbsr	a5@
	lea	a2@(-12),a2
	subl	#12,a2
	moveml	a6@(-20),#L00264
	unlk	a6
	rts
L00264 = 15488
L00263 = 20
	.globl	F00265	|(fcn lambda print-rec)
F00265:
	link	a6,#-L00267
	tstb	sp@(-132)
	moveml	#L00268,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00266:
	cmpl	a4@,d7
	jeq	L00270
	movl	a4@,a1	|(calling flatc)
	movl	a1@(4),a0
	movl	a0@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+264,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(12),a5
	movl	a5@,d0
	movl	a4@(8),a5
	addl	a5@,d0
	movl	d0,sp@-
	movl	sp@+,d0
	addl	#2,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00273
	jbsr	_qnewint
L00273:
	movl	d0,a0
	movl	a0@,d0
	cmpl	#78,d0
	jle	L00272
	movl	a4@(4),a2@+	|(calling terpr)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	#_nilatom+0x1400+0,a4@(8)
	jra	L00271
L00272:
	movl	d7,d0
L00271:
	cmpl	#_nilatom+0x1400+0,a4@(8)
	jne	L00275
	movl	d7,a2@+
	movl	a3@(236),a5	|(beginning do)
	movl	a5@,a4@(16)
	movl	a4@(16),a2@+
L00278:
	cmpl	a4@(20),d7
	jne	L00279
	movl	d7,d0
	jra	L00280
L00279:
	movl	a4@(20),a1
	movl	a1@(4),a2@+
	movl	a4@(24),a2@+	|(calling tyo)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+376,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#4,a2
	movl	a4@(20),a5
	movl	a5@,a4@(20)
	jra	L00278
L00280:
	subql	#8,a2	|(calling length)
	movl	a3@(236),a5
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(8)
	jra	L00274
L00275:
	movl	d7,d0
L00274:
	cmpl	#_nilatom+0x1400+16,a4@(8)
	jeq	L00282
	movl	a3@(260),a2@+	|(calling msg-print)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@(8),a5
	movl	a5@,d0
	addl	#2,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00283
	jbsr	_qnewint
L00283:
	movl	d0,a4@(8)
	jra	L00281
L00282:
	movl	d7,d0
L00281:
	movl	a4@,a1	|(calling msg-print)
	movl	a1@(4),a0
	movl	a0@(4),a2@+
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@,a5	|(calling print-rec)
	movl	a5@,a2@+
	movl	a4@(4),a2@+
	movl	a4@(8),a5
	movl	a5@,d0
	movl	a4@(12),a5
	addl	a5@,d0
	movl	d0,sp@-
	movl	sp@+,d0
	addl	#2,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00284
	jbsr	_qnewint
L00284:
	movl	d0,a2@+
	movl	_lbot,a5
	movl	a4,a5
	movl	a2@(-12),a5@
	movl	a2@(-8),a5@(4)
	movl	a2@(-4),a5@(8)
	movl	a5,a2
	addl	#12,a2
	jra	L00266
|	jra	L00269
L00270:
	movl	a4@(4),a2@+	|(calling terpr)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00269:
	subl	#12,a2
	moveml	a6@(-24),#L00268
	unlk	a6
	rts
L00268 = 15492
L00267 = 24
	.globl	F00285	|(fcn lambda match)
F00285:
	link	a6,#-L00287
	tstb	sp@(-132)
	moveml	#L00288,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00286:
	cmpl	a4@(8),d7
	jne	L00290
	movl	a3@(8),a5
	movl	a5@,d0
	jra	L00289
L00290:
	movl	a4@(4),a5
	movl	a5@,a2@+
	movl	a4@,a1
	movl	a1@,a0
	cmpl	a1@,d7
	movl	a0@,d0
	movl	a2@-,d6
	cmpl	d0,d6
	jpl	L00291
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	a4@(4),a5
	movl	a5@,d2
	movl	a4@,a1
	movl	d2,d6
	asll	#2,d6
	movl	a1@(0,d6:L),d0
	cmpl	a1@(0,d6:L),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00291
	movl	a4@,a2@+	|(calling match)
	cmpl	#_nilatom+0x1400+4088,a4@(4)
	jle	L00293
	movl	a4@(4),a0
	jbsr	_qoneplus
	movl	d0,a2@+
	jra	L00294
L00293:
	movl	a4@(4),d0
	addql	#4,d0
	movl	d0,a2@+
L00294:
	movl	a4@(8),a5
	movl	a5@,a2@+
	movl	_lbot,a5
	movl	a4,a5
	movl	a2@(-12),a5@
	movl	a2@(-8),a5@(4)
	movl	a2@(-4),a5@(8)
	movl	a5,a2
	addl	#12,a2
	jra	L00286
|	jra	L00289
L00291:
	movl	d7,d0
L00289:
	subl	#12,a2
	moveml	a6@(-28),#L00288
	unlk	a6
	rts
L00288 = 15556
L00287 = 28
	.globl	F00295	|(fcn lambda find-func)
F00295:
	link	a6,#-L00297
	tstb	sp@(-132)
	moveml	#L00298,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00296:
	movl	#_nilatom+0x1400+4,a2@+	|(beginning do)
	movl	a4@,a1
	movl	a1@,a2@+
	cmpl	a1@,d7
	movl	d7,a2@+
L00299:
	movl	a4@(4),a5
	movl	a5@,d6
	movl	a4@(8),a5
	cmpl	a5@,d6
	jmi	L00303
	movl	a3@(8),a4@(12)
	jra	L00302
L00303:
	movl	d7,a4@(12)
L00304:
	movl	a4@(4),a5
	movl	a5@,d2
	movl	a4@,a1
	movl	d2,d6
	asll	#2,d6
	movl	a1@(0,d6:L),d5
	cmpl	a1@(0,d6:L),d7
	movl	a3@(264),d0
	cmpl	d0,d7
	jeq	L00300
	movl	d0,a0
L00306:
	cmpl	a0@(4),d5
	jeq	L00305
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00306
	movl	a0,d0
	jra	L00300
L00305:
L00302:
	cmpl	a4@(12),d7
	jeq	L00308
	movl	d7,d0
	jra	L00307
L00308:
	movl	a4@(4),a2@+	|(beginning do)
L00309:
	movl	a4@(16),a5
	movl	a5@,d6
	movl	a4@(8),a5
	cmpl	a5@,d6
	jmi	L00313
	movl	a3@(8),a4@(12)
	jra	L00312
L00313:
	movl	d7,a4@(12)
L00314:
	movl	a4@(16),a5
	movl	a5@,d2
	movl	a4@,a1
	movl	d2,d6
	asll	#2,d6
	movl	a1@(0,d6:L),d5
	cmpl	a1@(0,d6:L),d7
	movl	a3@(268),d0
	cmpl	d0,d7
	jeq	L00315
	movl	d0,a0
L00316:
	cmpl	a0@(4),d5
	jeq	L00310
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00316
	movl	a0,d0
L00315:
L00312:
	cmpl	a4@(12),d7
	jne	L00319
	movl	a4@(16),a5
	movl	a5@,d2
	movl	a4@,a1
	movl	d2,d6
	asll	#2,d6
	movl	a1@(0,d6:L),d0
	cmpl	a1@(0,d6:L),d7
	cmpl	#_nilatom+0x1400+160,d0
	jne	L00318
L00319:
	movl	d7,d0
	jra	L00317
L00318:
	cmpl	#_nilatom+0x1400+4088,a4@(16)	|(beginning do)
	jle	L00322
	movl	a4@(16),a0
	jbsr	_qoneplus
	movl	d0,a2@+
	jra	L00323
L00322:
	movl	a4@(16),d0
	addql	#4,d0
	movl	d0,a2@+
L00323:
L00320:
	movl	a4@(20),a5
	movl	a5@,d6
	movl	a4@(8),a5
	cmpl	a5@,d6
	jpl	L00325
	movl	a4@(20),a5
	movl	a5@,d2
	movl	a4@,a1
	movl	d2,d6
	asll	#2,d6
	movl	a1@(0,d6:L),d5
	cmpl	a1@(0,d6:L),d7
	movl	a3@(272),d0
	cmpl	d0,d7
	jeq	L00321
	movl	d0,a0
L00327:
	cmpl	a0@(4),d5
	jeq	L00326
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00327
	movl	a0,d0
	jra	L00321
L00326:
L00325:
	movl	a4@,a2@+	|(calling implode-fun)
	movl	a4@(16),a2@+
	cmpl	#_nilatom+0x1400-4096,a4@(20)
	jle	L00328
	cmpl	#_nilatom+0x1400+4092,a4@(20)
	jle	L00329
L00328:
	movl	a4@(20),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00330
L00329:
	movl	a4@(20),d0
	subql	#4,d0
	movl	d0,a2@+
L00330:
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+408,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00324
L00321:
	cmpl	#_nilatom+0x1400+4088,a4@(20)
	jle	L00331
	movl	a4@(20),a0
	jbsr	_qoneplus
	movl	d0,a4@(20)
	jra	L00332
L00331:
	movl	a4@(20),d0
	addql	#4,d0
	movl	d0,a4@(20)
L00332:
	jra	L00320
L00324:
	subql	#4,a2
L00317:
	jra	L00311
L00310:
	cmpl	#_nilatom+0x1400+4088,a4@(16)
	jle	L00333
	movl	a4@(16),a0
	jbsr	_qoneplus
	movl	d0,a4@(16)
	jra	L00334
L00333:
	movl	a4@(16),d0
	addql	#4,d0
	movl	d0,a4@(16)
L00334:
	jra	L00309
L00311:
	subql	#4,a2
L00307:
	jra	L00301
L00300:
	cmpl	#_nilatom+0x1400+4088,a4@(4)
	jle	L00335
	movl	a4@(4),a0
	jbsr	_qoneplus
	movl	d0,a4@(4)
	jra	L00336
L00335:
	movl	a4@(4),d0
	addql	#4,d0
	movl	d0,a4@(4)
L00336:
	jra	L00299
L00301:
	subl	#16,a2
	moveml	a6@(-32),#L00298
	unlk	a6
	rts
L00298 = 15588
L00297 = 32
	.globl	F00337	|(fcn lambda implode-fun)
F00337:
	link	a6,#-L00339
	tstb	sp@(-132)
	moveml	#L00340,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00338:
	cmpl	#_nilatom+0x1400-4096,a4@(8)	|(beginning do)
	jle	L00343
	cmpl	#_nilatom+0x1400+4092,a4@(8)
	jle	L00344
L00343:
	movl	a4@(8),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00345
L00344:
	movl	a4@(8),d0
	subql	#4,d0
	movl	d0,a2@+
L00345:
	movl	a4@(8),a5
	movl	a5@,d2
	movl	a4@,a1
	movl	d2,d6
	asll	#2,d6
	movl	a1@(0,d6:L),a2@+
	cmpl	a1@(0,d6:L),d7
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
L00341:
	movl	a4@(4),a5
	movl	a5@,d6
	movl	a4@(12),a5
	cmpl	a5@,d6
	jmi	L00342
	movl	a4@(4),a5	|(calling implode)
	movl	a5@,d2
	movl	a4@,a1
	movl	d2,d6
	asll	#2,d6
	movl	a1@(0,d6:L),a2@+
	cmpl	a1@(0,d6:L),d7
	movl	a4@(16),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+136,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00346
L00342:
	cmpl	#_nilatom+0x1400-4096,a4@(12)
	jle	L00347
	cmpl	#_nilatom+0x1400+4092,a4@(12)
	jle	L00348
L00347:
	movl	a4@(12),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00349
L00348:
	movl	a4@(12),d0
	subql	#4,d0
	movl	d0,a2@+
L00349:
	movl	a4@(12),a5
	movl	a5@,d2
	movl	a4@,a1
	movl	d2,d6
	asll	#2,d6
	movl	a1@(0,d6:L),a2@+
	cmpl	a1@(0,d6:L),d7
	movl	a4@(16),a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	movl	a2@-,a4@(12)
	jra	L00341
L00346:
	subl	#20,a2
	moveml	a6@(-28),#L00340
	unlk	a6
	rts
L00340 = 15556
L00339 = 28
bind_org:
	linker_size = 	69
	trans_size = 	52
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	0
	.long	99
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	99
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long -1
lit_org:
.asciz "exit"
.asciz "user-top-level"
.asciz "t"
.asciz "ER%all"
.asciz "lxref"
.asciz "lambda"
.asciz "\"Lxref - lisp cross reference program\""
.asciz "poport"
.asciz "debug-mode"
.asciz "docseen"
.asciz "i-Doc"
.asciz "i-Chome"
.asciz "i-callers"
.asciz "i-type"
.asciz "i-home"
.asciz "i-seen"
.asciz "funcs"
.asciz "xref-readtable"
.asciz "ignorelevel"
.asciz "-d"
.asciz "-a"
.asciz "\"File \""
.asciz "\" is not a valid cross reference file\""
.asciz "\"process-xref-file: \""
.asciz "\".x\""
.asciz "\"Couldn't open \""
.asciz "File"
.asciz "Chome"
.asciz "Doc"
.asciz "readtable"
.asciz "width"
.asciz "\"	\""
.asciz "alphalessp"
.asciz "\"<C-code>:\""
.asciz "(Franz-initial)"
.asciz "liszt-internal"
.asciz "(liszt-internal-function)"
.asciz "autoload"
.asciz "\"autoload: \""
.asciz "(Undefined)"
.asciz "\"	\""
.asciz "\"	\""
.asciz "\"Mult def: \""
.asciz "\" in \""
.asciz "\", \""
.asciz "\"  [Doc: \""
.asciz "\"]\""
.asciz "\"  [**undoc**]\""
.asciz "\"	*** Unreferenced ***\""
.asciz "\"	\""
.asciz "\"Called by \""
.asciz "\" functions\""
.asciz "\" in \""
.asciz "\", \""
.asciz "\"will ignore that file \""
.asciz "\"#,\""
.asciz "\"#.\""
.asciz "\"An error occured while mving files around \""
.asciz "\"files possibly affected \""
.asciz "callby-marker"
.asciz "anno-off-marker"
.asciz "anno-on-marker"
.asciz "oversize-line"
.asciz "inp-buffer"
.asciz "(40 100 101 102)"
.asciz "\", \""
.asciz "(32 9)"
.asciz "(32 9)"
.asciz "(32 9 40)"
.asciz "command-line-args"
.asciz "signal"
.asciz "funcall"
.asciz "exit"
.asciz "patom"
.asciz "terpr"
.asciz "makereadtable"
.asciz "gensym"
.asciz "getcharn"
.asciz "explode"
.asciz "readlist"
.asciz "process-annotate-file"
.asciz "process-xref-file"
.asciz "generate-xref-file"
.asciz "msg-print"
.asciz "exploden"
.asciz "nreverse"
.asciz "implode"
.asciz "infile"
.asciz "concat"
.asciz "read"
.asciz "process-File"
.asciz "process-Chome"
.asciz "process-Doc"
.asciz "illegal-file"
.asciz "close"
.asciz "putprop"
.asciz "sort"
.asciz "length"
.asciz "lessp"
.asciz "sortcar"
.asciz "typeit"
.asciz "print"
.asciz "flatc"
.asciz "terprchk"
.asciz "outfile"
.asciz "anno-it"
.asciz "probef"
.asciz "sys:unlink"
.asciz "sys:link"
.asciz "read-a-line"
.asciz "match"
.asciz "flush-a-line"
.asciz "write-a-line"
.asciz "anno-check"
.asciz "tyi"
.asciz "oversize-check"
.asciz "tyo"
.asciz "find-func"
.asciz "printrcd"
.asciz "print-rec"
.asciz "implode-fun"
.ascii "(setq rcs-lxref-ident \"$Header: lxref.l,v 1.2 84/02/03 08:04"
.asciz ":37 jkf Exp $\")"
.asciz "(opval (quote pagelimit) 9999)"
.asciz "(setq ignorelevel 50)"
.ascii "(setq callby-marker (exploden \";.. \") anno-off-marker (explo"
.asciz "den \";.-\") anno-on-marker (exploden \";.+\"))"
.ascii "(setq liszt-internal (quote (Internal-bcdcall liszt-internal"
.asciz "-do)))"
.asciz "xrefinit"
.asciz "(setq user-top-level (quote xrefinit))"
.asciz "lxref"
.asciz "illegal-file"
.asciz "process-xref-file"
.asciz "process-File"
.asciz "process-Chome"
.asciz "process-Doc"
.asciz "terprchk"
.asciz "typeit"
.asciz "generate-xref-file"
.asciz "process-annotate-file"
.asciz "anno-it"
.asciz "(setq inp-buffer (makhunk 128))"
.asciz "read-a-line"
.asciz "write-a-line"
.asciz "flush-a-line"
.asciz "oversize-check"
.asciz "anno-check"
.asciz "printrcd"
.asciz "print-rec"
.asciz "match"
.asciz "find-func"
.asciz "implode-fun"
lit_end:
.data | this is just for documentation 
.asciz "@(#)Compiled by Liszt 68000 version 8.39a on Mon Feb  6 14:31:23 1989"
.asciz "$Header: decl.l,v 1.8 83/08/28 17:13:00 layer Exp $"
.asciz "$Header: array.l,v 1.7 83/08/28 17:12:39 layer Exp $"
.asciz "$Header: vector.l,v 1.11 83/11/22 10:13:48 jkf Exp $"
.asciz "$Header: datab.l,v 1.5 83/08/28 17:14:27 layer Exp $"
.asciz "$Header: expr.l,v 1.12 83/09/06 21:46:46 layer Exp $"
.asciz "$Header: io.l,v 1.16 83/12/06 15:50:22 sklower Exp $"
.asciz "$Header: funa.l,v 1.11 83/08/28 17:14:35 layer Exp $"
.asciz "$Header: funb.l,v 1.12 83/08/28 17:14:58 layer Exp $"
.asciz "$Header: func.l,v 1.13 84/10/18 12:36:57 jkf Exp $"
.asciz "$Header: tlev.l,v 1.16 84/01/13 15:06:43 jkf Exp $"
.asciz "$Header: instr.l,v 1.7 84/01/05 18:40:55 jkf Exp $"
.asciz "$Header: fixnum.l,v 1.14 83/08/28 17:13:38 layer Exp $"
.asciz "$Header: util.l,v 1.14 83/08/28 17:13:11 layer Exp $"
