	.globl	F00083	|(fcn macro printret)
F00083:
	link	a6,#-L00086
	tstb	sp@(-132)
	moveml	#L00087,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00084:
	movl	a3@,a2@+
	movl	a3@(4),a2@+
	movl	a4@,a5	|(calling append)
	movl	a5@,a2@+
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#4,a2
	moveml	a6@(-20),#L00087
	unlk	a6
	rts
L00087 = 15488
L00086 = 20
	.globl	F00088	|(fcn nlambda pp)
F00088:
	link	a6,#-L00091
	tstb	sp@(-132)
	moveml	#L00092,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00089:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	_bnp,a1
	movl	a3@(8),a5
	movl	a5@,a1@+
	movl	a3@(8),a1@+
	movl	a3@(8),a5
	movl	d7,a5@
	movl	a3@(12),a5
	movl	a5@,a1@+
	movl	a3@(12),a1@+
	movl	a3@(12),a5
	movl	d7,a5@
	movl	a1,_bnp
	movl	d7,a4@(4)
	movl	a3@(16),a5
	movl	a5@,d6
	movl	a3@(12),a5
	movl	d6,a5@
L00093:
	movl	a4@,a1
	movl	a1@(4),a4@(8)
	cmpl	a1@(4),d7
	jne	L00097
	lea	a2@,a5	|(calling condclosefile)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@,a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(20),a5
	movl	a5@,d0
	jra	L00095
|	jra	L00096
L00097:
	movl	d7,d0
L00096:
	movl	a4@(8),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00099
	movl	a3@(24),a2@+
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00102
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00103
	jra	L00101
L00102:
	subql	#8,a2
L00103:
	lea	a2@,a5	|(calling condclosefile)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a4@(8),a5	|(calling eval)
	movl	a5@,a1
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(12),a5
	movl	d0,a5@
	jra	L00100
L00101:
	movl	a3@(28),a2@+
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00105
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00106
	jra	L00104
L00105:
	subql	#8,a2
L00106:
	lea	a2@,a5	|(calling condclosefile)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a4@(8),a5	|(calling outfile)
	movl	a5@,a1
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(12),a5
	movl	d0,a5@
	movl	a3@(20),a5
	movl	a5@,d6
	movl	a3@(8),a5
	movl	d6,a5@
	jra	L00100
L00104:
	movl	a3@(32),a2@+
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00108
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00109
	jra	L00107
L00108:
	subql	#8,a2
L00109:
	movl	a4@(8),a5	|(calling eval)
	movl	a5@,a1
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00100
L00107:
	movl	a4@(8),a2@+	|(calling pp-form)
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00100:
	jra	L00094
|	jra	L00098
L00099:
	movl	d7,d0
L00098:
	movl	d7,a2@+
	movl	a3@(36),a5	|(beginning do)
	movl	a5@,a4@(20)
	movl	a4@(20),a2@+
L00112:
	cmpl	a4@(24),d7
	jne	L00113
	movl	d7,d0
	jra	L00114
L00113:
	movl	a4@(24),a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	movl	a4@(28),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00117
	movl	a4@(28),a5
	movl	a5@,a4@(32)
	movl	a4@(28),a1
	movl	a1@(4),a4@(28)
	jra	L00116
L00117:
	movl	a3@(40),a4@(32)
L00116:
	movl	a3@(44),d6
	cmpl	a4@(28),d6
	jne	L00119
	movl	a4@(8),a2@+	|(calling boundp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00120
	movl	a4@(32),a2@+	|(calling apply)
	movl	a4@(8),a2@+
	movl	a4@(8),a2@+	|(calling eval)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(44),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00120
	movl	a3@(12),a5	|(calling terpr)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00120:
	jra	L00118
L00119:
	movl	a3@(48),d6
	cmpl	a4@(28),d6
	jne	L00121
	movl	a4@(8),a1
	cmpl	a1@(8),d7
	jeq	L00122
	movl	a4@(8),a1
	movl	a1@(8),d0
	cmpl	a1@(8),d7
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jeq	L00124
	movl	a4@(32),a2@+	|(calling apply)
	movl	a4@(8),a2@+
	movl	a4@(8),a1
	movl	a1@(8),a2@+
	cmpl	a1@(8),d7
	movl	a3@(48),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00123
L00124:
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(52),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(8),a2@+	|(calling msg-print)
	jra	L00126
L00125:
	movl	d0,a2@+
L00126:
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(56),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00123:
	cmpl	d0,d7
	jeq	L00122
	movl	a3@(12),a5	|(calling terpri)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00122:
	jra	L00118
L00121:
	movl	a4@(8),a2@+
	movl	a4@(28),a2@+
	jbsr	_qget
	cmpl	d0,d7
	jeq	L00127
	movl	a4@(32),a2@+	|(calling apply)
	movl	a4@(8),a2@+
	movl	a4@(8),a2@+
	movl	a4@(28),a2@+
	jbsr	_qget
	movl	d0,a2@+
	movl	a4@(28),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(12),a5	|(calling terpri)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00118
L00127:
	movl	d7,d0
L00118:
L00115:
	subql	#8,a2
	movl	a4@(24),a5
	movl	a5@,a4@(24)
	jra	L00112
L00114:
	subql	#8,a2
L00094:
	movl	a4@,a5
	movl	a5@,a4@
	jra	L00093
|	movl	d7,d0
L00095:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1,_bnp
	subl	#16,_bnp
	subl	#20,a2
	moveml	a6@(-24),#L00092
	unlk	a6
	rts
L00092 = 15552
L00091 = 24
	.globl	F00128	|(fcn lambda pp-value)
F00128:
	link	a6,#-L00131
	tstb	sp@(-132)
	moveml	#L00132,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00129:
	movl	a3@(60),a2@+	|(calling pp-form)
	movl	a4@,a2@+
	movl	a3@(64),a2@+
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
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subl	#12,a2
	moveml	a6@(-20),#L00132
	unlk	a6
	rts
L00132 = 15488
L00131 = 20
	.globl	F00133	|(fcn lambda pp-function)
F00133:
	link	a6,#-L00136
	tstb	sp@(-132)
	moveml	#L00137,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00134:
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00139
	movl	a4@(4),a5
	movl	a5@,a1
	movl	a1@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00139
	movl	a4@(4),a5
	movl	a5@,a0
	movl	a0@(4),a1
	movl	a1@(4),d5
	movl	a3@(68),d0
	cmpl	d0,d7
	jeq	L00139
	movl	d0,a0
L00141:
	cmpl	a0@(4),d5
	jeq	L00140
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00141
	movl	a0,d0
	jra	L00139
L00140:
	movl	a4@,a2@+
	movl	a3@(72),a2@+
	jbsr	_qget
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00143
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(76),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@,a2@+	|(calling msg-print)
	jra	L00145
L00144:
	movl	d0,a2@+
L00145:
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(80),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(20),a5
	movl	a5@,d0
	jra	L00142
L00143:
	movl	a3@(84),a2@+	|(calling pp-form)
	movl	a4@,a2@+
	movl	a4@,a2@+
	movl	a3@(72),a2@+
	jbsr	_qget
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(20),a5
	movl	a5@,d0
L00142:
	cmpl	d0,d7
	jne	L00138
	jra	L00146
L00139:
	movl	d7,d0
L00146:
	movl	a3@(84),a2@+	|(calling pp-form)
	movl	a4@,a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(20),a5
	movl	a5@,d0
L00138:
	subl	#12,a2
	moveml	a6@(-24),#L00137
	unlk	a6
	rts
L00137 = 15520
L00136 = 24
	.globl	F00147	|(fcn lambda pp-prop)
F00147:
	link	a6,#-L00150
	tstb	sp@(-132)
	moveml	#L00151,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00148:
	movl	a3@(88),a2@+	|(calling pp-form)
	movl	a4@,a2@+
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subl	#12,a2
	moveml	a6@(-20),#L00151
	unlk	a6
	rts
L00151 = 15488
L00150 = 20
	.globl	F00152	|(fcn lambda condclosefile)
F00152:
	link	a6,#-L00155
	tstb	sp@(-132)
	moveml	#L00156,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00153:
	movl	a3@(8),a5
	cmpl	a5@,d7
	jeq	L00158
	movl	a3@(12),a5	|(calling terpr)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(12),a5	|(calling close)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(8),a5
	movl	d7,a5@
	movl	a3@(8),a5
	movl	a5@,d0
	jra	L00157
L00158:
	movl	d7,d0
L00157:
	moveml	a6@(-20),#L00156
	unlk	a6
	rts
L00156 = 15488
L00155 = 20
	.globl	F00161	|(fcn lexpr pp-form)
F00161:
	link	a6,#-L00164
	tstb	sp@(-132)
	moveml	#L00165,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00162:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	#_nilatom+0x1400+4,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	_bnp,a1
	movl	a3@(12),a5
	movl	a5@,a1@+
	movl	a3@(12),a1@+
	movl	a3@(12),a5
	movl	a4@(8),a5@
	movl	a1,_bnp
	movl	#2,d6
	movl	a4@,a5
	cmpl	a5@,d6
	jle	L00169
	movl	a3@(16),a5
	movl	a5@,d6
	movl	a3@(12),a5
	movl	d6,a5@
	jra	L00168
L00169:
	movl	#_nilatom+0x1400+8,d0
	subl	a4@(-4),d0
	movl	a3@(12),a5
	movl	a4@(-8,d0:L),a5@
	movl	a3@(20),a5
	movl	a5@,a4@(12)
L00168:
	movl	#3,d6
	movl	a4@,a5
	cmpl	a5@,d6
	jle	L00173
	movl	#_nilatom+0x1400+0,a4@(16)
	jra	L00172
L00173:
	movl	#_nilatom+0x1400+12,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(16)
L00172:
	movl	a4@(4),a2@+	|(calling $prdf)
	movl	a4@(16),a2@+
	movl	#_nilatom+0x1400+0,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subl	#20,a2
	moveml	a6@(-24),#L00165
	unlk	a6
	rts
L00165 = 15552
L00164 = 24
	.globl	F00176	|(fcn lambda $prpr)
F00176:
	link	a6,#-L00179
	tstb	sp@(-132)
	moveml	#L00180,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00177:
	movl	a4@,a2@+	|(calling pp-form)
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#4,a2
	moveml	a6@(-20),#L00180
	unlk	a6
	rts
L00180 = 15488
L00179 = 20
	.globl	F00181	|(fcn lambda $prdf)
F00181:
	link	a6,#-L00184
	tstb	sp@(-132)
	moveml	#L00185,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00182:
	movl	_bnp,a1
	movl	a3@(92),a5
	movl	a5@,a1@+
	movl	a3@(92),a1@+
	movl	a3@(92),a5
	movl	a4@(8),a5@
	movl	a1,_bnp
	movl	a4@(4),a5
	movl	a5@,a2@+
	movl	a3@(96),a5
	movl	a5@,a0
	movl	a0@,d0
	movl	a2@-,d6
	cmpl	d0,d6
	jle	L00190
	movl	a4@,a2@+	|(calling flatc)
	movl	a3@(100),a5
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00192
	movl	a3@(100),a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	d0,a2@+
	jra	L00193
L00192:
	movl	a3@(100),a5
	movl	a5@,d0
	addql	#4,d0
	movl	d0,a2@+
L00193:
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a0
	movl	a0@,a2@+
	movl	a3@(100),a5
	movl	a5@,a0
	movl	a0@,d0
	movl	a2@-,d6
	cmpl	d0,d6
	jle	L00190
	movl	a3@(12),a5	|(calling terpri)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(104),a2@+	|(calling patom)
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@,a2@+	|(calling $prdf)
	movl	#_nilatom+0x1400+20,a2@+
	movl	#_nilatom+0x1400+0,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	a3@(12),a5	|(calling terpri)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(108),a2@+	|(calling patom)
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(12),a5	|(calling terpri)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d7,d0
	jra	L00188
|	jra	L00189
L00190:
	movl	d7,d0
L00189:
	movl	a4@(4),a2@+	|(calling tab)
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00186:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00195
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
	jeq	L00195
	movl	a4@,a0
	movl	a0@(4),a2@+
	movl	a3@(112),a2@+
	jbsr	_qget
	cmpl	d0,d7
	jeq	L00200
	movl	a4@,a1
	movl	a1@(4),a2@+
	movl	a3@(112),a2@+
	jbsr	_qget
	movl	d0,a2@+
	movl	a4@,a2@+
	movl	a4@(4),a2@+
	movl	a3@(92),a5
	movl	a5@,a2@+
	movl	a4@(12),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00202
	movl	a4@(12),a1
	cmpl	a1@(8),d7
	jeq	L00202
	movl	a4@(12),a1
	movl	a1@(8),a4@(12)
	cmpl	a1@(8),d7
	jra	L00201
L00202:
	movl	d7,d0
L00201:
	movl	a4@(12),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00205
	movl	a3@(116),a2@+
	movl	a4@(12),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00205
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-16),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-16),a2
	jra	L00204
L00205:
	lea	a2@(-16),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-16),a2
L00204:
	cmpl	d0,d7
	jne	L00199
L00200:
	movl	a4@,a1
	movl	a1@(4),a2@+
	movl	a3@(120),a2@+
	jbsr	_qget
	cmpl	d0,d7
	jeq	L00195
	movl	a4@,a1	|(calling printmacrochar)
	movl	a1@(4),a2@+
	movl	a3@(120),a2@+
	jbsr	_qget
	movl	d0,a2@+
	movl	a4@,a2@+
	movl	a4@(4),a2@+
	movl	a3@(92),a5
	movl	a5@,a2@+
	lea	a2@(-16),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+136,a5
	jbsr	a5@
	lea	a2@(-16),a2
	cmpl	d0,d7
	jeq	L00195
L00199:
	movl	d7,d0
	jra	L00188
|	jra	L00194
L00195:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00209
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
	jeq	L00208
	movl	a4@,a5
	movl	a5@,d0
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
	jeq	L00208
L00209:
	movl	a4@,a2@+	|(calling print)
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+144,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@,d0
	jra	L00188
|	jra	L00194
L00208:
	movl	a3@(92),a5
	movl	a5@,a0
	movl	a0@,d2
	movl	d2,sp@-
	movl	a4@,a2@+	|(calling flatc)
	movl	a3@(12),a5	|(calling charcnt)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
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
	jcs	L00216
	jbsr	_qnewint
L00216:
	movl	d0,a0
	movl	a0@,a2@+
	movl	a3@(12),a5	|(calling charcnt)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a0
	movl	a0@,d0
	movl	a2@-,d6
	cmpl	d0,d6
	jpl	L00215
	movl	a4@,a2@+	|(calling printaccross)
	movl	a4@(4),a2@+
	movl	a3@(92),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+160,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00194
L00215:
	movl	a3@(124),a5	|(calling $patom1)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00217
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
	jeq	L00217
	movl	a4@,a5
	movl	a5@,d0
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
	jne	L00217
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,d0
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
	jne	L00217
	movl	d7,a2@+
	movl	a4@,a1	|(calling print)
	movl	a1@(4),a2@+
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+144,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@,a1
	movl	a3@(128),a2@+	|(calling $patom1)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(12),a5	|(calling nwritn)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+176,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(12)
L00225:
	movl	a4@,a5	|(calling $prd1)
	movl	a5@,a2@+
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+184,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@,a5
	movl	a5@,a4@
	movl	a4@,a0
	movl	a0@,d0
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
	jne	L00228
	movl	a3@(12),a5	|(calling terpr)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00225
|	jra	L00227
L00228:
	movl	d7,d0
L00227:
L00226:
	subql	#4,a2
	jra	L00194
L00217:
	movl	d7,a2@+
	movl	a3@(12),a5	|(calling nwritn)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+176,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(12)
L00231:
	movl	a4@,a2@+	|(calling $prd1)
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+184,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@,a5
	movl	a5@,a4@
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
	jne	L00234
	movl	a3@(12),a5	|(calling terpr)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00231
|	jra	L00233
L00234:
	movl	d7,d0
L00233:
L00232:
	subql	#4,a2
L00194:
L00187:
	movl	a3@(132),a5	|(calling $patom1)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d7,d0
L00188:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subl	#12,a2
	moveml	a6@(-28),#L00185
	unlk	a6
	rts
L00185 = 15556
L00184 = 28
	.globl	F00237	|(fcn lambda $prd1)
F00237:
	link	a6,#-L00240
	tstb	sp@(-132)
	moveml	#L00241,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00238:
	movl	a4@,a1	|(calling $prdf)
	movl	a1@(4),a2@+
	movl	a4@(4),a2@+
	movl	a4@,a5
	movl	a5@,a4@
	cmpl	a5@,d7
	jne	L00244
	movl	a3@(92),a5
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00245
	movl	a3@(92),a5
	movl	a5@,a0
	jbsr	_qoneplus
	jra	L00246
L00245:
	movl	a3@(92),a5
	movl	a5@,d0
	addql	#4,d0
L00246:
	jra	L00243
L00244:
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
	jeq	L00247
	movl	d7,a4@(4)
	movl	#_nilatom+0x1400+16,a2@+	|(calling plus)
	movl	a3@(92),a5
	movl	a5@,a2@+
	movl	a4@,a2@+	|(calling pntlen)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+192,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00243
L00247:
	movl	a3@(92),a5
	movl	a5@,d0
L00243:
	movl	d0,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-12),a2
	cmpl	a4@(4),d7
	jne	L00251
	movl	a3@(136),a2@+	|(calling $patom1)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@,a2@+	|(calling print)
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+144,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@,d0
	jra	L00242
|	jra	L00250
L00251:
	movl	d7,d0
L00250:
	movl	d7,d0
L00242:
	subql	#8,a2
	moveml	a6@(-20),#L00241
	unlk	a6
	rts
L00241 = 15488
L00240 = 20
	.globl	F00252	|(fcn lambda printprog)
F00252:
	link	a6,#-L00255
	tstb	sp@(-132)
	moveml	#L00256,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00253:
	movl	_bnp,a1
	movl	a3@(92),a5
	movl	a5@,a1@+
	movl	a3@(92),a1@+
	movl	a3@(92),a5
	movl	a4@(8),a5@
	movl	a1,_bnp
	movl	d7,a2@+
	movl	a4@,a2@+	|(calling last)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a0
	cmpl	a0@,d7
	jeq	L00259
	movl	d7,d0
	jra	L00257
|	jra	L00258
L00259:
	movl	d7,d0
L00258:
	movl	a4@(4),a2@+	|(calling add1)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+216,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(12)
	movl	a3@(140),a2@+	|(calling princ)
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@,a1	|(calling princ)
	movl	a1@(4),a2@+
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(144),a2@+	|(calling princ)
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@,a5	|(calling print)
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+144,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d7,a2@+
	movl	a4@,a5	|(beginning do)
	movl	a5@,a1
	movl	a1@,a4@(16)
	movl	a4@(16),a2@+
L00262:
	cmpl	a4@(20),d7
	jne	L00263
	movl	d7,d0
	jra	L00264
L00263:
	movl	a4@(20),a1
	movl	a1@(4),a2@+
	movl	a4@(24),d0
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
	jeq	L00266
	movl	a4@(12),a2@+	|(calling tab)
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@(24),a2@+	|(calling print)
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+144,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00265
L00266:
	movl	a4@(24),a2@+	|(calling $prdf)
	movl	a4@(4),a5
	movl	a5@,d0
	addl	#6,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00269
	jbsr	_qnewint
L00269:
	movl	d0,a2@+
	movl	a3@(92),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00265:
	subql	#4,a2
	movl	a4@(20),a5
	movl	a5@,a4@(20)
	jra	L00262
L00264:
	subql	#8,a2	|(calling princ)
	movl	a3@(148),a2@+
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(20),a5
	movl	a5@,d0
	jra	L00257
|	movl	d7,d0
L00257:
	subql	#4,a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subl	#12,a2
	moveml	a6@(-24),#L00256
	unlk	a6
	rts
L00256 = 15492
L00255 = 24
	.globl	F00270	|(fcn lambda print-lambda)
F00270:
	link	a6,#-L00273
	tstb	sp@(-132)
	moveml	#L00274,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00271:
	movl	_bnp,a1
	movl	a3@(92),a5
	movl	a5@,a1@+
	movl	a3@(92),a1@+
	movl	a3@(92),a5
	movl	a4@(8),a5@
	movl	a1,_bnp
	movl	d7,a2@+
	movl	a4@,a2@+	|(calling last)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a0
	cmpl	a0@,d7
	jeq	L00277
	movl	d7,d0
	jra	L00275
|	jra	L00276
L00277:
	movl	d7,d0
L00276:
	movl	a4@(4),a2@+	|(calling add1)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+216,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(12)
	movl	a3@(140),a2@+	|(calling princ)
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@,a1	|(calling princ)
	movl	a1@(4),a2@+
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(144),a2@+	|(calling princ)
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@,a5	|(calling print)
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+144,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@,a1
	movl	a1@(4),d0
	cmpl	a3@(116),d0
	jne	L00279
	movl	#_nilatom+0x1400+32,d0
	jra	L00278
L00279:
	movl	#_nilatom+0x1400+36,d0
L00278:
	movl	d0,a2@+
	movl	d7,a2@+
	movl	a4@,a5	|(beginning do)
	movl	a5@,a1
	movl	a1@,a4@(20)
	movl	a4@(20),a2@+
L00282:
	cmpl	a4@(24),d7
	jne	L00283
	movl	d7,d0
	jra	L00284
L00283:
	movl	a4@(24),a1
	movl	a1@(4),a2@+
	movl	a4@(28),a2@+	|(calling $prdf)
	movl	a4@(4),a5
	movl	a5@,d0
	movl	a4@(16),a5
	addl	a5@,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00285
	jbsr	_qnewint
L00285:
	movl	d0,a2@+
	movl	a3@(92),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-12),a2
	subql	#4,a2
	movl	a4@(24),a5
	movl	a5@,a4@(24)
	jra	L00282
L00284:
	subl	#12,a2	|(calling princ)
	movl	a3@(148),a2@+
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(12),a5	|(calling terpr)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(4),a2@+	|(calling tab)
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(20),a5
	movl	a5@,d0
	jra	L00275
|	movl	d7,d0
L00275:
	subql	#4,a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subl	#12,a2
	moveml	a6@(-24),#L00274
	unlk	a6
	rts
L00274 = 15492
L00273 = 24
	.globl	F00286	|(fcn lambda printdef)
F00286:
	link	a6,#-L00289
	tstb	sp@(-132)
	moveml	#L00290,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00287:
	movl	_bnp,a1
	movl	a3@(92),a5
	movl	a5@,a1@+
	movl	a3@(92),a1@+
	movl	a3@(92),a5
	movl	a4@(8),a5@
	movl	a1,_bnp
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@(4),d6
	jne	L00292
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L00292
	movl	#_nilatom+0x1400+0,d6
	movl	a3@(92),a5
	cmpl	a5@,d6
	jne	L00292
	movl	a3@(92),a5
	movl	a5@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L00292
	movl	a4@,a5
	movl	a5@,a1
	cmpl	a1@(4),d7
	jeq	L00292
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
	jeq	L00292
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00292
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@,a5
	cmpl	a5@,d7
	jne	L00292
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a0
	movl	a0@(4),a0
	movl	a0@(4),d5
	movl	a3@(152),d0
	cmpl	d0,d7
	jeq	L00292
	movl	d0,a0
L00299:
	cmpl	a0@(4),d5
	jeq	L00298
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00299
	movl	a0,d0
	jra	L00292
L00298:
	movl	a4@,a5	|(calling last)
	movl	a5@,a0
	movl	a0@,a0
	movl	a0@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a0
	cmpl	a0@,d7
	jne	L00292
	movl	a3@(140),a2@+	|(calling princ)
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(84),a2@+	|(calling princ)
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(144),a2@+	|(calling princ)
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@,a5	|(calling princ)
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(12),a5	|(calling terpri)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(156),a2@+	|(calling princ)
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@,a5	|(calling princ)
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),a1
	movl	a1@(4),a2@+
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(144),a2@+	|(calling princ)
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@,a5	|(calling princ)
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(12),a5	|(calling terpri)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d7,a2@+
	movl	a4@,a5	|(beginning do)
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),a5
	movl	a5@,a1
	movl	a1@,a4@(12)
	movl	a4@(12),a2@+
L00302:
	cmpl	a4@(16),d7
	jne	L00303
	movl	d7,d0
	jra	L00304
L00303:
	movl	a4@(16),a1
	movl	a1@(4),a2@+
	movl	a4@(20),a2@+	|(calling $prdf)
	movl	#_nilatom+0x1400+16,a2@+
	movl	#_nilatom+0x1400+0,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-12),a2
	subql	#4,a2
	movl	a4@(16),a5
	movl	a5@,a4@(16)
	jra	L00302
L00304:
	subql	#8,a2	|(calling princ)
	movl	a3@(160),a2@+
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(20),a5
	movl	a5@,d0
	jra	L00291
L00292:
	movl	d7,d0
L00291:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subl	#12,a2
	moveml	a6@(-28),#L00290
	unlk	a6
	rts
L00290 = 15584
L00289 = 28
	.globl	F00305	|(fcn lambda printmacrochar)
F00305:
	link	a6,#-L00308
	tstb	sp@(-132)
	moveml	#L00309,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(16),a2
L00306:
	movl	_bnp,a1
	movl	a3@(92),a5
	movl	a5@,a1@+
	movl	a3@(92),a1@+
	movl	a3@(92),a5
	movl	a4@(12),a5@
	movl	a1,_bnp
	movl	a4@(4),a5
	cmpl	a5@,d7
	jeq	L00312
	movl	a4@(4),a5
	movl	a5@,a1
	cmpl	a1@,d7
	jeq	L00311
L00312:
	movl	d7,d0
	jra	L00310
L00311:
	movl	a4@,a2@+	|(calling princ)
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@(4),a5	|(calling $prdf)
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@(8),a2@+	|(calling add1)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+216,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(92),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	a3@(20),a5
	movl	a5@,d0
L00310:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subl	#16,a2
	moveml	a6@(-20),#L00309
	unlk	a6
	rts
L00309 = 15488
L00308 = 20
	.globl	F00313	|(fcn lambda printaccross)
F00313:
	link	a6,#-L00316
	tstb	sp@(-132)
	moveml	#L00317,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00314:
	movl	_bnp,a1
	movl	a3@(92),a5
	movl	a5@,a1@+
	movl	a3@(92),a1@+
	movl	a3@(92),a5
	movl	a4@(8),a5@
	movl	a1,_bnp
	movl	a3@(140),a2@+	|(calling princ)
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00318:
	cmpl	a4@,d7
	jeq	L00320
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
	jeq	L00321
	movl	a3@(164),a2@+	|(calling princ)
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@,a2@+	|(calling princ)
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00320
L00321:
	movl	a4@,a1	|(calling $prdf)
	movl	a1@(4),a2@+
	movl	a3@(12),a5	|(calling nwritn)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+176,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(92),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	a4@,a5
	movl	a5@,a4@
	cmpl	a4@,d7
	jeq	L00325
	movl	a3@(144),a2@+	|(calling princ)
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00324
L00325:
	movl	d7,d0
L00324:
	jra	L00318
L00320:
	movl	d7,d0
L00319:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subl	#12,a2
	moveml	a6@(-20),#L00317
	unlk	a6
	rts
L00317 = 15488
L00316 = 20
bind_org:
	linker_size = 	42
	trans_size = 	29
	.long	99
	.long	99
	.long	99
	.long	2
	.long	99
	.long	1
	.long	99
	.long	99
	.long	0
	.long	99
	.long	0
	.long	99
	.long	0
	.long	99
	.long	0
	.long	99
	.long	99
	.long	0
	.long	99
	.long	0
	.long	99
	.long	0
	.long	99
	.long	0
	.long	99
	.long	0
	.long	99
	.long	99
	.long	0
	.long	99
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
	.long -1
lit_org:
.asciz "progn"
.asciz "print"
.asciz "$fileopen$"
.asciz "$outport$"
.asciz "poport"
.asciz "t"
.asciz "P"
.asciz "F"
.asciz "E"
.asciz "prettyprops"
.asciz "pp-prop"
.asciz "value"
.asciz "function"
.asciz "\"pp: function \""
.asciz "\" is machine coded (bcd) \""
.asciz "setq"
.asciz "quote"
.asciz "(T-nargs T-arglist)"
.asciz "trace-orig-fcn"
.asciz "\"pp: function \""
.asciz "\" is machine coded (bcd) \""
.asciz "def"
.asciz "defprop"
.asciz "rmar"
.asciz "pparm1"
.asciz "pparm2"
.asciz "\"; <<<<< start back on the left <<<<<\""
.asciz "\"; >>>>> continue on the right >>>>>\""
.asciz "printmacro"
.asciz "lambda"
.asciz "printmacrochar"
.asciz "lpar"
.asciz "\" \""
.asciz "rpar"
.asciz "\" . \""
.asciz "\\("
.asciz "\\ "
.asciz "\\)"
.asciz "(lambda nlambda macro lexpr)"
.asciz "\\ \\ \\("
.asciz "\\)\\)"
.asciz ".\\ "
.asciz "append"
.asciz "condclosefile"
.asciz "terpr"
.asciz "equal"
.asciz "eval"
.asciz "outfile"
.asciz "pp-form"
.asciz "boundp"
.asciz "apply"
.asciz "msg-print"
.asciz "terpri"
.asciz "close"
.asciz "$prdf"
.asciz "flatc"
.asciz "patom"
.asciz "tab"
.asciz "funcall"
.asciz "printmacrochar"
.asciz "print"
.asciz "charcnt"
.asciz "printaccross"
.asciz "$patom1"
.asciz "nwritn"
.asciz "$prd1"
.asciz "pntlen"
.asciz "plus"
.asciz "last"
.asciz "add1"
.asciz "princ"
.ascii "(setq fcn-in-pp.l \"pp.l compiled by Liszt 68000 version 8.39"
.asciz "a on Fri Dec 15 18:53:39 1989\")"
.ascii "(setq rcs-pp- \"$Header: /usr/lib/lisp/RCS/pp.l,v 1.2 83/08/1"
.asciz "5 22:27:54 jkf Exp $\")"
.ascii "(setq prettyprops (quote ((comment . pp-comment) (function ."
.asciz " pp-function) (value . pp-value))))"
.asciz "printret"
.ascii "(putprop (quote printret) (list (quote nil) fcn-in-pp.l) (qu"
.asciz "ote fcn-info))"
.asciz "pp"
.ascii "(putprop (quote pp) (list (quote nil) fcn-in-pp.l) (quote fc"
.asciz "n-info))"
.asciz "(setq pparm1 50 pparm2 100)"
.asciz "pp-value"
.ascii "(putprop (quote pp-value) (list (quote (3 . 3)) fcn-in-pp.l)"
.asciz " (quote fcn-info))"
.asciz "pp-function"
.ascii "(putprop (quote pp-function) (list (quote (3 . 3)) fcn-in-pp"
.asciz ".l) (quote fcn-info))"
.asciz "pp-prop"
.ascii "(putprop (quote pp-prop) (list (quote (3 . 3)) fcn-in-pp.l) "
.asciz "(quote fcn-info))"
.asciz "condclosefile"
.ascii "(putprop (quote condclosefile) (list (quote (0 . 0)) fcn-in-"
.asciz "pp.l) (quote fcn-info))"
.asciz "(setq $outport$ nil)"
.asciz "pp-form"
.ascii "(putprop (quote pp-form) (list (quote (1 . 3)) fcn-in-pp.l) "
.asciz "(quote fcn-info))"
.asciz "$prpr"
.ascii "(putprop (quote $prpr) (list (quote (1 . 1)) fcn-in-pp.l) (q"
.asciz "uote fcn-info))"
.asciz "$prdf"
.ascii "(putprop (quote $prdf) (list (quote (3 . 3)) fcn-in-pp.l) (q"
.asciz "uote fcn-info))"
.asciz "$prd1"
.ascii "(putprop (quote $prd1) (list (quote (2 . 2)) fcn-in-pp.l) (q"
.asciz "uote fcn-info))"
.asciz "printprog"
.ascii "(putprop (quote printprog) (list (quote (3 . 3)) fcn-in-pp.l"
.asciz ") (quote fcn-info))"
.asciz "(putprop (quote prog) (quote printprog) (quote printmacro))"
.asciz "print-lambda"
.ascii "(putprop (quote print-lambda) (list (quote (3 . 3)) fcn-in-p"
.asciz "p.l) (quote fcn-info))"
.ascii "(putprop (quote lambda) (quote print-lambda) (quote printmac"
.asciz "ro))"
.ascii "(putprop (quote nlambda) (quote print-lambda) (quote printma"
.asciz "cro))"
.asciz "printdef"
.ascii "(putprop (quote printdef) (list (quote (3 . 3)) fcn-in-pp.l)"
.asciz " (quote fcn-info))"
.asciz "(putprop (quote def) (quote printdef) (quote printmacro))"
.asciz "printmacrochar"
.ascii "(putprop (quote printmacrochar) (list (quote (4 . 4)) fcn-in"
.asciz "-pp.l) (quote fcn-info))"
.asciz "(putprop (quote quote) (quote \\') (quote printmacrochar))"
.asciz "printaccross"
.ascii "(putprop (quote printaccross) (list (quote (3 . 3)) fcn-in-p"
.asciz "p.l) (quote fcn-info))"
lit_end:
.data | this is just for documentation 
.asciz "@(#)Compiled by Liszt 68000 version 8.39a on Fri Dec 15 18:53:54 1989"
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
