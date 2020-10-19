	.globl	F00083	|(fcn macro defmacro)
F00083:
	link	a6,#-L00086
	tstb	sp@(-132)
	moveml	#L00087,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00084:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	_bnp,a1
	movl	a3@,a5
	movl	a5@,a1@+
	movl	a3@,a1@+
	movl	a3@,a5
	movl	a4@(24),a5@
	movl	a3@(4),a5
	movl	a5@,a1@+
	movl	a3@(4),a1@+
	movl	a3@(4),a5
	movl	a4@(20),a5@
	movl	a3@(8),a5
	movl	a5@,a1@+
	movl	a3@(8),a1@+
	movl	a3@(8),a5
	movl	a4@(12),a5@
	movl	a1,_bnp
	movl	a4@,a5	|(calling defmcrosrch)
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),a2@+
	movl	a3@(12),a2@+
	movl	d7,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a4@(4)
	movl	a3@(16),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a3@(20),a2@+
	movl	a3@(24),a2@+
	movl	a3@(28),a2@+
	movl	d7,a2@+
	movl	a4@(4),a2@+	|(beginning do)
L00090:
	cmpl	a4@(56),d7
	jne	L00091
	movl	d7,d0
	jra	L00092
L00091:
	movl	a4@(56),a1
	movl	a1@(4),a0
	movl	a0@,a2@+
	movl	a4@(52),a2@+
	jbsr	_qcons
	movl	d0,a4@(52)
	movl	a4@(56),a5
	movl	a5@,a4@(56)
	jra	L00090
L00092:
	subql	#4,a2	|(calling nreverse)
	movl	a4@(52),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	movl	d0,a2@+
	movl	d7,a2@+	|(calling append)
	movl	a3@(8),a5	|(beginning do)
	movl	a5@,a2@+
L00095:
	cmpl	a4@(60),d7
	jne	L00096
	movl	d7,d0
	jra	L00097
L00096:
	movl	a4@(60),a1
	movl	a1@(4),a2@+
	movl	a3@(32),a2@+
	movl	a3@(36),a2@+
	movl	a4@(64),a5
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),a2@+
	movl	a4@(64),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a3@(40),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(64),a5	|(calling append)
	movl	a5@,a1
	movl	a1@,a5
	movl	a5@,a0
	movl	a0@(4),a4@(8)
	cmpl	a0@(4),d7
	jeq	L00099
	movl	a3@(36),a2@+
	movl	a4@(8),a2@+
	movl	a3@(44),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	jra	L00098
L00099:
	movl	d7,d0
L00098:
	movl	d0,a2@+
	movl	a3@(36),a2@+
	movl	a4@(64),a5
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),a2@+
	movl	a3@(48),a2@+
	movl	a4@(64),a5
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(52),a2@+
	movl	a3@(36),a2@+
	movl	a4@(64),a5
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),a2@+
	movl	a4@(64),a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#4,a2
	movl	d0,a2@+
	movl	a4@(56),a2@+
	jbsr	_qcons
	movl	d0,a4@(56)
	movl	a4@(60),a5
	movl	a5@,a4@(60)
	jra	L00095
L00097:
	subql	#4,a2	|(calling nreverse)
	movl	a4@(56),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	movl	d0,a2@+
	movl	a3@(4),a5	|(calling append)
	cmpl	a5@,d7
	jeq	L00101
	movl	a3@(28),a2@+	|(calling eval)
	movl	d7,a2@+
	movl	a4@(4),a2@+	|(beginning do)
L00104:
	cmpl	a4@(68),d7
	jne	L00105
	movl	d7,d0
	jra	L00106
L00105:
	movl	a4@(68),a1
	movl	a1@(4),a0
	movl	a0@,a2@+
	movl	a4@(64),a2@+
	jbsr	_qcons
	movl	d0,a4@(64)
	movl	a4@(68),a5
	movl	a5@,a4@(68)
	jra	L00104
L00106:
	subql	#4,a2	|(calling nreverse)
	movl	a4@(64),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	movl	d0,a2@+
	movl	a4@,a5	|(calling append)
	movl	a5@,a1
	movl	a1@,a5
	movl	a5@,a2@+
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+	|(calling append)
	movl	a4@(4),a2@+	|(beginning do)
L00109:
	cmpl	a4@(68),d7
	jne	L00110
	movl	d7,d0
	jra	L00111
L00110:
	movl	a4@(68),a1
	movl	a1@(4),a2@+
	movl	a3@(56),a2@+
	movl	a4@(72),a5
	movl	a5@,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#4,a2
	movl	d0,a2@+
	movl	a4@(64),a2@+
	jbsr	_qcons
	movl	d0,a4@(64)
	movl	a4@(68),a5
	movl	a5@,a4@(68)
	jra	L00109
L00111:
	subql	#4,a2	|(calling nreverse)
	movl	a4@(64),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	movl	d0,a2@+
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(28)
	movl	a3@(32),a2@+
	movl	a3@(4),a5
	movl	a5@,a2@+
	movl	a3@(60),a2@+
	movl	a3@(64),a2@+
	movl	a3@(56),a2@+
	movl	a3@(28),a2@+
	movl	d7,a2@+
	movl	a4@(4),a2@+	|(beginning do)
L00114:
	cmpl	a4@(88),d7
	jne	L00115
	movl	d7,d0
	jra	L00116
L00115:
	movl	a4@(88),a1
	movl	a1@(4),a0
	movl	a0@,a2@+
	movl	a4@(84),a2@+
	jbsr	_qcons
	movl	d0,a4@(84)
	movl	a4@(88),a5
	movl	a5@,a4@(88)
	jra	L00114
L00116:
	subql	#4,a2	|(calling nreverse)
	movl	a4@(84),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	movl	d0,a2@+
	movl	a4@(28),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+	|(calling append)
	movl	a4@(4),a2@+	|(beginning do)
L00119:
	cmpl	a4@(84),d7
	jne	L00120
	movl	d7,d0
	jra	L00121
L00120:
	movl	a4@(84),a1
	movl	a1@(4),a0
	movl	a0@,a2@+
	movl	a4@(80),a2@+
	jbsr	_qcons
	movl	d0,a4@(80)
	movl	a4@(84),a5
	movl	a5@,a4@(84)
	jra	L00119
L00121:
	subql	#4,a2	|(calling nreverse)
	movl	a4@(80),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	movl	d0,a2@+
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(52),a2@+
	movl	a4@,a5	|(calling append)
	movl	a5@,a1
	movl	a1@,a5
	movl	a5@,a2@+
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	jra	L00100
L00101:
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@,a5
	movl	a5@,d0
L00100:
	movl	d0,a2@+
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+	|(calling append)
	movl	a4@(4),a2@+	|(beginning do)
L00124:
	cmpl	a4@(56),d7
	jne	L00125
	movl	d7,d0
	jra	L00126
L00125:
	movl	a4@(56),a1
	movl	a1@(4),a2@+
	movl	a4@(60),a1
	movl	a1@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00128
	movl	a4@(60),a0
	movl	a0@(4),a1
	movl	a1@(4),d0
	jra	L00127
L00128:
	movl	a4@(60),a0
	cmpl	a0@(4),d7
	jeq	L00129
	movl	a4@(60),a1
	movl	a1@(4),a2@+
	movl	a3@(68),a2@+
	jbsr	_qcons
	jra	L00127
L00129:
	movl	d7,d0
L00127:
	subql	#4,a2
	movl	d0,a2@+
	movl	a4@(52),a2@+
	jbsr	_qcons
	movl	d0,a4@(52)
	movl	a4@(56),a5
	movl	a5@,a4@(56)
	jra	L00124
L00126:
	subql	#4,a2	|(calling nreverse)
	movl	a4@(52),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	movl	d0,a2@+
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	movl	a3@(72),a5
	cmpl	a5@,d7
	jeq	L00131
	movl	a3@(76),a2@+
	movl	a3@(80),a2@+
	movl	a4@(16),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00130
L00131:
	movl	a4@(16),d0
L00130:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1@(-20),a5
	movl	a1@(-24),a5@
	movl	a1,_bnp
	subl	#24,_bnp
	subl	#32,a2
	moveml	a6@(-20),#L00087
	unlk	a6
	rts
L00087 = 15488
L00086 = 20
	.globl	F00132	|(fcn lambda defmcrosrch)
F00132:
	link	a6,#-L00135
	tstb	sp@(-132)
	moveml	#L00136,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00133:
	cmpl	a4@,d7
	jne	L00138
	movl	a4@(8),d0
	jra	L00137
L00138:
	movl	a4@,d0
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
	movl	a3@(84),a2@+	|(calling concatl)
	movl	a4@(4),a2@+	|(calling append)
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(8),a2@+
	jbsr	_qcons
	jra	L00137
L00139:
	movl	a4@,a1
	movl	a1@(4),d5
	movl	a3@(88),d0
	cmpl	d0,d7
	jeq	L00142
	movl	d0,a0
L00144:
	cmpl	a0@(4),d5
	jeq	L00143
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00144
	movl	a0,d0
	jra	L00142
L00143:
	movl	a4@,a5	|(calling append)
	|(calling defmcrosrch)
	movl	a5@,a0
	movl	a0@(4),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	movl	a4@,a5	|(calling defmcrosrch)
	movl	a5@,a1
	movl	a1@,a2@+
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00137
L00142:
	movl	a4@,a0
	movl	a0@(4),d0
	cmpl	a3@(92),d0
	jne	L00145
	movl	a4@,a5	|(calling defmcrooption)
	movl	a5@,a2@+
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00137
L00145:
	movl	a4@,a1
	movl	a1@(4),d0
	cmpl	a3@(96),d0
	jne	L00146
	movl	a4@,a5
	movl	a5@,a0
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
	andw	#1783,d0
	jeq	L00148
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	jra	L00147
L00148:
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),d0
L00147:
	movl	a3@,a5
	movl	d0,a5@
	movl	a3@(100),a2@+
	movl	d7,a2@+
	movl	a3@,a5	|(beginning do)
	movl	a5@,a2@+
L00153:
	cmpl	a4@(20),d7
	jne	L00154
	movl	d7,d0
	jra	L00155
L00154:
	movl	a4@(20),a1
	movl	a1@(4),a2@+
	movl	a3@(104),a2@+
	movl	a4@(24),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#4,a2
	movl	d0,a2@+
	movl	a4@(16),a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	movl	a4@(20),a5
	movl	a5@,a4@(20)
	jra	L00153
L00155:
	subql	#4,a2	|(calling nreverse)
	movl	a4@(16),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	a3@(4),a5
	movl	d0,a5@
	movl	a4@,a5	|(calling defmcrosrch)
	movl	a5@,a1
	movl	a1@,a2@+
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	movl	_lbot,a5
	movl	a4,a5
	movl	a2@(-12),a5@
	movl	a2@(-8),a5@(4)
	movl	a2@(-4),a5@(8)
	movl	a5,a2
	addl	#12,a2
	jra	L00133
|	jra	L00137
L00146:
	movl	a4@,a0
	movl	a0@(4),d0
	cmpl	a3@(108),d0
	jne	L00156
	movl	d7,a2@+
	movl	a4@,a5	|(beginning do)
	movl	a5@,a2@+
L00159:
	cmpl	a4@(16),d7
	jne	L00160
	movl	d7,d0
	jra	L00161
L00160:
	movl	a4@(16),a1
	movl	a1@(4),a2@+
	movl	a4@(20),d0
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
	jeq	L00163
	movl	a3@(112),a2@+
	movl	a4@(20),a2@+
	jbsr	_qcons
	jra	L00162
L00163:
	movl	a4@(20),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(20),a1
	movl	a1@(4),a2@+
	jbsr	_qcons
L00162:
	subql	#4,a2
	movl	d0,a2@+
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	movl	a4@(16),a5
	movl	a5@,a4@(16)
	jra	L00159
L00161:
	subql	#4,a2	|(calling nreverse)
	movl	a4@(12),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	jra	L00137
L00156:
	movl	a4@,a1	|(calling append)
	|(calling defmcrosrch)
	movl	a1@(4),a2@+
	movl	a3@(116),a2@+
	movl	a4@(4),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	movl	a4@,a5	|(calling defmcrosrch)
	movl	a5@,a2@+
	movl	a3@(120),a2@+
	movl	a4@(4),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(8),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00137:
	subl	#12,a2
	moveml	a6@(-24),#L00136
	unlk	a6
	rts
L00136 = 15520
L00135 = 24
	.globl	F00166	|(fcn lambda defmcrooption)
F00166:
	link	a6,#-L00169
	tstb	sp@(-132)
	moveml	#L00170,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00167:
	movl	d7,a2@+
	movl	d7,a2@+
	cmpl	a4@,d7
	jne	L00172
	movl	a4@(8),d0
	jra	L00171
L00172:
	movl	a4@,a1
	movl	a1@(4),d5
	movl	a3@(124),d0
	cmpl	d0,d7
	jeq	L00173
	movl	d0,a0
L00175:
	cmpl	a0@(4),d5
	jeq	L00174
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00175
	movl	a0,d0
	jra	L00173
L00174:
	movl	a4@,a5	|(calling defmcrosrch)
	movl	a5@,a0
	movl	a0@(4),a2@+
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00171
L00173:
	movl	a4@,a0
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
	andw	#1783,d0
	jeq	L00177
	movl	a4@,a1
	movl	a1@(4),a4@(12)
	jra	L00176
L00177:
	movl	a4@,a1
	movl	a1@(4),a0
	movl	a0@(4),a4@(12)
	movl	a4@,a1
	movl	a1@(4),a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	movl	a3@(84),a2@+	|(calling concatl)
	movl	a4@(4),a2@+	|(calling append)
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(12),a2@+
	movl	a4@,a1
	movl	a1@(4),a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a4@(16)
	movl	a4@(16),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(8),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	a3@(8),a5
	movl	d0,a5@
L00176:
	movl	a4@,a5	|(calling defmcrooption)
	movl	a5@,a2@+
	movl	a3@(120),a2@+
	movl	a4@(4),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(128),a2@+	|(calling concatl)
	movl	a4@(4),a2@+	|(calling append)
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	cmpl	a4@(16),d7	|(calling append)
	jeq	L00181
	movl	d7,a2@+
	movl	a4@(16),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	jra	L00180
L00181:
	movl	d7,d0
L00180:
	movl	d0,a2@+
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	_lbot,a5
	movl	a4,a5
	movl	a2@(-12),a5@
	movl	a2@(-8),a5@(4)
	movl	a2@(-4),a5@(8)
	movl	a5,a2
	addl	#12,a2
	jra	L00167
L00171:
	subl	#20,a2
	moveml	a6@(-24),#L00170
	unlk	a6
	rts
L00170 = 15520
L00169 = 24
	.globl	F00182	|(fcn lambda lambdacvt)
F00182:
	link	a6,#-L00185
	tstb	sp@(-132)
	moveml	#L00186,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00183:
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
	movl	a4@,a1	|(beginning do)
	movl	a1@(4),a2@+
	movl	#_nilatom+0x1400+4,a2@+
L00188:
	cmpl	a4@(44),d7
	jne	L00189
	movl	d7,d0
	jra	L00190
L00189:
	movl	a4@(44),a1
	movl	a1@(4),a4@(20)
	movl	a4@(20),d5
	movl	a3@(132),d0
	cmpl	d0,d7
	jeq	L00192
	movl	d0,a0
L00194:
	cmpl	a0@(4),d5
	jeq	L00193
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00194
	movl	a0,d0
	jra	L00192
L00193:
	movl	a3@(136),a4@(24)
	cmpl	#_nilatom+0x1400-4096,a4@(48)
	jle	L00195
	cmpl	#_nilatom+0x1400+4092,a4@(48)
	jle	L00196
L00195:
	movl	a4@(48),a0
	jbsr	_qoneminus
	movl	d0,a4@(48)
	jra	L00197
L00196:
	movl	a4@(48),d0
	subql	#4,d0
	movl	d0,a4@(48)
L00197:
	jra	L00191
L00192:
	movl	a3@(108),d6
	cmpl	a4@(20),d6
	jne	L00198
	movl	a3@(108),a4@(24)
	cmpl	#_nilatom+0x1400-4096,a4@(48)
	jle	L00199
	cmpl	#_nilatom+0x1400+4092,a4@(48)
	jle	L00200
L00199:
	movl	a4@(48),a0
	jbsr	_qoneminus
	movl	d0,a4@(48)
	jra	L00201
L00200:
	movl	a4@(48),d0
	subql	#4,d0
	movl	d0,a4@(48)
L00201:
	jra	L00191
L00198:
	movl	a3@(92),d6
	cmpl	a4@(20),d6
	jne	L00202
	movl	a3@(92),a4@(24)
	cmpl	#_nilatom+0x1400-4096,a4@(48)
	jle	L00203
	cmpl	#_nilatom+0x1400+4092,a4@(48)
	jle	L00204
L00203:
	movl	a4@(48),a0
	jbsr	_qoneminus
	movl	d0,a4@(48)
	jra	L00205
L00204:
	movl	a4@(48),d0
	subql	#4,d0
	movl	d0,a4@(48)
L00205:
	jra	L00191
L00202:
	cmpl	a4@(24),d7
	jne	L00206
	movl	a4@(20),a2@+
	movl	a4@(48),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(4),a2@+
	jbsr	_qcons
	movl	d0,a4@(4)
	jra	L00191
L00206:
	movl	a4@(24),d6
	cmpl	a3@(136),d6
	jne	L00207
	cmpl	a4@(16),d7
	jeq	L00209
	movl	a3@(140),a2@+	|(calling error)
	movl	a4@(20),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00208
L00209:
	movl	d7,d0
L00208:
	movl	a4@(20),a2@+
	movl	a4@(48),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	jra	L00191
L00207:
	movl	a4@(24),d6
	cmpl	a3@(108),d6
	jne	L00210
	movl	a4@(20),d0
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
	jeq	L00212
	movl	a4@(20),a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	jra	L00211
L00212:
	movl	a4@(20),a0
	movl	a0@(4),a2@+
	movl	a4@(20),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
L00211:
	jra	L00191
L00210:
	movl	a4@(24),d6
	cmpl	a3@(92),d6
	jne	L00215
	movl	a4@(20),d0
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
	jeq	L00217
	movl	a4@(20),a2@+
	movl	a4@(48),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(8),a2@+
	jbsr	_qcons
	movl	d0,a4@(8)
	jra	L00216
L00217:
	movl	a4@(20),a0
	movl	a0@(4),a2@+
	movl	a4@(48),a2@+
	movl	a4@(20),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(8),a2@+
	jbsr	_qcons
	movl	d0,a4@(8)
L00216:
	jra	L00191
L00215:
	movl	d7,d0
L00191:
	movl	a4@(44),a5
	movl	a5@,a2@+
	cmpl	#_nilatom+0x1400+4088,a4@(48)
	jle	L00220
	movl	a4@(48),a0
	jbsr	_qoneplus
	movl	d0,a4@(48)
	jra	L00221
L00220:
	movl	a4@(48),d0
	addql	#4,d0
	movl	d0,a4@(48)
L00221:
	movl	a2@-,a4@(44)
	jra	L00188
L00190:
	subql	#8,a2	|(calling nreverse)
	movl	a4@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(4)
	movl	a4@(8),a2@+	|(calling nreverse)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(8)
	movl	a4@(12),a2@+	|(calling nreverse)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(12)
	movl	a4@(4),a2@+	|(calling length)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(36)
	cmpl	a4@(16),d7
	jeq	L00223
	movl	d7,d0
	jra	L00222
L00223:
	movl	a4@(8),a2@+	|(calling length)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a0
	movl	a0@,d2
	movl	d2,d0
	movl	a4@(36),a5
	addl	a5@,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00224
	jbsr	_qnewint
L00224:
L00222:
	movl	d0,a4@(40)
	cmpl	a4@(8),d7
	jne	L00227
	cmpl	a4@(16),d7
	jeq	L00226
L00227:
	lea	a2@,a5	|(calling gensym)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a4@(32)
	jra	L00225
L00226:
	movl	d7,d0
L00225:
	cmpl	a4@(8),d7
	jeq	L00229
	movl	d7,a2@+
	movl	a4@(8),a2@+	|(beginning do)
L00232:
	cmpl	a4@(48),d7
	jne	L00233
	movl	d7,d0
	jra	L00234
L00233:
	movl	a4@(48),a1
	movl	a1@(4),a2@+
	movl	a3@(32),a2@+
	movl	a3@(144),a2@+
	movl	a4@(52),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@(32),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(36),a2@+
	movl	a4@(52),a1
	movl	a1@(4),a2@+
	movl	a4@(52),a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(52),a2@+
	movl	a3@(36),a2@+
	movl	a4@(52),a1
	movl	a1@(4),a2@+
	movl	a3@(148),a2@+
	movl	a4@(52),a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(52),a5
	movl	a5@,a1
	movl	a1@,a5
	cmpl	a5@,d7
	jeq	L00236
	movl	a3@(36),a2@+
	movl	a4@(52),a5
	movl	a5@,a0
	movl	a0@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a3@(152),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00235
L00236:
	movl	d7,d0
L00235:
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#4,a2
	movl	d0,a2@+
	movl	a4@(44),a2@+
	jbsr	_qcons
	movl	d0,a4@(44)
	movl	a4@(48),a5
	movl	a5@,a4@(48)
	jra	L00232
L00234:
	subql	#4,a2	|(calling nreverse)
	movl	a4@(44),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	movl	d0,a4@(28)
	jra	L00228
L00229:
	movl	d7,d0
L00228:
	cmpl	a4@(16),d7
	jeq	L00238
	lea	a2@,a5	|(calling gensym)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	lea	a2@,a5	|(calling gensym)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	movl	a4@(16),a1
	movl	a1@(4),a2@+
	movl	a3@(156),a2@+
	movl	a4@(44),a2@+
	movl	a4@(32),a2@+
	movl	a3@(160),a2@+
	movl	a4@(44),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(48),a2@+
	movl	d7,a2@+
	movl	a3@(164),a2@+
	movl	a3@(148),a2@+
	movl	a4@(44),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(48),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(168),a2@+
	movl	a4@(44),a2@+
	movl	a4@(16),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(48),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	subql	#8,a2
	jra	L00237
L00238:
	movl	d7,d0
L00237:
	movl	d7,a2@+
	cmpl	a4@(12),d7
	jne	L00241
	cmpl	a4@(16),d7
	jeq	L00240
L00241:
	movl	a3@(172),a2@+
	movl	a4@(16),a2@+	|(calling append)
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@,a5	|(calling append)
	movl	a5@,a2@+
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	jra	L00239
L00240:
	movl	a4@,a5
	movl	a5@,d0
L00239:
	movl	d0,a4@(44)
	cmpl	a4@(32),d7
	jne	L00243
	movl	a3@(28),a2@+
	movl	d7,a2@+
	movl	a4@(4),a2@+	|(beginning do)
L00246:
	cmpl	a4@(56),d7
	jne	L00247
	movl	d7,d0
	jra	L00248
L00247:
	movl	a4@(56),a1
	movl	a1@(4),a0
	movl	a0@(4),a2@+
	movl	a4@(52),a2@+
	jbsr	_qcons
	movl	d0,a4@(52)
	movl	a4@(56),a5
	movl	a5@,a4@(56)
	jra	L00246
L00248:
	subql	#4,a2	|(calling nreverse)
	movl	a4@(52),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	movl	d0,a2@+
	movl	a3@(176),a2@+
	movl	a3@(180),a2@+
	movl	a4@(36),a2@+
	movl	a4@(40),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(44),a2@+	|(calling append)
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#4,a2
	jra	L00187
|	jra	L00242
L00243:
	movl	a3@(184),a2@+
	movl	a4@(32),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(176),a2@+
	movl	a3@(180),a2@+
	movl	a4@(36),a2@+
	movl	a4@(40),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(28),a2@+
	movl	d7,a2@+	|(calling nconc)
	movl	a4@(4),a2@+	|(beginning do)
L00251:
	cmpl	a4@(68),d7
	jne	L00252
	movl	d7,d0
	jra	L00253
L00252:
	movl	a4@(68),a1
	movl	a1@(4),a0
	movl	a0@(4),a2@+
	movl	a4@(64),a2@+
	jbsr	_qcons
	movl	d0,a4@(64)
	movl	a4@(68),a5
	movl	a5@,a4@(68)
	jra	L00251
L00253:
	subql	#4,a2	|(calling nreverse)
	movl	a4@(64),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	movl	d0,a2@+
	movl	d7,a2@+
	movl	d7,a2@+	|(beginning do)
	movl	d7,a2@+
	movl	a4@(8),a2@+
L00258:
	cmpl	a4@(80),d7
	jne	L00259
	movl	d7,d0
	jra	L00260
L00259:
	movl	a4@(80),a1
	movl	a1@(4),a2@+
	movl	a4@(84),a1
	movl	a1@(4),a2@+
	movl	a4@(84),a5
	movl	a5@,a0
	movl	a0@,a5
	cmpl	a5@,d7
	jeq	L00264
	movl	a4@(84),a5
	movl	a5@,a1
	movl	a1@,a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	jra	L00263
L00264:
	movl	d7,d0
L00263:
	movl	d0,a2@+
	jbsr	_qcons
	subql	#4,a2
	movl	d0,a4@(72)
	cmpl	d0,d7
	jeq	L00262
	cmpl	a4@(76),d7
	jeq	L00266
L00267:	|(beginning do)
	movl	a4@(76),a5
	cmpl	a5@,d7
	jne	L00268
	movl	d7,d0
	jra	L00269
L00268:
	movl	a4@(76),a5
	movl	a5@,a4@(76)
	jra	L00267
L00269:
	movl	a4@(76),a0
	movl	a4@(72),a0@
	movl	a0,d0
	jra	L00265
L00266:
	movl	a4@(72),a4@(76)
	movl	a4@(76),a4@(68)
L00265:
	jra	L00261
L00262:
	movl	d7,d0
L00261:
	movl	a4@(80),a5
	movl	a5@,a4@(80)
	jra	L00258
L00260:
	subl	#12,a2
	movl	a4@(68),d0
	subql	#4,a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@(28),a2@+	|(calling append)
	movl	a4@(44),a2@+	|(calling append)
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+	|(calling append)
	|(calling nconc)
	movl	a4@(4),a2@+	|(beginning do)
L00272:
	cmpl	a4@(68),d7
	jne	L00273
	movl	d7,d0
	jra	L00274
L00273:
	movl	a4@(68),a1
	movl	a1@(4),a2@+
	movl	a3@(148),a2@+
	movl	a4@(72),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#4,a2
	movl	d0,a2@+
	movl	a4@(64),a2@+
	jbsr	_qcons
	movl	d0,a4@(64)
	movl	a4@(68),a5
	movl	a5@,a4@(68)
	jra	L00272
L00274:
	subql	#4,a2	|(calling nreverse)
	movl	a4@(64),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	movl	d0,a2@+
	movl	d7,a2@+
	movl	d7,a2@+	|(beginning do)
	movl	d7,a2@+
	movl	a4@(8),a2@+
L00279:
	cmpl	a4@(80),d7
	jne	L00280
	movl	d7,d0
	jra	L00281
L00280:
	movl	a4@(80),a1
	movl	a1@(4),a2@+
	movl	a4@(84),a5
	movl	a5@,a1
	movl	a1@,a5
	cmpl	a5@,d7
	jeq	L00285
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00284
L00285:
	movl	d7,a2@+
	movl	d7,a2@+
	jbsr	_qcons
L00284:
	subql	#4,a2
	movl	d0,a4@(72)
	cmpl	d0,d7
	jeq	L00283
	cmpl	a4@(76),d7
	jeq	L00287
L00288:	|(beginning do)
	movl	a4@(76),a5
	cmpl	a5@,d7
	jne	L00289
	movl	d7,d0
	jra	L00290
L00289:
	movl	a4@(76),a5
	movl	a5@,a4@(76)
	jra	L00288
L00290:
	movl	a4@(76),a0
	movl	a4@(72),a0@
	movl	a0,d0
	jra	L00286
L00287:
	movl	a4@(72),a4@(76)
	movl	a4@(76),a4@(68)
L00286:
	jra	L00282
L00283:
	movl	d7,d0
L00282:
	movl	a4@(80),a5
	movl	a5@,a4@(80)
	jra	L00279
L00281:
	subl	#12,a2
	movl	a4@(68),d0
	subql	#4,a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#4,a2
	jra	L00187
L00242:
	subql	#4,a2
	movl	d7,d0
L00187:
	subl	#44,a2
	moveml	a6@(-32),#L00186
	unlk	a6
	rts
L00186 = 15588
L00185 = 32
	.globl	F00291	|(fcn macro defcmacro)
F00291:
	link	a6,#-L00294
	tstb	sp@(-132)
	moveml	#L00295,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00292:
	movl	a4@,a5	|(calling concat)
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a3@(188),a2@+
	lea	a2@,a5	|(calling gensym)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	movl	a3@(192),a2@+
	movl	a3@(196),a2@+
	movl	a3@(200),a2@+
	movl	a4@(4),a2@+
	movl	a4@,a5	|(calling append)
	movl	a5@,a1
	movl	a1@,a2@+
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(204),a2@+
	movl	a3@(56),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(208),a2@+
	movl	a3@(56),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(212),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(216),a2@+
	movl	a3@(56),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
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
	subql	#8,a2
	moveml	a6@(-20),#L00295
	unlk	a6
	rts
L00295 = 15488
L00294 = 20
	.globl	F00296	|(fcn macro setf)
F00296:
	link	a6,#-L00299
	tstb	sp@(-132)
	moveml	#L00300,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00297:
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a5
	movl	a5@,a2@+
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
	jeq	L00302
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00305
	movl	a3@(220),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00305:
	movl	a3@(36),a2@+
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00301
L00302:
	movl	d7,a2@+	|(beginning do)
	movl	d7,a2@+
L00306:
	cmpl	d7,d7
	jeq	L00307
	movl	d7,d0
	jra	L00308
L00307:
	movl	a4@(4),a1
	movl	a1@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00309
	movl	a4@(4),a2@+	|(calling setf-record-package-access-check)
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(20)
	cmpl	d0,d7
	jeq	L00309
	movl	a4@(20),d0
	jra	L00308
L00309:
	movl	a4@(4),a1
	movl	a1@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00310
	movl	a3@(220),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00310:
	movl	a4@(4),a1
	movl	a1@(4),a2@+
	movl	a3@(224),a2@+
	jbsr	_qget
	movl	d0,a4@(16)
	cmpl	d0,d7
	jeq	L00311
	movl	a4@(16),a2@+	|(calling apply)
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	movl	a4@(12),a2@+	|(calling append)
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00308
L00311:
	movl	a4@(4),a1	|(calling setf-check-cad+r)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00312
	movl	a4@(4),a1
	movl	a1@(4),a2@+
	movl	a3@(228),a2@+
	jbsr	_qget
	movl	d0,a4@(16)
	cmpl	d0,d7
	jne	L00314
	movl	a4@(4),a1
	movl	a1@(4),a0
	movl	a0@(8),a4@(16)
	cmpl	a0@(8),d7
	jeq	L00313
L00314:
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00316
	movl	a4@(16),a1
	movl	a1@(4),d0
	cmpl	a3@(20),d0
	jeq	L00315
L00316:
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00313
	movl	a4@(16),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	cmpl	a3@(20),d0
	jne	L00313
L00315:
	movl	a4@(16),a2@+	|(calling apply)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(4)
	cmpl	d0,d7
	jne	L00312
L00313:
	movl	a3@(220),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00312:
	jra	L00306
L00308:
	subql	#8,a2
L00301:
	subl	#16,a2
	moveml	a6@(-20),#L00300
	unlk	a6
	rts
L00300 = 15488
L00299 = 20
	.globl	F00318	|(fcn lambda setf-check-cad+r)
F00318:
	link	a6,#-L00321
	tstb	sp@(-132)
	moveml	#L00322,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00319:
	movl	a4@,a2@+	|(calling getcharn)
	movl	#_nilatom+0x1400+4,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	#_nilatom+0x1400+396,d0
	jne	L00324
	movl	a4@,a2@+	|(calling nreverse)
	|(calling exploden)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a0
	movl	a0@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(4),a1
	movl	a1@(4),d0
	cmpl	#_nilatom+0x1400+456,d0
	jne	L00326
	movl	a4@(4),a5	|(beginning do)
	movl	a5@,a2@+
L00327:
	cmpl	a4@(8),d7
	jne	L00328
	movl	a4@(4),a2@+	|(calling nreverse)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(4)
	movl	a3@(232),a2@+	|(calling eval)
	movl	a4@,a2@+
	movl	a3@(236),a2@+
	movl	a3@(64),a2@+
	movl	a3@(56),a2@+
	movl	a3@(240),a2@+	|(calling concat)
	movl	a4@(4),a1	|(calling ascii)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(64),a2@+
	movl	a3@(56),a2@+
	movl	a3@(244),a2@+	|(calling implode)
	movl	a4@(4),a5	|(calling append)
	movl	a5@,a2@+
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+136,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(248),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(252),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(52),a5
	movl	a5@,d0
	jra	L00329
L00328:
	movl	a4@(8),a1
	movl	a1@(4),d5
	movl	a3@(256),d0
	cmpl	d0,d7
	jeq	L00332
	movl	d0,a0
L00333:
	cmpl	a0@(4),d5
	jeq	L00331
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00333
	movl	a0,d0
L00332:
	movl	d7,d0
	jra	L00329
|	jra	L00330
L00331:
	movl	d7,d0
L00330:
	movl	a4@(8),a5
	movl	a5@,a4@(8)
	jra	L00327
L00329:
	subql	#4,a2
	jra	L00325
L00326:
	movl	d7,d0
L00325:
	subql	#4,a2
	jra	L00323
L00324:
	movl	d7,d0
L00323:
	subql	#4,a2
	moveml	a6@(-24),#L00322
	unlk	a6
	rts
L00322 = 15520
L00321 = 24
	.globl	F00334	|(fcn lambda setf-record-package-access-check)
F00334:
	link	a6,#-L00337
	tstb	sp@(-132)
	moveml	#L00338,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00335:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00340
	movl	a4@,a1
	movl	a1@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00340
	movl	a3@(28),a2@+
	movl	a4@,a0
	movl	a0@(4),a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00340
	movl	a4@,a0
	movl	a0@(4),a0
	movl	a0@,a1
	movl	a1@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00340
	movl	a4@,a0
	movl	a0@(4),a0
	movl	a0@,a1
	movl	a1@(4),a0
	movl	a0@(4),d0
	cmpl	a3@(260),d0
	jne	L00340
	movl	a4@,a2@+	|(calling copy)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+144,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
	movl	a4@(8),a1
	movl	a1@(4),a0
	movl	a0@,a5
	movl	a5@,a1
	movl	a1@(4),a0
	movl	a0@,a5
	movl	a5@,a1
	movl	a1@(4),a0
	movl	a0@,a1
	movl	a1@(4),a4@(12)
	movl	a4@(8),a0
	movl	a0@(4),a5
	movl	a5@,a0
	movl	a0@,a0
	movl	a0@(4),a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a5
	movl	a5@,a2@+
	movl	a3@(264),a2@+
	movl	a4@(12),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,d1
	movl	a2@-,a0
	movl	d1,a0@(4)
	movl	a0,d0
	movl	a4@(8),d0
	subql	#8,a2
	jra	L00339
L00340:
	movl	d7,d0
L00339:
	subql	#8,a2
	moveml	a6@(-24),#L00338
	unlk	a6
	rts
L00338 = 15552
L00337 = 24
	.globl	F00342	|(fcn macro defsetf)
F00342:
	link	a6,#-L00345
	tstb	sp@(-132)
	moveml	#L00346,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00343:
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a5
	movl	a5@,a2@+
	movl	a3@(192),a2@+
	movl	a3@(268),a2@+
	movl	a3@(272),a2@+
	movl	a4@(4),a2@+
	movl	a3@(276),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(8),a2@+
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subl	#16,a2
	moveml	a6@(-20),#L00346
	unlk	a6
	rts
L00346 = 15488
L00345 = 20
	.globl	F00348	|(fcn lambda g00347::car)
F00348:
	link	a6,#-L00351
	tstb	sp@(-132)
	moveml	#L00352,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00349:
	movl	a3@(280),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#8,a2
	moveml	a6@(-20),#L00352
	unlk	a6
	rts
L00352 = 15488
L00351 = 20
	.globl	F00354	|(fcn lambda g00353::caar)
F00354:
	link	a6,#-L00357
	tstb	sp@(-132)
	moveml	#L00358,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00355:
	movl	a3@(280),a2@+
	movl	a3@(48),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#8,a2
	moveml	a6@(-20),#L00358
	unlk	a6
	rts
L00358 = 15488
L00357 = 20
	.globl	F00360	|(fcn lambda g00359::cadr)
F00360:
	link	a6,#-L00363
	tstb	sp@(-132)
	moveml	#L00364,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00361:
	movl	a3@(280),a2@+
	movl	a3@(284),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#8,a2
	moveml	a6@(-20),#L00364
	unlk	a6
	rts
L00364 = 15488
L00363 = 20
	.globl	F00366	|(fcn lambda g00365::cdr)
F00366:
	link	a6,#-L00369
	tstb	sp@(-132)
	moveml	#L00370,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00367:
	movl	a3@(288),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#8,a2
	moveml	a6@(-20),#L00370
	unlk	a6
	rts
L00370 = 15488
L00369 = 20
	.globl	F00372	|(fcn lambda g00371::cdar)
F00372:
	link	a6,#-L00375
	tstb	sp@(-132)
	moveml	#L00376,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00373:
	movl	a3@(288),a2@+
	movl	a3@(48),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#8,a2
	moveml	a6@(-20),#L00376
	unlk	a6
	rts
L00376 = 15488
L00375 = 20
	.globl	F00378	|(fcn lambda g00377::cddr)
F00378:
	link	a6,#-L00381
	tstb	sp@(-132)
	moveml	#L00382,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00379:
	movl	a3@(288),a2@+
	movl	a3@(284),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#8,a2
	moveml	a6@(-20),#L00382
	unlk	a6
	rts
L00382 = 15488
L00381 = 20
	.globl	F00384	|(fcn lambda g00383::cxr)
F00384:
	link	a6,#-L00387
	tstb	sp@(-132)
	moveml	#L00388,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00385:
	movl	a3@(292),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#8,a2
	moveml	a6@(-20),#L00388
	unlk	a6
	rts
L00388 = 15488
L00387 = 20
	.globl	F00390	|(fcn lambda g00389::vref)
F00390:
	link	a6,#-L00393
	tstb	sp@(-132)
	moveml	#L00394,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00391:
	movl	a3@(296),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#8,a2
	moveml	a6@(-20),#L00394
	unlk	a6
	rts
L00394 = 15488
L00393 = 20
	.globl	F00396	|(fcn lambda g00395::vrefi-byte)
F00396:
	link	a6,#-L00399
	tstb	sp@(-132)
	moveml	#L00400,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00397:
	movl	a3@(300),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#8,a2
	moveml	a6@(-20),#L00400
	unlk	a6
	rts
L00400 = 15488
L00399 = 20
	.globl	F00402	|(fcn lambda g00401::vrefi-word)
F00402:
	link	a6,#-L00405
	tstb	sp@(-132)
	moveml	#L00406,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00403:
	movl	a3@(304),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#8,a2
	moveml	a6@(-20),#L00406
	unlk	a6
	rts
L00406 = 15488
L00405 = 20
	.globl	F00408	|(fcn lambda g00407::vrefi-long)
F00408:
	link	a6,#-L00411
	tstb	sp@(-132)
	moveml	#L00412,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00409:
	movl	a3@(308),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#8,a2
	moveml	a6@(-20),#L00412
	unlk	a6
	rts
L00412 = 15488
L00411 = 20
	.globl	F00414	|(fcn lambda g00413::nth)
F00414:
	link	a6,#-L00417
	tstb	sp@(-132)
	moveml	#L00418,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00415:
	movl	a3@(280),a2@+
	movl	a3@(312),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#8,a2
	moveml	a6@(-20),#L00418
	unlk	a6
	rts
L00418 = 15488
L00417 = 20
	.globl	F00420	|(fcn lambda g00419::nthelem)
F00420:
	link	a6,#-L00423
	tstb	sp@(-132)
	moveml	#L00424,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00421:
	movl	a3@(280),a2@+
	movl	a3@(312),a2@+
	movl	a3@(160),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#8,a2
	moveml	a6@(-20),#L00424
	unlk	a6
	rts
L00424 = 15488
L00423 = 20
	.globl	F00426	|(fcn lambda g00425::nthcdr)
F00426:
	link	a6,#-L00429
	tstb	sp@(-132)
	moveml	#L00430,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00427:
	movl	a3@(288),a2@+
	movl	a3@(312),a2@+
	movl	a3@(160),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#8,a2
	moveml	a6@(-20),#L00430
	unlk	a6
	rts
L00430 = 15488
L00429 = 20
	.globl	F00432	|(fcn lambda g00431::arraycall)
F00432:
	link	a6,#-L00435
	tstb	sp@(-132)
	moveml	#L00436,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00433:
	movl	a3@(316),a2@+
	movl	a4@,a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#8,a2
	moveml	a6@(-20),#L00436
	unlk	a6
	rts
L00436 = 15488
L00435 = 20
	.globl	F00438	|(fcn lambda g00437::get)
F00438:
	link	a6,#-L00441
	tstb	sp@(-132)
	moveml	#L00442,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00439:
	movl	a3@(204),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#8,a2
	moveml	a6@(-20),#L00442
	unlk	a6
	rts
L00442 = 15488
L00441 = 20
	.globl	F00444	|(fcn lambda g00443::plist)
F00444:
	link	a6,#-L00447
	tstb	sp@(-132)
	moveml	#L00448,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00445:
	movl	a3@(320),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#8,a2
	moveml	a6@(-20),#L00448
	unlk	a6
	rts
L00448 = 15488
L00447 = 20
	.globl	F00450	|(fcn lambda g00449::symeval)
F00450:
	link	a6,#-L00453
	tstb	sp@(-132)
	moveml	#L00454,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00451:
	movl	a3@(324),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#8,a2
	moveml	a6@(-20),#L00454
	unlk	a6
	rts
L00454 = 15488
L00453 = 20
	.globl	F00456	|(fcn lambda g00455::arg)
F00456:
	link	a6,#-L00459
	tstb	sp@(-132)
	moveml	#L00460,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00457:
	movl	a3@(328),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#8,a2
	moveml	a6@(-20),#L00460
	unlk	a6
	rts
L00460 = 15488
L00459 = 20
	.globl	F00462	|(fcn lambda g00461::args)
F00462:
	link	a6,#-L00465
	tstb	sp@(-132)
	moveml	#L00466,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00463:
	movl	a3@(332),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#8,a2
	moveml	a6@(-20),#L00466
	unlk	a6
	rts
L00466 = 15488
L00465 = 20
	.globl	F00467	|(fcn macro push)
F00467:
	link	a6,#-L00470
	tstb	sp@(-132)
	moveml	#L00471,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00468:
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a3@(264),a2@+
	movl	a4@(8),a2@+
	movl	a3@(164),a2@+
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subl	#12,a2
	moveml	a6@(-20),#L00471
	unlk	a6
	rts
L00471 = 15488
L00470 = 20
	.globl	F00472	|(fcn macro pop)
F00472:
	link	a6,#-L00475
	tstb	sp@(-132)
	moveml	#L00476,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00473:
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@,a4@(8)
	cmpl	a1@,d7
	jeq	L00478
	movl	a3@(52),a5
	movl	a5@,a4@(12)
	movl	a4@(8),a0
	movl	a0@(4),a4@(8)
	jra	L00477
L00478:
	movl	d7,a4@(8)
L00477:
	cmpl	a4@(12),d7
	jeq	L00480
	movl	a3@(336),a2@+
	movl	a3@(264),a2@+
	movl	a4@(8),a2@+
	movl	a3@(48),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(264),a2@+
	movl	a4@(4),a2@+
	movl	a3@(284),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00479
L00480:
	movl	a3@(336),a2@+
	movl	a3@(48),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(264),a2@+
	movl	a4@(4),a2@+
	movl	a3@(284),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
L00479:
	subl	#16,a2
	moveml	a6@(-20),#L00476
	unlk	a6
	rts
L00476 = 15488
L00475 = 20
	.globl	F00481	|(fcn macro let)
F00481:
	link	a6,#-L00484
	tstb	sp@(-132)
	moveml	#L00485,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00482:
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a4@(4),a4@(28)	|(beginning do)
	movl	a4@(28),a2@+
L00488:
	cmpl	a4@(32),d7
	jne	L00489
	movl	d7,d0
	jra	L00490
L00489:
	movl	a4@(32),a1
	movl	a1@(4),a2@+
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
	andw	#1783,d0
	jeq	L00492
	movl	a4@(36),a2@+
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	movl	d7,a2@+
	movl	a4@(16),a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	jra	L00491
L00492:
	movl	a4@(36),a1
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
	jeq	L00495
	movl	a4@(36),a0
	movl	a0@(4),a2@+
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	movl	a4@(36),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@(16),a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	jra	L00491
L00495:
	lea	a2@,a5	|(calling gensym)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a4@(24)
	movl	a4@(24),a2@+
	movl	a4@(36),a1	|(calling append)
	|(calling de-compose)
	movl	a1@(4),a2@+
	movl	a3@(340),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(20),a2@+	|(calling append)
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(20)
	movl	a4@(24),a2@+
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	movl	a4@(36),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@(16),a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
L00491:
	subql	#4,a2
	movl	a4@(32),a5
	movl	a5@,a4@(32)
	jra	L00488
L00490:
	subql	#8,a2
	movl	d7,a2@+
	movl	a4@(20),a4@(28)	|(beginning do)
	movl	a4@(28),a2@+
L00500:
	cmpl	a4@(32),d7
	jne	L00501
	movl	d7,d0
	jra	L00502
L00501:
	movl	a4@(32),a1
	movl	a1@(4),a2@+
	movl	a4@(36),a5	|(beginning do)
	movl	a5@,a2@+
L00503:
	cmpl	a4@(40),d7
	jne	L00504
	movl	d7,d0
	jra	L00505
L00504:
	movl	a4@(40),a1
	movl	a1@(4),a5
	movl	a5@,a2@+
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	movl	d7,a2@+
	movl	a4@(16),a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	movl	a4@(40),a5
	movl	a5@,a4@(40)
	jra	L00503
L00505:
	subql	#8,a2
	movl	a4@(32),a5
	movl	a5@,a4@(32)
	jra	L00500
L00502:
	subql	#8,a2	|(calling nreverse)
	movl	a4@(16),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(16)
	movl	a4@(12),a2@+	|(calling nreverse)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(12)
	movl	a4@(20),a2@+	|(calling nreverse)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(20)
	movl	a3@(28),a2@+
	movl	a4@(12),a2@+
	movl	d7,a2@+	|(calling append)
	movl	d7,a2@+	|(beginning do)
	movl	d7,a2@+
	movl	a4@(20),a2@+
L00510:
	cmpl	a4@(48),d7
	jne	L00511
	movl	d7,d0
	jra	L00512
L00511:
	movl	a4@(48),a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	movl	a4@(52),a5	|(beginning do)
	movl	a5@,a2@+
L00517:
	cmpl	a4@(60),d7
	jne	L00518
	movl	d7,d0
	jra	L00519
L00518:
	movl	a4@(60),a1
	movl	a1@(4),a2@+
	movl	a3@(36),a2@+
	movl	a4@(64),a5
	movl	a5@,a2@+
	movl	a4@(64),a1
	movl	a1@(4),a2@+
	movl	a4@(52),a0
	movl	a0@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#4,a2
	movl	d0,a2@+
	movl	a4@(56),a2@+
	jbsr	_qcons
	movl	d0,a4@(56)
	movl	a4@(60),a5
	movl	a5@,a4@(60)
	jra	L00517
L00519:
	subql	#4,a2	|(calling nreverse)
	movl	a4@(56),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#8,a2
	movl	d0,a4@(40)
	cmpl	d0,d7
	jeq	L00514
	cmpl	a4@(44),d7
	jeq	L00521
L00522:	|(beginning do)
	movl	a4@(44),a5
	cmpl	a5@,d7
	jne	L00523
	movl	d7,d0
	jra	L00524
L00523:
	movl	a4@(44),a5
	movl	a5@,a4@(44)
	jra	L00522
L00524:
	movl	a4@(44),a0
	movl	a4@(40),a0@
	movl	a0,d0
	jra	L00520
L00521:
	movl	a4@(40),a4@(44)
	movl	a4@(44),a4@(36)
L00520:
	jra	L00513
L00514:
	movl	d7,d0
L00513:
	movl	a4@(48),a5
	movl	a5@,a4@(48)
	jra	L00510
L00512:
	subl	#12,a2
	movl	a4@(36),d0
	subql	#4,a2
	movl	d0,a2@+
	movl	a4@(8),a2@+	|(calling append)
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(16),a2@+	|(calling append)
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	subl	#28,a2
	moveml	a6@(-20),#L00485
	unlk	a6
	rts
L00485 = 15488
L00484 = 20
	.globl	F00525	|(fcn lambda de-compose)
F00525:
	link	a6,#-L00528
	tstb	sp@(-132)
	moveml	#L00529,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00526:
	cmpl	a4@,d7
	jne	L00531
	movl	d7,d0
	jra	L00530
L00531:
	movl	a4@,d0
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
	jeq	L00532
	movl	a3@(344),a2@+	|(calling apply)
	movl	a3@(84),a2@+
	movl	a4@(4),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	jra	L00530
L00532:
	movl	a4@,a1	|(calling nconc)
	|(calling de-compose)
	movl	a1@(4),a2@+
	movl	a3@(116),a2@+
	movl	a4@(4),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@,a5	|(calling de-compose)
	movl	a5@,a2@+
	movl	a3@(120),a2@+
	movl	a4@(4),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00530:
	subql	#8,a2
	moveml	a6@(-20),#L00529
	unlk	a6
	rts
L00529 = 15488
L00528 = 20
	.globl	F00535	|(fcn macro caseq)
F00535:
	link	a6,#-L00538
	tstb	sp@(-132)
	moveml	#L00539,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00536:
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00541
	movl	a4@(4),d0
	jra	L00540
L00541:
	movl	a3@(348),a2@+	|(calling gensym)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00540
	movl	d7,d0
L00540:
	movl	d0,a4@(12)
	movl	a3@(32),a2@+
	movl	d7,a2@+
	movl	a4@(8),a2@+	|(beginning do)
L00544:
	cmpl	a4@(28),d7
	jne	L00545
	movl	d7,d0
	jra	L00546
L00545:
	movl	a4@(28),a1
	movl	a1@(4),a2@+
	movl	a4@(32),a1
	movl	a1@(4),a2@+
	movl	a4@(36),d6
	cmpl	a3@(52),d6
	jne	L00548
	movl	a3@(52),a5
	movl	a5@,d0
	jra	L00547
L00548:
	movl	a4@(36),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00549
	movl	a3@(352),a2@+
	movl	a4@(12),a2@+
	movl	a3@(56),a2@+
	movl	a4@(36),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00547
L00549:
	movl	a3@(356),a2@+
	movl	a4@(12),a2@+
	movl	a3@(56),a2@+
	movl	a4@(36),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
L00547:
	subql	#4,a2
	movl	d0,a2@+
	movl	a4@(32),a5
	movl	a5@,a2@+
	jbsr	_qcons
	subql	#4,a2
	movl	d0,a2@+
	movl	a4@(24),a2@+
	jbsr	_qcons
	movl	d0,a4@(24)
	movl	a4@(28),a5
	movl	a5@,a4@(28)
	jra	L00544
L00546:
	subql	#4,a2	|(calling nreverse)
	movl	a4@(24),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00551
	movl	a4@(16),d0
	jra	L00550
L00551:
	movl	a3@(28),a2@+
	movl	a4@(12),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(16),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	cmpl	d0,d7
	jne	L00550
	movl	d7,d0
L00550:
	subl	#20,a2
	moveml	a6@(-24),#L00539
	unlk	a6
	rts
L00539 = 15552
L00538 = 24
	.globl	F00552	|(fcn macro selectq)
F00552:
	link	a6,#-L00555
	tstb	sp@(-132)
	moveml	#L00556,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00553:
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a2@+
	movl	d7,a2@+
	movl	a4@(8),a2@+	|(beginning do)
L00559:
	cmpl	a4@(16),d7
	jne	L00560
	movl	d7,d0
	jra	L00561
L00560:
	movl	a4@(16),a1
	movl	a1@(4),a2@+
	movl	a4@(20),a1
	movl	a1@(4),d0
	cmpl	a3@(360),d0
	jne	L00563
	movl	a3@(52),a5
	movl	a5@,a2@+
	movl	a4@(20),a5
	movl	a5@,a2@+
	jbsr	_qcons
	jra	L00562
L00563:
	movl	a4@(20),d0
L00562:
	subql	#4,a2
	movl	d0,a2@+
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	movl	a4@(16),a5
	movl	a5@,a4@(16)
	jra	L00559
L00561:
	subql	#4,a2	|(calling nreverse)
	movl	a4@(12),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	movl	d0,a4@(8)
	movl	a3@(364),a2@+
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subl	#12,a2
	moveml	a6@(-20),#L00556
	unlk	a6
	rts
L00556 = 15488
L00555 = 20
	.globl	F00564	|(fcn macro let*)
F00564:
	link	a6,#-L00567
	tstb	sp@(-132)
	moveml	#L00568,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00565:
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a2@+
	movl	a4@(4),a2@+	|(beginning do)
	|(calling reverse)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+160,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
L00569:
	cmpl	a4@(12),d7
	jne	L00570
	movl	a4@(8),a1
	movl	a1@(4),d0
	jra	L00571
L00570:
	movl	a3@(368),a2@+
	movl	a4@(12),a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(8),a2@+	|(calling append)
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a4@(8)
	movl	a4@(12),a5
	movl	a5@,a4@(12)
	jra	L00569
L00571:
	subl	#16,a2
	moveml	a6@(-20),#L00568
	unlk	a6
	rts
L00568 = 15488
L00567 = 20
	.globl	F00572	|(fcn macro listify)
F00572:
	link	a6,#-L00575
	tstb	sp@(-132)
	moveml	#L00576,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00573:
	movl	a3@(368),a2@+
	movl	a3@(372),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(376),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#4,a2
	moveml	a6@(-20),#L00576
	unlk	a6
	rts
L00576 = 15488
L00575 = 20
	.globl	F00577	|(fcn macro include-if)
F00577:
	link	a6,#-L00580
	tstb	sp@(-132)
	moveml	#L00581,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00578:
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a4@(4),a2@+	|(calling eval)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00583
	movl	a3@(380),a2@+
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00582
L00583:
	movl	d7,d0
L00582:
	subl	#12,a2
	moveml	a6@(-20),#L00581
	unlk	a6
	rts
L00581 = 15488
L00580 = 20
	.globl	F00584	|(fcn macro includef-if)
F00584:
	link	a6,#-L00587
	tstb	sp@(-132)
	moveml	#L00588,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00585:
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a4@(4),a2@+	|(calling eval)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00590
	movl	a3@(384),a2@+
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00589
L00590:
	movl	d7,d0
L00589:
	subl	#12,a2
	moveml	a6@(-20),#L00588
	unlk	a6
	rts
L00588 = 15488
L00587 = 20
	.globl	F00591	|(fcn macro if)
F00591:
	link	a6,#-L00594
	tstb	sp@(-132)
	moveml	#L00595,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00592:
	movl	a4@,a5
	movl	a5@,a2@+
	movl	a4@(4),a2@+	|(calling length)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(8),a5
	cmpl	#2,a5@
	jpl	L00597
	movl	a3@(388),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00596
L00597:
	cmpl	#_nilatom+0x1400+8,a4@(8)
	jne	L00598
	movl	a4@(4),a5
	movl	a5@,a1
	movl	a1@(4),d5
	movl	a3@(392),a5
	movl	a5@,d0
	cmpl	d0,d7
	jeq	L00600
	movl	d0,a0
L00601:
	cmpl	a0@(4),d5
	jeq	L00598
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00601
	movl	a0,d0
L00600:
	movl	a3@(32),a2@+
	movl	a4@(4),a1
	movl	a1@(4),a2@+
	movl	a4@(4),a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00596
L00598:
	movl	a4@(4),a2@+	|(beginning do)
L00603:
	cmpl	a4@(12),d7
	jne	L00604
	movl	a3@(52),a5
	movl	a5@,d0
	jra	L00605
L00604:
	movl	a4@(12),a1
	movl	a1@(4),d5
	movl	a3@(392),a5
	movl	a5@,d0
	cmpl	d0,d7
	jeq	L00607
	movl	d0,a0
L00609:
	cmpl	a0@(4),d5
	jeq	L00608
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00609
	movl	a0,d0
	jra	L00607
L00608:
	movl	d7,d0
	jra	L00605
|	jra	L00606
L00607:
	movl	d7,d0
L00606:
	movl	a4@(12),a5
	movl	a5@,a4@(12)
	jra	L00603
L00605:
	subql	#4,a2
	cmpl	d0,d7
	jeq	L00602
	movl	a3@(32),a2@+
	movl	a4@(4),a1
	movl	a1@(4),a2@+
	movl	a4@(4),a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(52),a2@+
	movl	a4@(4),a5	|(calling append)
	movl	a5@,a1
	movl	a1@,a2@+
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00596
L00602:
	movl	a4@(4),a2@+	|(beginning do)
	|(calling reverse)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+160,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(396),a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
L00610:
	cmpl	a4@(12),d7
	jne	L00611
	movl	a4@(16),d6
	cmpl	a3@(400),d6
	jne	L00614
	movl	a3@(32),a2@+
	movl	a4@(24),a2@+	|(calling append)
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00613
L00614:
	movl	a3@(404),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00613:
	jra	L00612
L00611:
	movl	a4@(16),d6
	cmpl	a3@(396),d6
	jne	L00616
	movl	a4@(12),a1
	movl	a1@(4),d5
	movl	a3@(392),a5
	movl	a5@,d0
	cmpl	d0,d7
	jeq	L00618
	movl	d0,a0
L00620:
	cmpl	a0@(4),d5
	jeq	L00619
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00620
	movl	a0,d0
	jra	L00618
L00619:
	movl	a4@(12),a0
	movl	a0@(4),d0
	cmpl	a3@(408),d0
	jne	L00622
	movl	d7,a4@(28)
	movl	a3@(412),a4@(16)
	jra	L00621
L00622:
	movl	a3@(416),a2@+	|(calling error)
	movl	a4@(12),a1
	movl	a1@(4),a2@+
	movl	a4@(4),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00621:
	jra	L00617
L00618:
	movl	a3@(420),a4@(16)
	movl	d7,a4@(28)
	movl	a4@(12),a0
	movl	a0@(4),a2@+
	movl	a4@(28),a2@+
	jbsr	_qcons
	movl	d0,a4@(28)
L00617:
	jra	L00615
L00616:
	movl	a4@(16),d6
	cmpl	a3@(420),d6
	jne	L00623
	movl	a4@(12),a1
	movl	a1@(4),d5
	movl	a3@(392),a5
	movl	a5@,d0
	cmpl	d0,d7
	jeq	L00625
	movl	d0,a0
L00627:
	cmpl	a0@(4),d5
	jeq	L00626
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00627
	movl	a0,d0
	jra	L00625
L00626:
	movl	a4@(12),a0
	movl	a0@(4),d0
	cmpl	a3@(424),d0
	jne	L00629
	cmpl	a4@(20),d7
	jeq	L00631
	movl	a3@(428),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00630
L00631:
	movl	d7,d0
L00630:
	movl	a3@(52),a5
	movl	a5@,a4@(20)
	movl	a3@(396),a4@(16)
	movl	a3@(52),a2@+
	movl	a4@(28),a2@+	|(calling append)
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(24),a2@+
	jbsr	_qcons
	movl	d0,a4@(24)
	jra	L00628
L00629:
	movl	a4@(12),a1
	movl	a1@(4),d0
	cmpl	a3@(412),d0
	jne	L00632
	movl	a3@(412),a4@(16)
	jra	L00628
L00632:
	movl	a3@(432),a2@+	|(calling error)
	movl	a4@(12),a0
	movl	a0@(4),a2@+
	movl	a4@(4),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00628:
	jra	L00624
L00625:
	movl	a4@(12),a0
	movl	a0@(4),a2@+
	movl	a4@(28),a2@+
	jbsr	_qcons
	movl	d0,a4@(28)
L00624:
	jra	L00615
L00623:
	movl	a4@(16),d6
	cmpl	a3@(412),d6
	jne	L00633
	movl	a4@(12),a1
	movl	a1@(4),d5
	movl	a3@(392),a5
	movl	a5@,d0
	cmpl	d0,d7
	jeq	L00635
	movl	d0,a0
L00637:
	cmpl	a0@(4),d5
	jeq	L00636
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00637
	movl	a0,d0
	jra	L00635
L00636:
	movl	a3@(436),a2@+	|(calling error)
	movl	a4@(12),a0
	movl	a0@(4),a2@+
	movl	a4@(4),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00634
L00635:
	movl	a3@(400),a4@(16)
	movl	a4@(12),a0
	movl	a0@(4),a2@+
	movl	a4@(28),a2@+	|(calling append)
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(24),a2@+
	jbsr	_qcons
	movl	d0,a4@(24)
L00634:
	jra	L00615
L00633:
	movl	a4@(16),d6
	cmpl	a3@(400),d6
	jne	L00638
	movl	a4@(12),a1
	movl	a1@(4),d0
	cmpl	a3@(440),d0
	jeq	L00640
	movl	a3@(444),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00639
L00640:
	movl	d7,d0
L00639:
	movl	a3@(396),a4@(16)
	jra	L00615
L00638:
	movl	d7,d0
L00615:
	movl	a4@(12),a5
	movl	a5@,a4@(12)
	jra	L00610
L00612:
	subl	#20,a2
L00596:
	subl	#12,a2
	moveml	a6@(-28),#L00595
	unlk	a6
	rts
L00595 = 15584
L00594 = 28
	.globl	F00641	|(fcn macro defvar)
F00641:
	link	a6,#-L00644
	tstb	sp@(-132)
	moveml	#L00645,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00642:
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@,a4@(12)
	cmpl	a1@,d7
	jeq	L00647
	movl	a3@(52),a5
	movl	a5@,a4@(16)
	movl	a4@(12),a0
	movl	a0@(4),a4@(12)
	jra	L00646
L00647:
	movl	d7,a4@(12)
L00646:
	cmpl	a4@(16),d7
	jeq	L00649
	movl	a3@(76),a2@+
	movl	a3@(448),a2@+
	movl	a3@(192),a2@+
	movl	a3@(452),a2@+
	movl	a3@(456),a2@+
	movl	a3@(56),a2@+
	movl	a3@(460),a2@+
	movl	a3@(464),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(100),a2@+
	movl	a3@(468),a2@+
	movl	a3@(56),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(36),a2@+
	movl	a4@(4),a2@+
	movl	a4@(12),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00648
L00649:
	movl	a3@(192),a2@+
	movl	a3@(472),a2@+
	movl	a3@(456),a2@+
	movl	a3@(56),a2@+
	movl	a3@(460),a2@+
	movl	a3@(464),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
L00648:
	subl	#20,a2
	moveml	a6@(-20),#L00645
	unlk	a6
	rts
L00645 = 15488
L00644 = 20
	.globl	F00650	|(fcn macro list*)
F00650:
	link	a6,#-L00653
	tstb	sp@(-132)
	moveml	#L00654,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00651:
	movl	a4@,a5
	movl	a5@,a2@+
	cmpl	a4@(4),d7
	jne	L00656
	movl	d7,d0
	jra	L00655
L00656:
	movl	a4@(4),a5
	cmpl	a5@,d7
	jne	L00657
	movl	a4@(4),a1
	movl	a1@(4),d0
	jra	L00655
L00657:
	movl	a4@(4),a2@+	|(calling construct-list*)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00655:
	subql	#8,a2
	moveml	a6@(-20),#L00654
	unlk	a6
	rts
L00654 = 15488
L00653 = 20
	.globl	F00658	|(fcn lambda construct-list*)
F00658:
	link	a6,#-L00661
	tstb	sp@(-132)
	moveml	#L00662,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00659:
	movl	a4@,a2@+	|(calling reverse)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+160,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@
	movl	a4@,a5	|(beginning do)
	movl	a5@,a1
	movl	a1@,a2@+
	movl	a3@(164),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	movl	a4@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
L00663:
	cmpl	a4@(4),d7
	jne	L00664
	movl	a4@(8),d0
	jra	L00665
L00664:
	movl	a4@(4),a5
	movl	a5@,a2@+
	movl	a3@(164),a2@+
	movl	a4@(4),a1
	movl	a1@(4),a2@+
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(8)
	movl	a2@-,a4@(4)
	jra	L00663
L00665:
	subl	#12,a2
	moveml	a6@(-20),#L00662
	unlk	a6
	rts
L00662 = 15488
L00661 = 20
	.globl	F00666	|(fcn macro <=)
F00666:
	link	a6,#-L00669
	tstb	sp@(-132)
	moveml	#L00670,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00667:
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a5
	movl	a5@,a2@+
	movl	d7,a2@+
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	movl	a4@(12),a2@+	|(beginning do)
L00671:
	movl	a4@(20),a5
	cmpl	a5@,d7
	jne	L00672
	movl	d7,d0
	jra	L00673
L00672:
	movl	a3@(144),a2@+
	movl	a4@(20),a1
	movl	a1@(4),a2@+
	movl	a4@(20),a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(16),a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	movl	a4@(20),a5
	movl	a5@,a4@(20)
	jra	L00671
L00673:
	subql	#4,a2
	movl	a4@(16),a5
	cmpl	a5@,d7
	jne	L00675
	movl	a3@(476),a2@+
	movl	a4@(16),a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00674
L00675:
	movl	a3@(476),a2@+
	movl	a3@(100),a2@+
	movl	a4@(16),a2@+	|(calling nreverse)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
L00674:
	subl	#20,a2
	moveml	a6@(-20),#L00670
	unlk	a6
	rts
L00670 = 15488
L00669 = 20
	.globl	F00676	|(fcn macro <=&)
F00676:
	link	a6,#-L00679
	tstb	sp@(-132)
	moveml	#L00680,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00677:
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a3@(476),a2@+
	movl	a3@(480),a2@+
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subl	#12,a2
	moveml	a6@(-20),#L00680
	unlk	a6
	rts
L00680 = 15488
L00679 = 20
	.globl	F00681	|(fcn macro >=)
F00681:
	link	a6,#-L00684
	tstb	sp@(-132)
	moveml	#L00685,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00682:
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a5
	movl	a5@,a2@+
	movl	d7,a2@+
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	movl	a4@(12),a2@+	|(beginning do)
L00686:
	movl	a4@(20),a5
	cmpl	a5@,d7
	jne	L00687
	movl	d7,d0
	jra	L00688
L00687:
	movl	a3@(168),a2@+
	movl	a4@(20),a1
	movl	a1@(4),a2@+
	movl	a4@(20),a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(16),a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	movl	a4@(20),a5
	movl	a5@,a4@(20)
	jra	L00686
L00688:
	subql	#4,a2
	movl	a4@(16),a5
	cmpl	a5@,d7
	jne	L00690
	movl	a3@(476),a2@+
	movl	a4@(16),a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00689
L00690:
	movl	a3@(476),a2@+
	movl	a3@(100),a2@+
	movl	a4@(16),a2@+	|(calling nreverse)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
L00689:
	subl	#20,a2
	moveml	a6@(-20),#L00685
	unlk	a6
	rts
L00685 = 15488
L00684 = 20
	.globl	F00691	|(fcn macro >=&)
F00691:
	link	a6,#-L00694
	tstb	sp@(-132)
	moveml	#L00695,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00692:
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a3@(476),a2@+
	movl	a3@(484),a2@+
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subl	#12,a2
	moveml	a6@(-20),#L00695
	unlk	a6
	rts
L00695 = 15488
L00694 = 20
bind_org:
	linker_size = 	122
	trans_size = 	22
	.long	99
	.long	99
	.long	99
	.long	2
	.long	99
	.long	0
	.long	99
	.long	0
	.long	99
	.long	0
	.long	99
	.long	2
	.long	99
	.long	2
	.long	99
	.long	0
	.long	99
	.long	0
	.long	99
	.long	2
	.long	99
	.long	0
	.long	99
	.long	99
	.long	0
	.long	99
	.long	99
	.long	0
	.long	99
	.long	99
	.long	0
	.long	99
	.long	99
	.long	0
	.long	99
	.long	99
	.long	0
	.long	99
	.long	99
	.long	0
	.long	99
	.long	99
	.long	0
	.long	99
	.long	99
	.long	0
	.long	99
	.long	99
	.long	0
	.long	99
	.long	99
	.long	0
	.long	99
	.long	99
	.long	0
	.long	99
	.long	99
	.long	0
	.long	99
	.long	99
	.long	0
	.long	99
	.long	99
	.long	0
	.long	99
	.long	99
	.long	0
	.long	99
	.long	99
	.long	0
	.long	99
	.long	99
	.long	0
	.long	99
	.long	99
	.long	0
	.long	99
	.long	99
	.long	0
	.long	99
	.long	99
	.long	2
	.long	99
	.long	2
	.long	99
	.long	2
	.long	99
	.long	0
	.long	99
	.long	2
	.long	99
	.long	2
	.long	99
	.long	2
	.long	99
	.long	2
	.long	99
	.long	2
	.long	99
	.long	2
	.long	99
	.long	99
	.long	2
	.long	99
	.long	99
	.long	2
	.long	99
	.long	2
	.long	99
	.long	0
	.long	99
	.long	2
	.long	99
	.long	2
	.long	99
	.long	2
	.long	99
	.long	2
	.long	99
	.long -1
lit_org:
.asciz "protect-list"
.asciz "protect-evform"
.asciz "defmacrooptlist"
.asciz "(d r)"
.asciz "def"
.asciz "macro"
.asciz "(defmacroarg)"
.asciz "lambda"
.asciz "cond"
.asciz "setq"
.asciz "(defmacroarg)"
.asciz "(t)"
.asciz "car"
.asciz "t"
.asciz "quote"
.asciz "copy"
.asciz "list"
.asciz "(defmacroarg)"
.asciz "defmacro-for-compiling"
.asciz "progn"
.asciz "(quote compile)"
.asciz "c"
.asciz "(&rest &body)"
.asciz "&optional"
.asciz "&protect"
.asciz "or"
.asciz "dtpr"
.asciz "&aux"
.asciz "(nil)"
.asciz "a"
.asciz "d"
.asciz "(&rest &body)"
.asciz "ca"
.asciz "(&rest &body)"
.asciz "&rest"
.asciz "\"Too many &rest parameters \""
.asciz ">"
.asciz "arg"
.asciz "(t)"
.asciz "do"
.asciz "\\1-"
.asciz "cons"
.asciz "<"
.asciz "let*"
.asciz "declare"
.asciz "*args"
.asciz "lexpr"
.asciz "\"::cmacro:\""
.asciz "eval-when"
.asciz "(compile load eval)"
.asciz "defmacro"
.asciz "putprop"
.asciz "getd"
.asciz "((quote cmacro))"
.asciz "remob"
.asciz "--\\ setf\\ can\\'t\\ handle\\ this."
.asciz "setf-expand"
.asciz "cmacro"
.asciz "defsetf"
.asciz "(e v)"
.asciz "\"rplac\""
.asciz "99"
.asciz "((cadr e))"
.asciz "(v)"
.asciz "(97 100)"
.asciz "defrecord-acma"
.asciz "setf"
.asciz "(compile load eval)"
.asciz "defun"
.asciz "(setf-expand)"
.asciz "rplaca"
.asciz "cdr"
.asciz "rplacd"
.asciz "rplacx"
.asciz "vset"
.asciz "vseti-byte"
.asciz "vseti-word"
.asciz "vseti-long"
.asciz "nthcdr"
.asciz "store"
.asciz "setplist"
.asciz "set"
.asciz "setarg"
.asciz "args"
.asciz "prog1"
.asciz "(r)"
.asciz "concat"
.asciz "Z"
.asciz "memq"
.asciz "eq"
.asciz "otherwise"
.asciz "caseq"
.asciz "let"
.asciz "n"
.ascii "((cond ((eq n 0) nil) ((minusp n) (do ((i (arg nil) (\\1- i))"
.ascii " (result nil (cons (arg i) result))) ((<& i (+ (arg nil) n 1"
.ascii ")) result))) (t (do ((i n (\\1- i)) (result nil (cons (arg i)"
.asciz " result))) ((<& i 1) result)))))"
.asciz "include"
.asciz "includef"
.asciz "\"if: not enough arguments \""
.asciz "if-keyword-list"
.asciz "init"
.asciz "compl"
.asciz "\"if: illegal form \""
.asciz "thenret"
.asciz "then"
.asciz "\"if: bad keyword \""
.asciz "col"
.asciz "else"
.asciz "\"if: multiples elses \""
.asciz "\"if: bad keyword \""
.asciz "\"if: keyword at the wrong place \""
.asciz "elseif"
.asciz "\"if: missing elseif clause \""
.asciz "(quote compile)"
.asciz "(eval compile load)"
.asciz "eval"
.asciz "liszt-declare"
.asciz "special"
.asciz "boundp"
.asciz "(eval compile load)"
.asciz "not"
.asciz ">&"
.asciz "<&"
.asciz "defmcrosrch"
.asciz "nreverse"
.asciz "append"
.asciz "eval"
.asciz "concatl"
.asciz "defmcrooption"
.asciz "error"
.asciz "length"
.asciz "gensym"
.asciz "nconc"
.asciz "concat"
.asciz "setf-record-package-access-check"
.asciz "apply"
.asciz "setf-check-cad+r"
.asciz "getcharn"
.asciz "exploden"
.asciz "ascii"
.asciz "implode"
.asciz "copy"
.asciz "de-compose"
.asciz "reverse"
.asciz "construct-list*"
.ascii "(setq fcn-in-macros.l \"macros.l compiled by Liszt 68000 vers"
.asciz "ion 8.39a on Fri Dec 15 18:51:54 1989\")"
.ascii "(setq rcs-macros- \"$Header: macros.l,v 1.6 83/11/09 07:09:42"
.asciz " jkf Exp $\")"
.ascii "(cond ((null (boundp (quote defmacro-for-compiling))) (setq "
.asciz "defmacro-for-compiling nil)))"
.asciz "defmacro"
.ascii "(putprop (quote defmacro) (list (quote nil) fcn-in-macros.l)"
.asciz " (quote fcn-info))"
.asciz "defmcrosrch"
.ascii "(putprop (quote defmcrosrch) (list (quote (3 . 3)) fcn-in-ma"
.asciz "cros.l) (quote fcn-info))"
.asciz "defmcrooption"
.ascii "(putprop (quote defmcrooption) (list (quote (3 . 3)) fcn-in-"
.asciz "macros.l) (quote fcn-info))"
.asciz "lambdacvt"
.ascii "(putprop (quote lambdacvt) (list (quote (1 . 1)) fcn-in-macr"
.asciz "os.l) (quote fcn-info))"
.asciz "defcmacro"
.ascii "(putprop (quote defcmacro) (list (quote nil) fcn-in-macros.l"
.asciz ") (quote fcn-info))"
.asciz "setf"
.ascii "(putprop (quote setf) (list (quote nil) fcn-in-macros.l) (qu"
.asciz "ote fcn-info))"
.asciz "setf-check-cad+r"
.ascii "(putprop (quote setf-check-cad+r) (list (quote (1 . 1)) fcn-"
.asciz "in-macros.l) (quote fcn-info))"
.asciz "setf-record-package-access-check"
.ascii "(putprop (quote setf-record-package-access-check) (list (quo"
.asciz "te (2 . 2)) fcn-in-macros.l) (quote fcn-info))"
.asciz "defsetf"
.ascii "(putprop (quote defsetf) (list (quote nil) fcn-in-macros.l) "
.asciz "(quote fcn-info))"
.asciz "g00347::car"
.ascii "(putprop (quote g00347::car) (list (quote (2 . 2)) fcn-in-ma"
.asciz "cros.l) (quote fcn-info))"
.ascii "(putprop (quote car) (getd (quote g00347::car)) (quote setf-"
.asciz "expand))"
.asciz "g00353::caar"
.ascii "(putprop (quote g00353::caar) (list (quote (2 . 2)) fcn-in-m"
.asciz "acros.l) (quote fcn-info))"
.ascii "(putprop (quote caar) (getd (quote g00353::caar)) (quote set"
.asciz "f-expand))"
.asciz "g00359::cadr"
.ascii "(putprop (quote g00359::cadr) (list (quote (2 . 2)) fcn-in-m"
.asciz "acros.l) (quote fcn-info))"
.ascii "(putprop (quote cadr) (getd (quote g00359::cadr)) (quote set"
.asciz "f-expand))"
.asciz "g00365::cdr"
.ascii "(putprop (quote g00365::cdr) (list (quote (2 . 2)) fcn-in-ma"
.asciz "cros.l) (quote fcn-info))"
.ascii "(putprop (quote cdr) (getd (quote g00365::cdr)) (quote setf-"
.asciz "expand))"
.asciz "g00371::cdar"
.ascii "(putprop (quote g00371::cdar) (list (quote (2 . 2)) fcn-in-m"
.asciz "acros.l) (quote fcn-info))"
.ascii "(putprop (quote cdar) (getd (quote g00371::cdar)) (quote set"
.asciz "f-expand))"
.asciz "g00377::cddr"
.ascii "(putprop (quote g00377::cddr) (list (quote (2 . 2)) fcn-in-m"
.asciz "acros.l) (quote fcn-info))"
.ascii "(putprop (quote cddr) (getd (quote g00377::cddr)) (quote set"
.asciz "f-expand))"
.asciz "g00383::cxr"
.ascii "(putprop (quote g00383::cxr) (list (quote (2 . 2)) fcn-in-ma"
.asciz "cros.l) (quote fcn-info))"
.ascii "(putprop (quote cxr) (getd (quote g00383::cxr)) (quote setf-"
.asciz "expand))"
.asciz "g00389::vref"
.ascii "(putprop (quote g00389::vref) (list (quote (2 . 2)) fcn-in-m"
.asciz "acros.l) (quote fcn-info))"
.ascii "(putprop (quote vref) (getd (quote g00389::vref)) (quote set"
.asciz "f-expand))"
.asciz "g00395::vrefi-byte"
.ascii "(putprop (quote g00395::vrefi-byte) (list (quote (2 . 2)) fc"
.asciz "n-in-macros.l) (quote fcn-info))"
.ascii "(putprop (quote vrefi-byte) (getd (quote g00395::vrefi-byte)"
.asciz ") (quote setf-expand))"
.asciz "g00401::vrefi-word"
.ascii "(putprop (quote g00401::vrefi-word) (list (quote (2 . 2)) fc"
.asciz "n-in-macros.l) (quote fcn-info))"
.ascii "(putprop (quote vrefi-word) (getd (quote g00401::vrefi-word)"
.asciz ") (quote setf-expand))"
.asciz "g00407::vrefi-long"
.ascii "(putprop (quote g00407::vrefi-long) (list (quote (2 . 2)) fc"
.asciz "n-in-macros.l) (quote fcn-info))"
.ascii "(putprop (quote vrefi-long) (getd (quote g00407::vrefi-long)"
.asciz ") (quote setf-expand))"
.asciz "g00413::nth"
.ascii "(putprop (quote g00413::nth) (list (quote (2 . 2)) fcn-in-ma"
.asciz "cros.l) (quote fcn-info))"
.ascii "(putprop (quote nth) (getd (quote g00413::nth)) (quote setf-"
.asciz "expand))"
.asciz "g00419::nthelem"
.ascii "(putprop (quote g00419::nthelem) (list (quote (2 . 2)) fcn-i"
.asciz "n-macros.l) (quote fcn-info))"
.ascii "(putprop (quote nthelem) (getd (quote g00419::nthelem)) (quo"
.asciz "te setf-expand))"
.asciz "g00425::nthcdr"
.ascii "(putprop (quote g00425::nthcdr) (list (quote (2 . 2)) fcn-in"
.asciz "-macros.l) (quote fcn-info))"
.ascii "(putprop (quote nthcdr) (getd (quote g00425::nthcdr)) (quote"
.asciz " setf-expand))"
.asciz "g00431::arraycall"
.ascii "(putprop (quote g00431::arraycall) (list (quote (2 . 2)) fcn"
.asciz "-in-macros.l) (quote fcn-info))"
.ascii "(putprop (quote arraycall) (getd (quote g00431::arraycall)) "
.asciz "(quote setf-expand))"
.asciz "g00437::get"
.ascii "(putprop (quote g00437::get) (list (quote (2 . 2)) fcn-in-ma"
.asciz "cros.l) (quote fcn-info))"
.ascii "(putprop (quote get) (getd (quote g00437::get)) (quote setf-"
.asciz "expand))"
.asciz "g00443::plist"
.ascii "(putprop (quote g00443::plist) (list (quote (2 . 2)) fcn-in-"
.asciz "macros.l) (quote fcn-info))"
.ascii "(putprop (quote plist) (getd (quote g00443::plist)) (quote s"
.asciz "etf-expand))"
.asciz "g00449::symeval"
.ascii "(putprop (quote g00449::symeval) (list (quote (2 . 2)) fcn-i"
.asciz "n-macros.l) (quote fcn-info))"
.ascii "(putprop (quote symeval) (getd (quote g00449::symeval)) (quo"
.asciz "te setf-expand))"
.asciz "g00455::arg"
.ascii "(putprop (quote g00455::arg) (list (quote (2 . 2)) fcn-in-ma"
.asciz "cros.l) (quote fcn-info))"
.ascii "(putprop (quote arg) (getd (quote g00455::arg)) (quote setf-"
.asciz "expand))"
.asciz "g00461::args"
.ascii "(putprop (quote g00461::args) (list (quote (2 . 2)) fcn-in-m"
.asciz "acros.l) (quote fcn-info))"
.ascii "(putprop (quote args) (getd (quote g00461::args)) (quote set"
.asciz "f-expand))"
.asciz "push"
.ascii "(putprop (quote push) (list (quote nil) fcn-in-macros.l) (qu"
.asciz "ote fcn-info))"
.asciz "pop"
.ascii "(putprop (quote pop) (list (quote nil) fcn-in-macros.l) (quo"
.asciz "te fcn-info))"
.asciz "let"
.ascii "(putprop (quote let) (list (quote nil) fcn-in-macros.l) (quo"
.asciz "te fcn-info))"
.asciz "de-compose"
.ascii "(putprop (quote de-compose) (list (quote (2 . 2)) fcn-in-mac"
.asciz "ros.l) (quote fcn-info))"
.asciz "caseq"
.ascii "(putprop (quote caseq) (list (quote nil) fcn-in-macros.l) (q"
.asciz "uote fcn-info))"
.asciz "selectq"
.ascii "(putprop (quote selectq) (list (quote nil) fcn-in-macros.l) "
.asciz "(quote fcn-info))"
.asciz "let*"
.ascii "(putprop (quote let*) (list (quote nil) fcn-in-macros.l) (qu"
.asciz "ote fcn-info))"
.asciz "listify"
.ascii "(putprop (quote listify) (list (quote nil) fcn-in-macros.l) "
.asciz "(quote fcn-info))"
.asciz "include-if"
.ascii "(putprop (quote include-if) (list (quote nil) fcn-in-macros."
.asciz "l) (quote fcn-info))"
.asciz "includef-if"
.ascii "(putprop (quote includef-if) (list (quote nil) fcn-in-macros"
.asciz ".l) (quote fcn-info))"
.asciz "(setq if-keyword-list (quote (then thenret elseif else)))"
.asciz "if"
.ascii "(putprop (quote if) (list (quote nil) fcn-in-macros.l) (quot"
.asciz "e fcn-info))"
.asciz "(putd (quote If) (getd (quote if)))"
.asciz "defvar"
.ascii "(putprop (quote defvar) (list (quote nil) fcn-in-macros.l) ("
.asciz "quote fcn-info))"
.asciz "list*"
.ascii "(putprop (quote list*) (list (quote nil) fcn-in-macros.l) (q"
.asciz "uote fcn-info))"
.asciz "construct-list*"
.ascii "(putprop (quote construct-list*) (list (quote (1 . 1)) fcn-i"
.asciz "n-macros.l) (quote fcn-info))"
.asciz "<="
.ascii "(putprop (quote <=) (list (quote nil) fcn-in-macros.l) (quot"
.asciz "e fcn-info))"
.asciz "<=&"
.ascii "(putprop (quote <=&) (list (quote nil) fcn-in-macros.l) (quo"
.asciz "te fcn-info))"
.asciz ">="
.ascii "(putprop (quote >=) (list (quote nil) fcn-in-macros.l) (quot"
.asciz "e fcn-info))"
.asciz ">=&"
.ascii "(putprop (quote >=&) (list (quote nil) fcn-in-macros.l) (quo"
.asciz "te fcn-info))"
lit_end:
.data | this is just for documentation 
.asciz "@(#)Compiled by Liszt 68000 version 8.39a on Fri Dec 15 18:52:41 1989"
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
