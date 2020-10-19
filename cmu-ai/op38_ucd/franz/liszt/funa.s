	.globl	F00015	|(fcn lambda cc-and)
F00015:
	link	a6,#-L00017
	tstb	sp@(-132)
	moveml	#L00018,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00016:
	lea	a2@,a5	|(calling d-genlab)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	movl	d7,a2@+
	movl	a3@,a5
	movl	a5@,a0
	movl	a0@,d0
	cmpl	a0@,d7
	jne	L00019
	movl	a3@(4),d0
L00019:
	movl	d0,a2@+
	movl	a3@(8),a5
	movl	a5@,a0
	cmpl	a0@,d7
	jne	L00021
	movl	d7,a2@+	|(calling d-exp)
	|(beginning do)
	movl	a4@,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a4@(8),a2@+
	movl	_bnp,a1
	movl	a3@(12),a5
	movl	a5@,a1@+
	movl	a3@(12),a1@+
	movl	a3@(12),a5
	movl	a4@(20),a5@
	movl	a3@(16),a5
	movl	a5@,a1@+
	movl	a3@(16),a1@+
	movl	a3@(16),a5
	movl	a4@(16),a5@
	movl	a3@(8),a5
	movl	a5@,a1@+
	movl	a3@(8),a1@+
	movl	a3@(8),a5
	movl	a4@(12),a5@
	movl	a1,_bnp
L00022:
	movl	a4@(24),a5
	cmpl	a5@,d7
	jne	L00023
	movl	a4@(24),a1
	movl	a1@(4),d0
	jra	L00024
L00023:
	movl	a4@(24),a1	|(calling d-exp)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(24),a5
	movl	a5@,a4@(24)
	jra	L00022
L00024:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1@(-20),a5
	movl	a1@(-24),a5@
	movl	a1,_bnp
	subl	#24,_bnp
	subl	#16,a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(16),a5
	cmpl	a5@,d7
	jeq	L00026
	lea	a2@,a5	|(calling d-genlab)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a4@(4)
	movl	a4@(4),a2@+	|(calling e-goto)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@,a2@+	|(calling e-label)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(20),a2@+	|(calling d-move)
	movl	a3@(16),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@(4),a2@+	|(calling e-label)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00025
L00026:
	movl	a4@,a2@+	|(calling e-label)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00025:
	jra	L00020
L00021:
	movl	a3@(16),a5
	cmpl	a5@,d7
	jne	L00028
	movl	a3@(8),a5
	movl	a5@,a0
	movl	a0@,a4@
	jra	L00027
L00028:
	movl	d7,d0
L00027:
	movl	d7,a2@+	|(calling d-exp)
	|(beginning do)
	movl	a4@,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a4@(8),a2@+
	movl	_bnp,a1
	movl	a3@(12),a5
	movl	a5@,a1@+
	movl	a3@(12),a1@+
	movl	a3@(12),a5
	movl	a4@(20),a5@
	movl	a3@(16),a5
	movl	a5@,a1@+
	movl	a3@(16),a1@+
	movl	a3@(16),a5
	movl	a4@(16),a5@
	movl	a3@(8),a5
	movl	a5@,a1@+
	movl	a3@(8),a1@+
	movl	a3@(8),a5
	movl	a4@(12),a5@
	movl	a1,_bnp
L00029:
	movl	a4@(24),a5
	cmpl	a5@,d7
	jne	L00030
	movl	a4@(24),a1
	movl	a1@(4),d0
	jra	L00031
L00030:
	movl	a4@(24),a1	|(calling d-exp)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(24),a5
	movl	a5@,a4@(24)
	jra	L00029
L00031:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1@(-20),a5
	movl	a1@(-24),a5@
	movl	a1,_bnp
	subl	#24,_bnp
	subl	#16,a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(16),a5
	cmpl	a5@,d7
	jeq	L00033
	lea	a2@,a5	|(calling d-genlab)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a4@(4)
	movl	a4@(4),a2@+	|(calling e-goto)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@,a2@+	|(calling e-label)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(20),a2@+	|(calling d-move)
	movl	a3@(16),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(8),a5	|(calling e-goto)
	movl	a5@,a0
	movl	a0@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(4),a2@+	|(calling e-label)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00032
L00033:
	movl	d7,d0
L00032:
L00020:
	subl	#12,a2	|(calling d-clearreg)
	lea	a2@,a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@,a2
	moveml	a6@(-20),#L00018
	unlk	a6
	rts
L00018 = 15488
L00017 = 20
	.globl	F00034	|(fcn lambda cc-arg)
F00034:
	link	a6,#-L00036
	tstb	sp@(-132)
	moveml	#L00037,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00035:
	movl	d7,a2@+
	movl	d7,a2@+
	lea	a2@,a5	|(calling d-genlab)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a4@
	lea	a2@,a5	|(calling d-genlab)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a4@(4)
	movl	a3@(28),d6
	movl	a3@(24),a5
	cmpl	a5@,d6
	jeq	L00040
	movl	a3@(32),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(36),a2@+
	movl	_bnp,a1
	movl	a3@(40),a5
	movl	a5@,a1@+
	movl	a3@(40),a1@+
	movl	a3@(40),a5
	movl	a4@(8),a5@
	movl	a1,_bnp
	movl	a3@(44),a5	|(calling patom)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subql	#4,a2	|(calling patom)
	movl	a3@(48),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(36),a2@+
	movl	_bnp,a1
	movl	a3@(40),a5
	movl	a5@,a1@+
	movl	a3@(40),a1@+
	movl	a3@(40),a5
	movl	a4@(8),a5@
	movl	a1,_bnp
	movl	a3@(52),a5	|(calling patom)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subql	#4,a2	|(calling patom)
	movl	a3@(56),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(60),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpri)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(64),a5
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00041
	movl	a3@(64),a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	a3@(64),a5
	movl	d0,a5@
	jra	L00042
L00041:
	movl	a3@(64),a5
	movl	a5@,d0
	addql	#4,d0
	movl	a3@(64),a5
	movl	d0,a5@
L00042:
	movl	d7,sp@-
	movl	a3@(68),sp@-
	movl	#3,sp@-
	jbsr	_Inonlocalgo
	jra	L00039
L00040:
	movl	d7,d0
L00039:
	movl	a3@,a5	|(calling length)
	movl	a5@,a0
	movl	a0@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	#_nilatom+0x1400+8,d0
	jne	L00044
	movl	a3@(72),a5
	cmpl	a5@,d7
	jeq	L00044
	movl	a3@(76),a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	movl	a3@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jeq	L00047
	movl	a3@(32),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(36),a2@+
	movl	_bnp,a1
	movl	a3@(40),a5
	movl	a5@,a1@+
	movl	a3@(40),a1@+
	movl	a3@(40),a5
	movl	a4@(8),a5@
	movl	a1,_bnp
	movl	a3@(44),a5	|(calling patom)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subql	#4,a2	|(calling patom)
	movl	a3@(48),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(36),a2@+
	movl	_bnp,a1
	movl	a3@(40),a5
	movl	a5@,a1@+
	movl	a3@(40),a1@+
	movl	a3@(40),a5
	movl	a4@(8),a5@
	movl	a1,_bnp
	movl	a3@(52),a5	|(calling patom)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subql	#4,a2	|(calling patom)
	movl	a3@(56),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(80),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(36),a2@+
	movl	_bnp,a1
	movl	a3@(40),a5
	movl	a5@,a1@+
	movl	a3@(40),a1@+
	movl	a3@(40),a5
	movl	a4@(8),a5@
	movl	a1,_bnp
	movl	a3@,a5	|(calling patom)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subql	#4,a2	|(calling terpri)
	lea	a2@,a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(64),a5
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00048
	movl	a3@(64),a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	a3@(64),a5
	movl	d0,a5@
	jra	L00049
L00048:
	movl	a3@(64),a5
	movl	a5@,d0
	addql	#4,d0
	movl	a3@(64),a5
	movl	d0,a5@
L00049:
	movl	d7,sp@-
	movl	a3@(68),sp@-
	movl	#3,sp@-
	jbsr	_Inonlocalgo
	jra	L00046
L00047:
	movl	a3@,a5
	movl	a5@,a0
	movl	a3@,a5
	movl	a0@,a5@
L00046:
	jra	L00043
L00044:
	movl	d7,d0
L00043:
	movl	a3@(16),a5
	cmpl	a5@,d7
	jne	L00051
	movl	a3@(8),a5
	cmpl	a5@,d7
	jne	L00051
	movl	d7,d0
	jra	L00038
|	jra	L00050
L00051:
	movl	d7,d0
L00050:
	movl	a3@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),d0
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
	jeq	L00054
	movl	a3@,a5
	movl	a5@,a0
	movl	a0@,a0
	movl	a0@(4),a0
	movl	a0@,d0
	cmpl	#0,d0
	jle	L00054
	movl	a3@(84),a2@+	|(calling d-move)
	movl	a3@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(88),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(92),a2@+	|(calling e-sub)
	movl	a3@(96),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(16),a5
	cmpl	a5@,d7
	jeq	L00059
	movl	a3@(100),a2@+	|(calling e-move)
	movl	a3@(16),a5	|(calling e-cvt)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00058
L00059:
	movl	d7,d0
L00058:
	movl	a3@(8),a5
	cmpl	a5@,d7
	jeq	L00061
	movl	a3@(20),a2@+	|(calling e-cmp)
	|(calling e-cvt)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(104),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00060
L00061:
	movl	d7,d0
L00060:
	lea	a2@,a5	|(calling d-handlecc)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00053
L00054:
	movl	a3@,a5
	movl	a5@,a0
	movl	a0@,a1
	cmpl	a1@(4),d7
	jeq	L00063
	movl	a3@,a5
	movl	a5@,a0
	movl	a0@,a0
	movl	a0@(4),d0
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
	jeq	L00062
	movl	#_nilatom+0x1400+0,a2@+
	movl	a3@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00062
L00063:
	movl	a3@(16),a5
	cmpl	a5@,d7
	jeq	L00068
	movl	a3@(108),a2@+	|(calling e-move)
	movl	a3@(16),a5	|(calling e-cvt)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00067
L00068:
	movl	d7,d0
L00067:
	movl	a3@(8),a5
	movl	a5@,a0
	cmpl	a0@(4),d7
	jeq	L00070
	movl	a3@(8),a5	|(calling e-goto)
	movl	a5@,a0
	movl	a0@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00069
L00070:
	movl	d7,d0
L00069:
	jra	L00053
L00062:
	movl	a3@(88),a2@+
	movl	d7,a2@+
	movl	a4@,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	movl	_bnp,a1
	movl	a3@(12),a5
	movl	a5@,a1@+
	movl	a3@(12),a1@+
	movl	a3@(12),a5
	movl	a4@(16),a5@
	movl	a3@(8),a5
	movl	a5@,a1@+
	movl	a3@(8),a1@+
	movl	a3@(8),a5
	movl	a4@(12),a5@
	movl	a3@(16),a5
	movl	a5@,a1@+
	movl	a3@(16),a1@+
	movl	a3@(16),a5
	movl	a4@(8),a5@
	movl	a1,_bnp
	movl	a3@,a5	|(calling d-exp)
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1@(-20),a5
	movl	a1@(-24),a5@
	movl	a1,_bnp
	subl	#24,_bnp
	subl	#12,a2	|(calling e-cmp)
	|(calling e-cvt)
	movl	a3@(88),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(112),a2@+	|(calling e-cvt)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@,a2@+	|(calling e-gotonil)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(116),a2@+	|(calling e-sub)
	movl	a3@(96),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(16),a5
	cmpl	a5@,d7
	jeq	L00072
	movl	a3@(120),a2@+	|(calling e-move)
	movl	a3@(16),a5	|(calling e-cvt)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00071
L00072:
	movl	d7,d0
L00071:
	movl	a3@(8),a5
	cmpl	a5@,d7
	jeq	L00074
	movl	a3@(20),a2@+	|(calling e-cmp)
	|(calling e-cvt)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(124),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00073
L00074:
	movl	d7,d0
L00073:
	lea	a2@,a5	|(calling d-handlecc)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a4@(4),a2@+	|(calling e-goto)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@,a2@+	|(calling e-label)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(16),a5
	cmpl	a5@,d7
	jeq	L00076
	movl	a3@(128),a2@+	|(calling e-move)
	movl	a3@(16),a5	|(calling e-cvt)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(8),a5
	cmpl	a5@,d7
	jeq	L00078
	movl	a3@(20),a2@+	|(calling e-cmp)
	|(calling e-cvt)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(132),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00077
L00078:
	movl	d7,d0
L00077:
	lea	a2@,a5	|(calling d-handlecc)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00075
L00076:
	movl	a3@(8),a5
	movl	a5@,a0
	cmpl	a0@(4),d7
	jeq	L00079
	movl	a3@(8),a5	|(calling e-goto)
	movl	a5@,a0
	movl	a0@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00075
L00079:
	movl	d7,d0
L00075:
	movl	a4@(4),a2@+	|(calling e-label)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00053:
	movl	d7,d0
L00038:
	subql	#8,a2
	moveml	a6@(-24),#L00037
	unlk	a6
	rts
L00037 = 15552
L00036 = 24
	.globl	F00080	|(fcn lambda c-assembler-code)
F00080:
	link	a6,#-L00082
	tstb	sp@(-132)
	moveml	#L00083,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00081:
	movl	a3@(136),a5
	movl	d7,a5@
	movl	a3@(140),a5
	cmpl	a5@,d7
	jeq	L00085
	movl	a3@(148),a2@+
	movl	a3@(144),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	a3@(144),a5
	movl	d0,a5@
	jra	L00084
L00085:
	movl	d7,d0
L00084:
	movl	a3@,a5	|(beginning do)
	movl	a5@,a0
	movl	a0@,a2@+
L00086:
	cmpl	a4@,d7
	jne	L00087
	movl	d7,d0
	jra	L00088
L00087:
	movl	a4@,a1	|(calling e-write1)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@,a5
	movl	a5@,a4@
	jra	L00086
L00088:
	subql	#4,a2
	movl	a3@(140),a5
	cmpl	a5@,d7
	jeq	L00090
	movl	a3@(152),a2@+
	movl	a3@(144),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	a3@(144),a5
	movl	d0,a5@
	movl	a3@(144),a5
	movl	a5@,d0
	jra	L00089
L00090:
	movl	d7,d0
L00089:
	moveml	a6@(-20),#L00083
	unlk	a6
	rts
L00083 = 15488
L00082 = 20
	.globl	F00091	|(fcn lambda cm-assq)
F00091:
	link	a6,#-L00093
	tstb	sp@(-132)
	moveml	#L00094,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00092:
	movl	a3@(156),a2@+
	movl	a3@(160),a2@+
	movl	a3@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(164),a2@+
	movl	a3@,a5
	movl	a5@,a0
	movl	a0@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a3@(168),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(172),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	moveml	a6@(-20),#L00094
	unlk	a6
	rts
L00094 = 15488
L00093 = 20
	.globl	F00095	|(fcn lambda cc-atom)
F00095:
	link	a6,#-L00097
	tstb	sp@(-132)
	moveml	#L00098,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00096:
	movl	a3@,a5	|(calling d-typecmplx)
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a3@(176),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-8),a2
	moveml	a6@(-20),#L00098
	unlk	a6
	rts
L00098 = 15488
L00097 = 20
	.globl	F00099	|(fcn lambda c-bcdcall)
F00099:
	link	a6,#-L00101
	tstb	sp@(-132)
	moveml	#L00102,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00100:
	movl	#_nilatom+0x1400+4,a2@+	|(calling d-callbig)
	movl	a3@,a5
	movl	a5@,a0
	movl	a0@,a2@+
	movl	a3@(180),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+136,a5
	jbsr	a5@
	lea	a2@(-12),a2
	moveml	a6@(-20),#L00102
	unlk	a6
	rts
L00102 = 15488
L00101 = 20
	.globl	F00103	|(fcn lambda cc-bcdp)
F00103:
	link	a6,#-L00105
	tstb	sp@(-132)
	moveml	#L00106,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00104:
	movl	a3@,a5	|(calling d-typesimp)
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a3@(184),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+144,a5
	jbsr	a5@
	lea	a2@(-8),a2
	moveml	a6@(-20),#L00106
	unlk	a6
	rts
L00106 = 15488
L00105 = 20
	.globl	F00107	|(fcn lambda cc-bigp)
F00107:
	link	a6,#-L00109
	tstb	sp@(-132)
	moveml	#L00110,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00108:
	movl	a3@,a5	|(calling d-typesimp)
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a3@(188),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+144,a5
	jbsr	a5@
	lea	a2@(-8),a2
	moveml	a6@(-20),#L00110
	unlk	a6
	rts
L00110 = 15488
L00109 = 20
	.globl	F00111	|(fcn lambda c-*catch)
F00111:
	link	a6,#-L00113
	tstb	sp@(-132)
	moveml	#L00114,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00112:
	movl	a3@(88),a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	lea	a2@,a5	|(calling d-genlab)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	lea	a2@,a5	|(calling d-genlab)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	movl	_bnp,a1
	movl	a3@(12),a5
	movl	a5@,a1@+
	movl	a3@(12),a1@+
	movl	a3@(12),a5
	movl	a4@(8),a5@
	movl	a3@(8),a5
	movl	a5@,a1@+
	movl	a3@(8),a1@+
	movl	a3@(8),a5
	movl	a4@(4),a5@
	movl	a3@(16),a5
	movl	a5@,a1@+
	movl	a3@(16),a1@+
	movl	a3@(16),a5
	movl	a4@,a5@
	movl	a1,_bnp
	movl	a3@,a5	|(calling d-exp)
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	#_nilatom+0x1400+8,a2@+	|(calling d-pushframe)
	movl	a3@(88),a2@+
	movl	a3@(20),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d7,a2@+
	movl	a3@(192),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	a3@(192),a5
	movl	d0,a5@
	movl	a3@(196),a2@+	|(calling e-write2)
	movl	a3@(200),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+160,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(204),a2@+	|(calling e-write2)
	movl	a4@(16),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+160,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(208),a2@+	|(calling e-move)
	movl	a3@(88),a2@+	|(calling e-cvt)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(212),a2@+	|(calling e-write2)
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+160,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@(16),a2@+	|(calling e-label)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@,a5	|(calling d-exp)
	movl	a5@,a0
	movl	a0@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(12),a2@+	|(calling e-label)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling d-popframe)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(216),a5
	movl	a5@,a0
	movl	a3@(216),a5
	movl	a0@,a5@
	movl	a3@(192),a5
	movl	a5@,a0
	movl	a3@(192),a5
	movl	a0@,a5@
	lea	a2@,a5	|(calling d-clearreg)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@,a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1@(-20),a5
	movl	a1@(-24),a5@
	movl	a1,_bnp
	subl	#24,_bnp
	subl	#20,a2
	moveml	a6@(-20),#L00114
	unlk	a6
	rts
L00114 = 15488
L00113 = 20
	.globl	F00115	|(fcn lambda d-pushframe)
F00115:
	link	a6,#-L00117
	tstb	sp@(-132)
	moveml	#L00118,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00116:
	movl	a4@(8),a2@+	|(calling e-move)
	|(calling e-cvt)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(220),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@(4),a2@+	|(calling e-move)
	|(calling e-cvt)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(220),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(224),a2@+	|(calling e-move)
	movl	a4@,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(220),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(228),a5
	cmpl	a5@,d7
	jne	L00120
	movl	a3@(232),a2@+	|(calling e-move)
	movl	a3@(236),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(232),a2@+	|(calling e-move)
	movl	a3@(240),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00119
L00120:
	movl	d7,d0
L00119:
	movl	a3@(244),a2@+	|(calling e-write2)
	movl	a3@(248),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+160,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(88),a2@+	|(calling e-move)
	|(calling e-cvt)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(252),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(256),a2@+
	movl	a3@(216),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	a3@(216),a5
	movl	d0,a5@
	movl	a3@(216),a5
	movl	a5@,d0
	subl	#12,a2
	moveml	a6@(-20),#L00118
	unlk	a6
	rts
L00118 = 15488
L00117 = 20
	.globl	F00121	|(fcn lambda d-popframe)
F00121:
	link	a6,#-L00123
	tstb	sp@(-132)
	moveml	#L00124,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00122:
	movl	a3@(260),a2@+
	movl	a3@(252),a2@+	|(calling e-move)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(264),a2@+	|(calling e-move)
	movl	a4@,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(252),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(268),a2@+	|(calling e-write3)
	movl	a4@,a2@+
	movl	a3@(272),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+176,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	a3@(224),a2@+	|(calling e-add)
	movl	#_nilatom+0x1400+12,a2@+	|(calling *)
	movl	#_nilatom+0x1400+16,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+184,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a0
	movl	a0@,d2
	movl	d2,sp@-
	movl	#_nilatom+0x1400+20,a2@+	|(calling *)
	movl	#_nilatom+0x1400+16,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+184,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a0
	movl	a0@,d2
	movl	sp@+,d0
	addl	d2,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00125
	jbsr	_qnewint
L00125:
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(272),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+192,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#4,a2
	moveml	a6@(-24),#L00124
	unlk	a6
	rts
L00124 = 15492
L00123 = 24
	.globl	F00126	|(fcn lambda c-cond)
F00126:
	link	a6,#-L00128
	tstb	sp@(-132)
	moveml	#L00129,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00127:
	movl	a3@(140),a5
	cmpl	a5@,d7
	jeq	L00131
	movl	a3@(276),a2@+
	movl	a3@(144),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	a3@(144),a5
	movl	d0,a5@
	jra	L00130
L00131:
	movl	d7,d0
L00130:
	movl	a3@,a5	|(beginning do)
	movl	a5@,a0
	movl	a0@,a2@+
	lea	a2@,a5	|(calling d-genlab)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
L00132:
	cmpl	a4@,d7
	jeq	L00135
	cmpl	a4@(16),d7
	jeq	L00133
L00135:
	cmpl	a4@(16),d7
	jne	L00137
	movl	a3@(20),a2@+	|(calling d-move)
	movl	a3@(88),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00136
L00137:
	movl	d7,d0
L00136:
	movl	a4@(4),a2@+	|(calling e-label)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00134
L00133:
	movl	a4@,a1
	movl	a1@(4),d0
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
	andw	#1783,d0
	jeq	L00139
	movl	a3@(32),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(36),a2@+
	movl	_bnp,a1
	movl	a3@(40),a5
	movl	a5@,a1@+
	movl	a3@(40),a1@+
	movl	a3@(40),a5
	movl	a4@(20),a5@
	movl	a1,_bnp
	movl	a3@(44),a5	|(calling patom)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subql	#4,a2	|(calling patom)
	movl	a3@(48),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(36),a2@+
	movl	_bnp,a1
	movl	a3@(40),a5
	movl	a5@,a1@+
	movl	a3@(40),a1@+
	movl	a3@(40),a5
	movl	a4@(20),a5@
	movl	a1,_bnp
	movl	a3@(52),a5	|(calling patom)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subql	#4,a2	|(calling patom)
	movl	a3@(56),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(280),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(36),a2@+
	movl	_bnp,a1
	movl	a3@(40),a5
	movl	a5@,a1@+
	movl	a3@(40),a1@+
	movl	a3@(40),a5
	movl	a4@(20),a5@
	movl	a1,_bnp
	movl	a4@,a1	|(calling patom)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subql	#4,a2	|(calling terpri)
	lea	a2@,a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(64),a5
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00142
	movl	a3@(64),a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	a3@(64),a5
	movl	d0,a5@
	jra	L00143
L00142:
	movl	a3@(64),a5
	movl	a5@,d0
	addql	#4,d0
	movl	a3@(64),a5
	movl	d0,a5@
L00143:
	movl	d7,sp@-
	movl	a3@(68),sp@-
	movl	#3,sp@-
	jbsr	_Inonlocalgo
	jra	L00138
L00139:
	movl	a4@,a0
	movl	a0@(4),a5
	cmpl	a5@,d7
	jne	L00144
	movl	a3@(8),a5
	cmpl	a5@,d7
	jne	L00147
	movl	a3@(16),a5
	cmpl	a5@,d7
	jeq	L00146
L00147:
	movl	a3@(88),d0
	jra	L00145
L00146:
	movl	d7,d0
L00145:
	movl	d0,a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(12),a5
	cmpl	a5@,d7
	jeq	L00148
	movl	a4@,a5
	cmpl	a5@,d7
	jne	L00149
	movl	a3@(180),a2@+
	jra	L00150
L00149:
	movl	d7,a2@+
L00150:
	jra	L00151
L00148:
	movl	d7,a2@+
L00151:
	movl	_bnp,a1
	movl	a3@(12),a5
	movl	a5@,a1@+
	movl	a3@(12),a1@+
	movl	a3@(12),a5
	movl	a4@(28),a5@
	movl	a3@(8),a5
	movl	a5@,a1@+
	movl	a3@(8),a1@+
	movl	a3@(8),a5
	movl	a4@(24),a5@
	movl	a3@(16),a5
	movl	a5@,a1@+
	movl	a3@(16),a1@+
	movl	a3@(16),a5
	movl	a4@(20),a5@
	movl	a1,_bnp
	movl	a4@,a1	|(calling d-exp)
	movl	a1@(4),a0
	movl	a0@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1@(-20),a5
	movl	a1@(-24),a5@
	movl	a1,_bnp
	subl	#24,_bnp
	subl	#12,a2
	jra	L00138
L00144:
	movl	a3@(180),a5
	movl	a5@,a2@+
	movl	a4@,a1
	movl	a1@(4),a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jeq	L00153
	movl	a3@(284),a2@+
	movl	a4@,a1
	movl	a1@(4),a0
	movl	a0@(4),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00154
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00155
	jra	L00152
L00154:
	subql	#8,a2
L00155:
L00153:
	movl	a3@(8),a5
	cmpl	a5@,d7
	jne	L00158
	movl	a3@(16),a5
	cmpl	a5@,d7
	jeq	L00157
L00158:
	movl	a3@(88),d0
	jra	L00156
L00157:
	movl	d7,d0
L00156:
	movl	d0,a2@+
	movl	d7,a2@+
	movl	_bnp,a1
	movl	a3@(8),a5
	movl	a5@,a1@+
	movl	a3@(8),a1@+
	movl	a3@(8),a5
	movl	a4@(24),a5@
	movl	a3@(16),a5
	movl	a5@,a1@+
	movl	a3@(16),a1@+
	movl	a3@(16),a5
	movl	a4@(20),a5@
	movl	a1,_bnp
	movl	a4@,a1	|(calling d-exps)
	movl	a1@(4),a5
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1,_bnp
	subl	#16,_bnp
	subql	#8,a2
	movl	a3@(180),a5
	movl	a5@,a4@(16)
	jra	L00138
L00152:
	movl	d7,a2@+
	movl	d7,a2@+
	lea	a2@,a5	|(calling d-genlab)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a4@(8)
	movl	a4@(8),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	movl	_bnp,a1
	movl	a3@(12),a5
	movl	a5@,a1@+
	movl	a3@(12),a1@+
	movl	a3@(12),a5
	movl	a4@(28),a5@
	movl	a3@(8),a5
	movl	a5@,a1@+
	movl	a3@(8),a1@+
	movl	a3@(8),a5
	movl	a4@(24),a5@
	movl	a3@(16),a5
	movl	a5@,a1@+
	movl	a3@(16),a1@+
	movl	a3@(16),a5
	movl	a4@(20),a5@
	movl	a1,_bnp
	movl	a4@,a1	|(calling d-exp)
	movl	a1@(4),a0
	movl	a0@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1@(-20),a5
	movl	a1@(-24),a5@
	movl	a1,_bnp
	subl	#24,_bnp
	subl	#12,a2	|(calling copy)
	movl	a3@(288),a5
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+216,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(12)
	movl	a3@(8),a5
	cmpl	a5@,d7
	jne	L00161
	movl	a3@(16),a5
	cmpl	a5@,d7
	jeq	L00160
L00161:
	movl	a3@(88),d0
	jra	L00159
L00160:
	movl	d7,d0
L00159:
	movl	d0,a2@+
	movl	d7,a2@+
	movl	_bnp,a1
	movl	a3@(8),a5
	movl	a5@,a1@+
	movl	a3@(8),a1@+
	movl	a3@(8),a5
	movl	a4@(24),a5@
	movl	a3@(16),a5
	movl	a5@,a1@+
	movl	a3@(16),a1@+
	movl	a3@(16),a5
	movl	a4@(20),a5@
	movl	a1,_bnp
	movl	a4@,a1	|(calling d-exps)
	movl	a1@(4),a5
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1,_bnp
	subl	#16,_bnp
	subql	#8,a2
	movl	a4@,a5
	cmpl	a5@,d7
	jne	L00164
	cmpl	a4@(16),d7
	jne	L00163
L00164:
	movl	a4@(4),a2@+	|(calling e-goto)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00162
L00163:
	movl	d7,d0
L00162:
	movl	a4@(8),a2@+	|(calling e-label)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(288),a5
	movl	a4@(12),a5@
L00138:
	movl	a4@,a5
	movl	a5@,a4@
	jra	L00132
L00134:
	subl	#20,a2	|(calling d-clearreg)
	lea	a2@,a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@,a2
	moveml	a6@(-24),#L00129
	unlk	a6
	rts
L00129 = 15552
L00128 = 24
	.globl	F00165	|(fcn lambda c-cons)
F00165:
	link	a6,#-L00167
	tstb	sp@(-132)
	moveml	#L00168,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00166:
	movl	a3@,a5	|(calling d-pushargs)
	movl	a5@,a0
	movl	a0@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(244),a2@+	|(calling e-write2)
	movl	a3@(292),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+160,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(216),a5
	movl	a5@,a0
	movl	a0@,a5
	movl	a5@,d6
	movl	a3@(216),a5
	movl	d6,a5@
	movl	a3@(296),a5
	movl	a5@,a0
	movl	a0@,d2
	movl	d2,d0
	subl	#2,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00169
	jbsr	_qnewint
L00169:
	movl	a3@(296),a5
	movl	d0,a5@
	lea	a2@,a5	|(calling d-clearreg)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@,a2
	moveml	a6@(-28),#L00168
	unlk	a6
	rts
L00168 = 15556
L00167 = 28
	.globl	F00170	|(fcn lambda cc-cxr)
F00170:
	link	a6,#-L00172
	tstb	sp@(-132)
	moveml	#L00173,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00171:
	movl	a3@(180),a5	|(calling d-supercxr)
	movl	a5@,a2@+
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+232,a5
	jbsr	a5@
	lea	a2@(-8),a2
	moveml	a6@(-20),#L00173
	unlk	a6
	rts
L00173 = 15488
L00172 = 20
	.globl	F00174	|(fcn lambda d-supercxr)
F00174:
	link	a6,#-L00176
	tstb	sp@(-132)
	moveml	#L00177,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00175:
	movl	a3@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a3@,a5
	movl	a5@,a0
	movl	a0@,a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a3@(140),a5
	cmpl	a5@,d7
	jeq	L00179
	movl	a3@(300),a2@+
	movl	a3@(304),a2@+
	movl	a3@(308),a2@+
	movl	a3@,a5
	movl	a5@,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(144),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	a3@(144),a5
	movl	d0,a5@
	jra	L00178
L00179:
	movl	d7,d0
L00178:
	movl	a4@(8),d0
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
	jeq	L00181
	movl	a3@(312),a2@+
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	jra	L00180
L00181:
	movl	a4@(8),a2@+	|(calling d-fixnumexp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(316),a2@+	|(calling d-regused)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+248,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(316),a4@(16)
L00180:
	movl	a4@(12),a2@+	|(calling d-simple)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+256,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(20)
	cmpl	d0,d7
	jne	L00185
	movl	a4@(16),d6
	cmpl	a3@(316),d6
	jne	L00187
	movl	a4@(12),a2@+	|(calling d-semisimple)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+264,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(24)
	cmpl	d0,d7
	jne	L00187
	movl	a4@(16),a2@+	|(calling e-move)
	|(calling e-cvt)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(220),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00186
L00187:
	movl	d7,d0
L00186:
	movl	a3@(320),a2@+
	movl	d7,a2@+
	movl	_bnp,a1
	movl	a3@(8),a5
	movl	a5@,a1@+
	movl	a3@(8),a1@+
	movl	a3@(8),a5
	movl	a4@(32),a5@
	movl	a3@(16),a5
	movl	a5@,a1@+
	movl	a3@(16),a1@+
	movl	a3@(16),a5
	movl	a4@(28),a5@
	movl	a1,_bnp
	movl	a4@(12),a2@+	|(calling d-exp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1,_bnp
	subl	#16,_bnp
	subql	#8,a2
	movl	a3@(324),a4@(20)
	movl	a4@(16),d6
	cmpl	a3@(316),d6
	jne	L00190
	cmpl	a4@(24),d7
	jne	L00190
	movl	a3@(328),a2@+	|(calling e-move)
	movl	a4@(16),a2@+	|(calling e-cvt)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00189
L00190:
	movl	d7,d0
L00189:
	jra	L00184
L00185:
	movl	d7,d0
L00184:
	movl	a4@,d6
	cmpl	a3@(332),d6
	jne	L00193
	movl	a4@(16),a2@+	|(calling d-structgen)
	movl	a4@(20),a2@+
	movl	#_nilatom+0x1400+32,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+272,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a4@(16)
	movl	a3@(180),a5	|(calling *break)
	movl	a5@,a2@+
	movl	a3@(336),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+280,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(340),a2@+	|(calling e-write3)
	movl	a4@(16),a2@+
	movl	a3@(344),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+176,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	a3@(244),a2@+	|(calling e-write2)
	movl	a3@(348),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+160,a5
	jbsr	a5@
	lea	a2@(-8),a2
	lea	a2@,a5	|(calling d-clearreg)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(16),a5
	cmpl	a5@,d7
	jeq	L00195
	movl	a3@(16),a5
	movl	a5@,d6
	cmpl	a3@(320),d6
	jeq	L00195
	movl	a3@(320),a2@+	|(calling d-move)
	movl	a3@(16),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00194
L00195:
	movl	d7,d0
L00194:
	movl	a3@(8),a5
	movl	a5@,a0
	cmpl	a0@(4),d7
	jeq	L00198
	movl	a3@(8),a5	|(calling e-goto)
	movl	a5@,a0
	movl	a0@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00197
L00198:
	movl	d7,d0
L00197:
	jra	L00192
L00193:
	movl	a4@(20),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00200
	movl	a3@(352),a2@+
	movl	a4@(20),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00200
	movl	a4@(20),a2@+	|(calling e-move)
	|(calling e-cvt)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(356),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(356),a4@(20)
	jra	L00199
L00200:
	movl	d7,d0
L00199:
	movl	a4@(16),a2@+	|(calling d-structgen)
	movl	a4@(20),a2@+
	movl	#_nilatom+0x1400+16,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+272,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a4@(16)
	movl	a3@(16),a5
	cmpl	a5@,d7
	jeq	L00203
	movl	a4@,d6
	cmpl	a3@(360),d6
	jne	L00205
	movl	a3@(316),d0
	jra	L00204
L00205:
	movl	a3@(16),a5	|(calling e-cvt)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00204:
	jra	L00202
L00203:
	movl	d7,d0
L00202:
	movl	d0,a4@(20)
	cmpl	a4@(20),d7
	jeq	L00207
	cmpl	a4@(4),d7
	jeq	L00209
	movl	a3@(364),a2@+	|(calling e-write3)
	movl	a4@(16),a2@+
	movl	a3@(260),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+176,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	a3@(260),a2@+	|(calling e-move)
	movl	a4@(20),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00208
L00209:
	movl	a4@(16),a2@+	|(calling e-move)
	movl	a4@(20),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00208:
	movl	a4@,d6
	cmpl	a3@(360),d6
	jne	L00211
	movl	a3@(244),a2@+	|(calling e-write2)
	movl	a3@(368),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+160,a5
	jbsr	a5@
	lea	a2@(-8),a2
	lea	a2@,a5	|(calling d-clearreg)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(16),a5
	movl	a5@,d6
	cmpl	a3@(320),d6
	jeq	L00213
	movl	a3@(320),a2@+	|(calling d-move)
	movl	a3@(16),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00212
L00213:
	movl	d7,d0
L00212:
	movl	a3@(8),a5
	movl	a5@,a0
	cmpl	a0@(4),d7
	jeq	L00215
	movl	a3@(8),a5	|(calling e-goto)
	movl	a5@,a0
	movl	a0@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00214
L00215:
	movl	d7,d0
L00214:
	jra	L00210
L00211:
	movl	a3@(20),a2@+	|(calling e-cmp)
	|(calling e-cvt)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(16),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-8),a2
	lea	a2@,a5	|(calling d-handlecc)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@,a2
L00210:
	jra	L00206
L00207:
	movl	a3@(8),a5
	cmpl	a5@,d7
	jeq	L00216
	movl	a4@,d6
	cmpl	a3@(360),d6
	jne	L00218
	movl	a3@(8),a5
	movl	a5@,a0
	cmpl	a0@(4),d7
	jeq	L00220
	movl	a3@(8),a5	|(calling e-goto)
	movl	a5@,a0
	movl	a0@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00219
L00220:
	movl	d7,d0
L00219:
	jra	L00217
L00218:
	movl	a3@(8),a5
	cmpl	a5@,d7
	jeq	L00222
	movl	a3@(20),a2@+	|(calling e-cmp)
	|(calling e-cvt)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(16),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-8),a2
	lea	a2@,a5	|(calling d-handlecc)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00221
L00222:
	movl	d7,d0
L00221:
L00217:
	jra	L00206
L00216:
	movl	d7,d0
L00206:
L00192:
	movl	a3@(140),a5
	cmpl	a5@,d7
	jeq	L00224
	movl	a3@(372),a2@+
	movl	a3@(144),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	a3@(144),a5
	movl	d0,a5@
	movl	a3@(144),a5
	movl	a5@,d0
	jra	L00223
L00224:
	movl	d7,d0
L00223:
	subl	#28,a2
	moveml	a6@(-24),#L00177
	unlk	a6
	rts
L00177 = 15552
L00176 = 24
	.globl	F00225	|(fcn lambda d-semisimple)
F00225:
	link	a6,#-L00227
	tstb	sp@(-132)
	moveml	#L00228,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00226:
	movl	a4@,a2@+	|(calling d-simple)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+256,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00229
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00230
	movl	a3@(376),a2@+
	movl	a4@,a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00230
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00230
	movl	a3@(380),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00230
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a5
	movl	a5@,a0
	movl	a0@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00230
	movl	a3@(384),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a5
	movl	a5@,a0
	movl	a0@(4),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jeq	L00231
	movl	d7,d0
	jra	L00232
L00231:
	movl	a3@(180),d0
L00232:
	jra	L00233
L00230:
	movl	d7,d0
L00233:
	jra	L00234
L00229:
	movl	d0,d0
L00234:
	subql	#4,a2
	moveml	a6@(-24),#L00228
	unlk	a6
	rts
L00228 = 15552
L00227 = 24
	.globl	F00235	|(fcn lambda d-structgen)
F00235:
	link	a6,#-L00237
	tstb	sp@(-132)
	moveml	#L00238,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00236:
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00240
	movl	a4@(4),a1
	movl	a1@(4),d0
	cmpl	a3@(352),d0
	jne	L00240
	movl	a3@(180),a5	|(calling *break)
	movl	a5@,a2@+
	movl	a3@(388),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+280,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00239
L00240:
	movl	a4@(4),d0
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
	andw	#1783,d0
	jne	L00243
	movl	a4@(4),a2@+	|(calling d-move)
	movl	a3@(324),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(324),a2@+	|(calling d-clearreg)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(324),a4@(4)
	jra	L00242
L00243:
	movl	d7,d0
L00242:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00247
	movl	a4@(8),a2@+	|(calling *)
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+184,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00246
L00247:
	movl	a3@(392),a2@+	|(calling d-regused)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+248,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@,a2@+	|(calling e-move)
	movl	a3@(392),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(396),a2@+	|(calling e-write3)
	movl	a3@(400),a2@+
	movl	a3@(392),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+176,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	a3@(404),a2@+
	movl	a3@(408),a2@+
	movl	a4@(4),a2@+
	movl	a3@(412),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
L00246:
L00239:
	subl	#12,a2
	moveml	a6@(-20),#L00238
	unlk	a6
	rts
L00238 = 15488
L00237 = 20
	.globl	F00248	|(fcn lambda c-rplacx)
F00248:
	link	a6,#-L00250
	tstb	sp@(-132)
	moveml	#L00251,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00249:
	movl	a3@(416),a2@+	|(calling d-superrplacx)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+288,a5
	jbsr	a5@
	lea	a2@(-4),a2
	moveml	a6@(-20),#L00251
	unlk	a6
	rts
L00251 = 15488
L00250 = 20
	.globl	F00252	|(fcn lambda d-superrplacx)
F00252:
	link	a6,#-L00254
	tstb	sp@(-132)
	moveml	#L00255,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00253:
	movl	a3@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a3@,a5
	movl	a5@,a0
	movl	a0@,a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	movl	a3@,a5
	movl	a5@,a0
	movl	a0@,a5
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a3@(140),a5
	cmpl	a5@,d7
	jeq	L00257
	movl	a3@(420),a2@+
	movl	a3@(424),a2@+
	movl	a4@,a2@+
	movl	a3@(428),a2@+
	movl	a3@,a2@+
	movl	a3@(432),a2@+
	movl	a3@,a5
	movl	a5@,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(144),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	a3@(144),a5
	movl	d0,a5@
	jra	L00256
L00257:
	movl	d7,d0
L00256:
	movl	a4@(4),d0
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
	jeq	L00259
	movl	a3@(312),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	jra	L00258
L00259:
	movl	a4@(4),a2@+	|(calling d-fixnumexp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(316),a2@+	|(calling d-regused)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+248,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(316),a4@(16)
L00258:
	movl	a4@,d6
	cmpl	a3@(416),d6
	jeq	L00264
	movl	a4@(8),a2@+	|(calling d-simple)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+256,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(20)
	cmpl	d0,d7
	jne	L00263
L00264:
	movl	a4@(16),d6
	cmpl	a3@(316),d6
	jne	L00266
	movl	a4@(8),a2@+	|(calling d-semisimple)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+264,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(24)
	cmpl	d0,d7
	jne	L00266
	movl	a4@(16),a2@+	|(calling d-move)
	movl	a3@(436),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00265
L00266:
	movl	d7,d0
L00265:
	movl	a3@(324),a2@+
	movl	d7,a2@+
	movl	_bnp,a1
	movl	a3@(8),a5
	movl	a5@,a1@+
	movl	a3@(8),a1@+
	movl	a3@(8),a5
	movl	a4@(32),a5@
	movl	a3@(16),a5
	movl	a5@,a1@+
	movl	a3@(16),a1@+
	movl	a3@(16),a5
	movl	a4@(28),a5@
	movl	a1,_bnp
	movl	a4@(8),a2@+	|(calling d-exp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1,_bnp
	subl	#16,_bnp
	subql	#8,a2
	movl	a3@(324),a4@(20)
	movl	a4@(16),d6
	cmpl	a3@(316),d6
	jne	L00269
	cmpl	a4@(24),d7
	jne	L00269
	movl	a3@(440),a2@+	|(calling d-move)
	movl	a4@(16),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00268
L00269:
	movl	d7,d0
L00268:
	jra	L00262
L00263:
	movl	d7,d0
L00262:
	movl	a4@(16),a2@+	|(calling d-structgen)
	movl	a4@(20),a2@+
	movl	a4@,d6
	cmpl	a3@(332),d6
	jne	L00272
	movl	#_nilatom+0x1400+32,d0
	jra	L00271
L00272:
	movl	#_nilatom+0x1400+16,d0
L00271:
	movl	d0,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+272,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a4@(20)
	movl	a4@,d6
	cmpl	a3@(332),d6
	jne	L00274
	movl	a3@(180),a5	|(calling *break)
	movl	a5@,a2@+
	movl	a3@(444),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+280,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(448),a2@+	|(calling d-simple)
	movl	a4@(12),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+256,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(16)
	cmpl	d0,d7
	jeq	L00276
	movl	a3@(340),a2@+	|(calling e-write3)
	movl	a4@(16),a2@+	|(calling e-cvt)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(20),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+176,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00275
L00276:
	movl	a3@(452),a2@+	|(calling e-write3)
	movl	a4@(20),a2@+
	movl	a3@(436),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+176,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	a3@(96),a2@+
	movl	d7,a2@+
	movl	_bnp,a1
	movl	a3@(8),a5
	movl	a5@,a1@+
	movl	a3@(8),a1@+
	movl	a3@(8),a5
	movl	a4@(32),a5@
	movl	a3@(16),a5
	movl	a5@,a1@+
	movl	a3@(16),a1@+
	movl	a3@(16),a5
	movl	a4@(28),a5@
	movl	a1,_bnp
	movl	a4@(12),a2@+	|(calling d-exp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1,_bnp
	subl	#16,_bnp
	subql	#8,a2	|(calling d-clearreg)
	movl	a3@(96),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(340),a2@+	|(calling e-write3)
	movl	a3@(456),a2@+
	movl	a3@(460),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+176,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00275:
	jra	L00273
L00274:
	movl	a4@,d6
	cmpl	a3@(360),d6
	jne	L00277
	movl	a3@(448),a2@+
	movl	a4@(12),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	cmpl	d0,d7
	jeq	L00277
	cmpl	d7,d7
	jne	L00273
L00277:
	movl	a4@(12),a2@+	|(calling d-simple)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+256,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(16)
	cmpl	d0,d7
	jeq	L00279
	movl	a4@(16),a2@+	|(calling e-move)
	|(calling e-cvt)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(20),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00278
L00279:
	movl	a4@,d6
	cmpl	a3@(416),d6
	jne	L00281
	movl	a3@(324),a2@+	|(calling e-move)
	movl	a3@(464),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d7,a2@+
	movl	a3@(216),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	a3@(216),a5
	movl	d0,a5@
	movl	a3@(296),a5
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00282
	movl	a3@(296),a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	a3@(296),a5
	movl	d0,a5@
	jra	L00283
L00282:
	movl	a3@(296),a5
	movl	a5@,d0
	addql	#4,d0
	movl	a3@(296),a5
	movl	d0,a5@
L00283:
	jra	L00280
L00281:
	movl	d7,d0
L00280:
	movl	a3@(364),a2@+	|(calling e-write3)
	movl	a4@(20),a2@+
	movl	a3@(260),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+176,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	a3@(260),a2@+	|(calling e-move)
	movl	a3@(220),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(468),a2@+
	movl	d7,a2@+
	movl	_bnp,a1
	movl	a3@(8),a5
	movl	a5@,a1@+
	movl	a3@(8),a1@+
	movl	a3@(8),a5
	movl	a4@(32),a5@
	movl	a3@(16),a5
	movl	a5@,a1@+
	movl	a3@(16),a1@+
	movl	a3@(16),a5
	movl	a4@(28),a5@
	movl	a1,_bnp
	movl	a4@(12),a2@+	|(calling d-exp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1,_bnp
	subl	#16,_bnp
	subql	#8,a2
	movl	a4@,d6
	cmpl	a3@(416),d6
	jne	L00285
	movl	a3@(472),a2@+	|(calling e-move)
	movl	a3@(96),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(216),a5
	movl	a5@,a0
	movl	a3@(216),a5
	movl	a0@,a5@
	movl	a3@(296),a5
	cmpl	#_nilatom+0x1400-4096,a5@
	jle	L00286
	movl	a3@(296),a5
	cmpl	#_nilatom+0x1400+4092,a5@
	jle	L00287
L00286:
	movl	a3@(296),a5
	movl	a5@,a0
	jbsr	_qoneminus
	movl	a3@(296),a5
	movl	d0,a5@
	jra	L00288
L00287:
	movl	a3@(296),a5
	movl	a5@,d0
	subql	#4,d0
	movl	a3@(296),a5
	movl	d0,a5@
L00288:
	jra	L00284
L00285:
	movl	d7,d0
L00284:
L00278:
L00273:
	movl	a3@(140),a5
	cmpl	a5@,d7
	jeq	L00290
	movl	a3@(476),a2@+
	movl	a3@(144),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	a3@(144),a5
	movl	d0,a5@
	movl	a3@(144),a5
	movl	a5@,d0
	jra	L00289
L00290:
	movl	d7,d0
L00289:
	subl	#28,a2
	moveml	a6@(-24),#L00255
	unlk	a6
	rts
L00255 = 15552
L00254 = 24
	.globl	F00291	|(fcn lambda cc-cxxr)
F00291:
	link	a6,#-L00293
	tstb	sp@(-132)
	moveml	#L00294,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00292:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a3@(140),a5
	cmpl	a5@,d7
	jeq	L00297
	movl	a3@(480),a2@+
	movl	a3@(144),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	a3@(144),a5
	movl	d0,a5@
	jra	L00296
L00297:
	movl	d7,d0
L00296:
	cmpl	a4@,d7
	jne	L00299
	movl	a3@(16),a5
	cmpl	a5@,d7
	jeq	L00301
	movl	a3@(20),a2@+	|(calling d-move)
	movl	a3@(16),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00300
L00301:
	movl	d7,d0
L00300:
	movl	a3@(8),a5
	movl	a5@,a0
	cmpl	a0@,d7
	jeq	L00303
	movl	a3@(8),a5	|(calling e-goto)
	movl	a5@,a0
	movl	a0@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00302
L00303:
	movl	d7,d0
L00302:
	movl	d7,d0
	jra	L00295
|	jra	L00298
L00299:
	movl	d7,d0
L00298:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00305
	movl	a4@,a2@+	|(calling d-bestreg)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+296,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(16)
	cmpl	d0,d7
	jeq	L00305
	movl	a4@(16),a1
	movl	a1@(4),a4@(8)
	movl	a4@(8),a4@(12)
	movl	a4@(16),a5
	movl	a5@,a0
	movl	a0@(4),a4@(20)
	movl	a4@(16),a5
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),a4@(24)
	jra	L00304
L00305:
	movl	a4@,a2@+	|(calling d-simple)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+256,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00307
	movl	a3@(324),a2@+	|(calling d-clearreg)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(320),a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	_bnp,a1
	movl	a3@(12),a5
	movl	a5@,a1@+
	movl	a3@(12),a1@+
	movl	a3@(12),a5
	movl	a4@(40),a5@
	movl	a3@(8),a5
	movl	a5@,a1@+
	movl	a3@(8),a1@+
	movl	a3@(8),a5
	movl	a4@(36),a5@
	movl	a3@(16),a5
	movl	a5@,a1@+
	movl	a3@(16),a1@+
	movl	a3@(16),a5
	movl	a4@(32),a5@
	movl	a1,_bnp
	movl	a4@,a2@+	|(calling d-exp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1@(-20),a5
	movl	a1@(-24),a5@
	movl	a1,_bnp
	subl	#24,_bnp
	subl	#12,a2
	movl	a3@(324),d0
L00307:
	movl	d0,a4@(8)
	movl	d7,a4@(20)
	movl	a4@(4),a4@(24)
L00304:
	cmpl	a4@,d7
	jeq	L00309
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00309
	movl	a3@(180),a5
	movl	a5@,a4@(28)
	jra	L00308
L00309:
	movl	d7,d0
L00308:
	movl	a4@(8),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00312
	movl	a4@(8),a1
	movl	a1@(4),d0
	cmpl	a3@(484),d0
	jeq	L00314
	movl	a4@(8),a0
	movl	a0@(4),d0
	cmpl	a3@(488),d0
	jne	L00312
L00314:
	movl	a4@(8),a2@+	|(calling d-move)
	movl	a3@(320),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(324),a4@(8)
	jra	L00311
L00312:
	movl	d7,d0
L00311:
	movl	a4@(24),a2@+	|(beginning do)
	movl	d7,a2@+
L00315:
	cmpl	a4@(32),d7
	jne	L00316
	movl	a3@(16),a5
	cmpl	a5@,d7
	jeq	L00319
	movl	a4@(12),a2@+	|(calling d-movespec)
	movl	a3@(16),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+304,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00318
L00319:
	movl	d7,d0
L00318:
	movl	a3@(8),a5
	cmpl	a5@,d7
	jeq	L00321
	movl	a3@(492),a2@+
	movl	a4@(12),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00323
	movl	a4@(12),a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a3@(16),a5	|(calling e-cvt)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00325
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00326
	jra	L00323
L00325:
	subql	#8,a2
L00326:
	movl	a3@(20),a2@+	|(calling e-cmp)
	|(calling e-cvt)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(496),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00322
L00323:
	movl	a3@(20),a2@+	|(calling e-cmp)
	|(calling e-cvt)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00322:
	jra	L00320
L00321:
	movl	d7,d0
L00320:
	lea	a2@,a5	|(calling d-handlecc)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00317
L00316:
	movl	a4@(8),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00328
	movl	a3@(500),a2@+
	movl	a4@(32),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00330
	movl	a4@(32),a5
	cmpl	a5@,d7
	jeq	L00333
	movl	a3@(504),a2@+
	movl	a4@(32),a5
	movl	a5@,a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00332
L00333:
	movl	a4@(32),a5
	movl	a5@,a4@(36)
	movl	a3@(408),a2@+
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	movl	a4@(20),a2@+	|(calling append)
	movl	a3@(500),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(20)
	jra	L00331
L00332:
	movl	a4@(32),a5
	movl	a5@,a1
	movl	a1@,a4@(36)
	movl	a3@(492),a2@+
	movl	a3@(408),a2@+
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	movl	a4@(20),a2@+	|(calling append)
	movl	a3@(500),a2@+
	movl	a3@(500),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(20)
L00331:
	jra	L00329
L00330:
	movl	a4@(32),a5
	cmpl	a5@,d7
	jeq	L00336
	movl	a3@(504),a2@+
	movl	a4@(32),a5
	movl	a5@,a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00335
L00336:
	movl	a4@(32),a5
	movl	a5@,a4@(36)
	movl	a3@(508),a2@+
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	movl	a4@(20),a2@+	|(calling append)
	movl	a3@(504),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(20)
	jra	L00334
L00335:
	movl	a4@(32),a5
	movl	a5@,a1
	movl	a1@,a4@(36)
	movl	a3@(492),a2@+
	movl	a3@(508),a2@+
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	movl	a4@(20),a2@+	|(calling append)
	movl	a3@(504),a2@+
	movl	a3@(500),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(20)
L00334:
L00329:
	jra	L00327
L00328:
	movl	a3@(500),a2@+
	movl	a4@(32),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00337
	movl	a3@(492),a2@+
	movl	a4@(8),a2@+	|(calling e-cvt)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(12)
	movl	a4@(12),a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jeq	L00337
	movl	a4@(32),a5
	movl	a5@,a4@(36)
	movl	a3@(492),a2@+
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	movl	a4@(20),a2@+	|(calling append)
	movl	a3@(500),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(20)
	jra	L00327
L00337:
	movl	a4@(8),a2@+	|(calling e-cvt)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(12)
	movl	a4@(32),a4@(36)
L00327:
	cmpl	a4@(36),d7
	jeq	L00340
	movl	a3@(504),a2@+	|(calling d-alloc-register)
	cmpl	a4@(28),d7
	jeq	L00342
	movl	d7,d0
	jra	L00341
L00342:
	movl	a3@(356),d0
L00341:
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+320,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(8)
	movl	a4@(12),a2@+	|(calling d-movespec)
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+304,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00339
L00340:
	movl	d7,d0
L00339:
	movl	a4@(36),a4@(32)
	jra	L00315
L00317:
	subql	#8,a2
	movl	a3@(140),a5
	cmpl	a5@,d7
	jeq	L00344
	movl	a3@(512),a2@+
	movl	a3@(144),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	a3@(144),a5
	movl	d0,a5@
	jra	L00343
L00344:
	movl	d7,d0
L00343:
	movl	d7,d0
L00295:
	subl	#32,a2
	moveml	a6@(-24),#L00294
	unlk	a6
	rts
L00294 = 15552
L00293 = 24
bind_org:
	linker_size = 	129
	trans_size = 	41
	.long	99
	.long	99
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
.asciz "v-form"
.asciz "(t)"
.asciz "g-cc"
.asciz "g-ret"
.asciz "g-loc"
.asciz "Nil"
.asciz "g-ftype"
.asciz "lexpr"
.asciz "\"?Error: \""
.asciz "\"%.2f\""
.asciz "float-format"
.asciz "v-ifile"
.asciz "\": \""
.asciz "g-fname"
.asciz "\": \""
.asciz "\" arg only allowed in lexprs\""
.asciz "er-fatal"
.asciz "Comp-error"
.asciz "fl-inter"
.asciz "g-args"
.asciz "\" arg expression is for non local lexpr \""
.asciz "fixnum"
.asciz "reg"
.asciz "(-4 a4)"
.asciz "d0"
.asciz "(% -8 a4 d0)"
.asciz "(% -8 a4 d0)"
.asciz "(-4 a4)"
.asciz "(fixnum 0)"
.asciz "(-4 a4)"
.asciz "(% -8 a4 d0)"
.asciz "(% -8 a4 d0)"
.asciz "(-4 a4)"
.asciz "(-4 a4)"
.asciz "g-skipcode"
.asciz "fl-comments"
.asciz "g-comments"
.asciz "(assembler code start)"
.asciz "(assembler code end)"
.asciz "do"
.asciz "xx-val"
.asciz "xx-lis"
.asciz "((cdr xx-lis))"
.ascii "(((null xx-lis)) (cond ((eq xx-val (caar xx-lis)) (return (c"
.asciz "ar xx-lis)))))"
.asciz "\"#1783\""
.asciz "t"
.asciz "\"#5\""
.asciz "\"#9\""
.asciz "g-labs"
.asciz "tstl"
.asciz "_retval"
.asciz "jeq"
.asciz "_lispretval"
.asciz "jra"
.asciz "g-locs"
.asciz "\"sp@-\""
.asciz "$"
.asciz "$global-reg$"
.asciz "a2"
.asciz "\"_np\""
.asciz "\"_lbot\""
.asciz "\"jbsr\""
.asciz "_qpushframe"
.asciz "_errp"
.asciz "(catcherrset . 0)"
.asciz "a5"
.asciz "12"
.asciz "movl"
.asciz "sp"
.asciz "(beginning cond)"
.asciz "\"bad cond clause \""
.asciz "(quote t)"
.asciz "g-reguse"
.asciz "_qcons"
.asciz "g-loccnt"
.asciz "Starting"
.asciz "d-supercxr:"
.asciz "vform:"
.asciz "immed"
.asciz "d2"
.asciz "areg"
.asciz "a0"
.asciz "\"sp@+\""
.asciz "flonum-block"
.asciz "\" d-supercxr : flonum stuff not done.\""
.asciz "movq"
.asciz "r4"
.asciz "_qnewdoub"
.asciz "stack"
.asciz "a1"
.asciz "fixnum-block"
.asciz "lea"
.asciz "_qnewint"
.asciz "\"Done with d-supercxr\""
.asciz "getdata"
.asciz "getd"
.asciz "quote"
.asciz "\"d-structgen: bad args(1)\""
.asciz "d6"
.asciz "asll"
.asciz "($ 2)"
.asciz "%"
.asciz "0"
.asciz "(d6)"
.asciz "hunk"
.asciz "starting"
.asciz "d-superrplacx"
.asciz "::"
.asciz "="
.asciz "\"sp@-\""
.asciz "\"sp@+\""
.asciz "\"flonum stuff not in yet\""
.asciz "cdr"
.asciz "movaq"
.asciz "(0 d0)"
.asciz "\"*(sp)+\""
.asciz "(+ a2)"
.asciz "(racc * 0 sp)"
.asciz "(- a2)"
.asciz "(d-superrplacx done)"
.asciz "(starting cc-cxxr)"
.asciz "bind"
.asciz "vstack"
.asciz "*"
.asciz "(0 a5)"
.asciz "d"
.asciz "a"
.asciz "4"
.asciz "(done with cc-cxxr)"
.asciz "d-genlab"
.asciz "d-exp"
.asciz "e-goto"
.asciz "e-label"
.asciz "d-move"
.asciz "d-clearreg"
.asciz "patom"
.asciz "terpri"
.asciz "length"
.asciz "e-sub"
.asciz "e-cvt"
.asciz "e-move"
.asciz "e-cmp"
.asciz "d-handlecc"
.asciz "e-gotonil"
.asciz "e-write1"
.asciz "d-typecmplx"
.asciz "d-callbig"
.asciz "d-typesimp"
.asciz "d-pushframe"
.asciz "e-write2"
.asciz "d-popframe"
.asciz "e-write3"
.asciz "*"
.asciz "e-add"
.asciz "equal"
.asciz "d-exps"
.asciz "copy"
.asciz "d-pushargs"
.asciz "d-supercxr"
.asciz "d-fixnumexp"
.asciz "d-regused"
.asciz "d-simple"
.asciz "d-semisimple"
.asciz "d-structgen"
.asciz "*break"
.asciz "d-superrplacx"
.asciz "d-bestreg"
.asciz "d-movespec"
.asciz "append"
.asciz "d-alloc-register"
.asciz "(putprop (quote chead) t (quote version))"
.ascii "(cond ((not (or (status feature for-vax) (status feature for"
.asciz "-68k))) (sstatus feature for-vax)))"
.ascii "(cond ((not (boundp (quote Liszt-file-names))) (setq Liszt-f"
.ascii "ile-names (ncons \"$Header: funa.l,v 1.11 83/08/28 17:14:35 l"
.ascii "ayer Exp $\"))) (t (setq Liszt-file-names (append1 Liszt-file"
.ascii "-names \"$Header: funa.l,v 1.11 83/08/28 17:14:35 layer Exp $"
.asciz "\"))))"
.asciz "cc-and"
.asciz "cc-arg"
.asciz "c-assembler-code"
.asciz "cm-assq"
.asciz "cc-atom"
.asciz "c-bcdcall"
.asciz "cc-bcdp"
.asciz "cc-bigp"
.asciz "c-*catch"
.asciz "d-pushframe"
.asciz "d-popframe"
.asciz "c-cond"
.asciz "c-cons"
.asciz "cc-cxr"
.asciz "d-supercxr"
.asciz "d-semisimple"
.asciz "d-structgen"
.asciz "c-rplacx"
.asciz "d-superrplacx"
.asciz "cc-cxxr"
lit_end:
.data | this is just for documentation 
.asciz "@(#)Compiled by Liszt 68000 version 8.39a on Thu Feb  2 18:44:47 1989"
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
