	.globl	F00085	|(fcn macro top-init)
F00085:
	link	a6,#-L00088
	tstb	sp@(-132)
	moveml	#L00089,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00086:
	movl	a3@,d0
	subql	#4,a2
	moveml	a6@(-20),#L00089
	unlk	a6
	rts
L00089 = 15488
L00088 = 20
	.globl	F00090	|(fcn macro top-prompt)
F00090:
	link	a6,#-L00093
	tstb	sp@(-132)
	moveml	#L00094,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00091:
	movl	a3@(4),d0
	subql	#4,a2
	moveml	a6@(-20),#L00094
	unlk	a6
	rts
L00094 = 15488
L00093 = 20
	.globl	F00095	|(fcn macro top-read)
F00095:
	link	a6,#-L00098
	tstb	sp@(-132)
	moveml	#L00099,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00096:
	movl	a4@,a5
	movl	a5@,a2@+
	movl	a3@(8),a2@+
	movl	a3@(12),a2@+
	movl	a3@(16),a2@+
	movl	a3@(20),a2@+
	movl	a4@(4),a2@+	|(calling append)
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
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(24),a2@+
	movl	a3@(28),a2@+
	movl	a4@(4),a2@+	|(calling append)
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
	subql	#8,a2
	moveml	a6@(-20),#L00099
	unlk	a6
	rts
L00099 = 15488
L00098 = 20
	.globl	F00100	|(fcn macro top-eval)
F00100:
	link	a6,#-L00103
	tstb	sp@(-132)
	moveml	#L00104,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00101:
	movl	a4@,a5
	movl	a5@,a2@+
	movl	a3@(8),a2@+
	movl	a3@(32),a2@+
	movl	a3@(16),a2@+
	movl	a3@(36),a2@+
	movl	a4@(4),a2@+	|(calling append)
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
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(24),a2@+
	movl	a3@(40),a2@+
	movl	a4@(4),a2@+	|(calling append)
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
	subql	#8,a2
	moveml	a6@(-20),#L00104
	unlk	a6
	rts
L00104 = 15488
L00103 = 20
	.globl	F00105	|(fcn macro top-print)
F00105:
	link	a6,#-L00108
	tstb	sp@(-132)
	moveml	#L00109,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00106:
	movl	a4@,a5
	movl	a5@,a2@+
	movl	a3@(8),a2@+
	movl	a3@(44),a2@+
	movl	a3@(16),a2@+
	movl	a3@(48),a2@+
	movl	a4@(4),a2@+	|(calling append)
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
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(24),a2@+
	movl	a3@(52),a2@+
	movl	a4@(4),a2@+	|(calling append)
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
	subql	#8,a2
	moveml	a6@(-20),#L00109
	unlk	a6
	rts
L00109 = 15488
L00108 = 20
	.globl	F00110	|(fcn lambda franz-top-level)
F00110:
	link	a6,#-L00113
	tstb	sp@(-132)
	moveml	#L00114,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00111:
	movl	a3@(56),a2@+	|(calling putd)
	movl	a3@(60),a0
	movl	a0@(8),a2@+
	cmpl	a0@(8),d7
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
	lea	a2@,a5	|(calling username-to-dir-flush-cache)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(64),a2@+	|(calling boundp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00117
	movl	a3@(64),a5
	cmpl	a5@,d7
	jne	L00116
L00117:
	movl	a3@(24),a5
	movl	a5@,d6
	movl	a3@(64),a5
	movl	d6,a5@
	movl	a3@(68),a5
	movl	d7,a5@
	movl	a3@(72),a5
	movl	d7,a5@
	movl	a3@(76),a5
	movl	d7,a5@
	movl	a3@(80),a5
	movl	d7,a5@
	movl	a3@(84),a5
	movl	d7,a5@
	movl	a3@(88),a5
	movl	d7,a5@
	movl	a3@(92),a5
	movl	a3@(96),a5@
	movl	a3@(100),a5
	cmpl	a5@,d7
	jeq	L00119
	movl	a3@(100),a5
	movl	a5@,a0
	cmpl	a0@(8),d7
	jeq	L00119
	movl	a3@(100),a5
	movl	a5@,a2@+
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00122
	movl	a4@,a1
	cmpl	a1@(8),d7
	jeq	L00122
	movl	a4@,a1
	movl	a1@(8),a4@
	cmpl	a1@(8),d7
	jra	L00121
L00122:
	movl	d7,d0
L00121:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00125
	movl	a3@(104),a2@+
	movl	a4@,a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00125
	lea	a2@,a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-4),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00124
L00125:
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00124:
	jra	L00118
L00119:
	lea	a2@,a5	|(calling autorunlisp)
	movl	a5,_lbot
	movl	a2,_np
	jbsr	L00083
	cmpl	d0,d7
	jne	L00128
	movl	a3@(108),a2@+	|(calling patom)
	|(calling status)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(112),a2@+	|(calling boundp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00130
	movl	a3@(112),a5	|(calling patom)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00129
L00130:
	movl	d7,d0
L00129:
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
	lea	a2@,a5	|(calling read-in-lisprc-file)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00127
L00128:
	movl	d7,d0
L00127:
L00118:
	jra	L00115
L00116:
	movl	d7,d0
L00115:
	movl	d7,a2@+	|(beginning do)
	movl	d7,a2@+
	movl	d7,a2@+
L00131:
	cmpl	d7,d7
	jeq	L00132
	movl	d7,d0
	jra	L00133
L00132:
	movl	a3@(116),d0
	movl	d7,sp@-
	movl	d0,sp@-
	movl	#2,sp@-
	movl	a2,_np
	movl	a2,_lbot
	jbsr	_qpushframe
	movl	d0,_errp
	tstl	_retval
	jeq	L00135
	movl	_lispretval,d0
	jra	L00134
L00135:
	movl	a3@(120),a5
	movl	#_nilatom+0x1400+0,a5@
	movl	a3@(124),a5
	movl	#_nilatom+0x1400+0,a5@
	movl	a3@(128),a5
	movl	d7,a5@
	movl	a3@(132),a5
	movl	d7,a5@
	movl	a3@(136),a5
	cmpl	a5@,d7
	jeq	L00137
	movl	d7,a2@+
	movl	a3@(136),a5	|(beginning do)
	movl	a5@,a4@(12)
	movl	a4@(12),a2@+
L00140:
	cmpl	a4@(16),d7
	jne	L00141
	movl	d7,d0
	jra	L00142
L00141:
	movl	a4@(16),a1	|(calling eval)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(16),a5
	movl	a5@,a4@(16)
	jra	L00140
L00142:
	subql	#8,a2
	jra	L00136
L00137:
	movl	d7,d0
L00136:
	movl	d7,a2@+	|(beginning do)
	movl	_bnp,a1
	movl	a3@(140),a5
	movl	a5@,a1@+
	movl	a3@(140),a1@+
	movl	a3@(140),a5
	movl	a4@(12),a5@
	movl	a1,_bnp
L00143:
	cmpl	d7,d7
	jeq	L00144
	movl	d7,d0
	jra	L00145
L00144:
	movl	a3@(144),a5
	cmpl	a5@,d7
	jeq	L00147
	movl	a3@(144),a5
	movl	a5@,a2@+
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00149
	movl	a4@(16),a1
	cmpl	a1@(8),d7
	jeq	L00149
	movl	a4@(16),a1
	movl	a1@(8),a4@(16)
	cmpl	a1@(8),d7
	jra	L00148
L00149:
	movl	d7,d0
L00148:
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00152
	movl	a3@(104),a2@+
	movl	a4@(16),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00152
	lea	a2@,a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-4),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00151
L00152:
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00151:
	jra	L00146
L00147:
	movl	a3@(148),a5
	cmpl	a5@,d7
	jeq	L00155
	movl	a3@(148),a5
	movl	a5@,a0
	cmpl	a0@(8),d7
	jeq	L00155
	movl	a3@(148),a5
	movl	a5@,a2@+
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00158
	movl	a4@(16),a1
	cmpl	a1@(8),d7
	jeq	L00158
	movl	a4@(16),a1
	movl	a1@(8),a4@(16)
	cmpl	a1@(8),d7
	jra	L00157
L00158:
	movl	d7,d0
L00157:
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00161
	movl	a3@(104),a2@+
	movl	a4@(16),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00161
	lea	a2@,a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-4),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00160
L00161:
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00160:
	jra	L00154
L00155:
	movl	a3@(152),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00154:
	movl	a3@(156),a5
	movl	a5@,a2@+
	movl	a3@(24),a5
	movl	a5@,d0
	movl	d0,sp@-
	movl	a3@(160),sp@-
	movl	#2,sp@-
	movl	a2,_np
	movl	a2,_lbot
	jbsr	_qpushframe
	movl	d0,_errp
	tstl	_retval
	jeq	L00166
	movl	_lispretval,d0
	jra	L00165
L00166:
	movl	a3@(20),a5
	cmpl	a5@,d7
	jeq	L00168
	movl	a3@(20),a5
	movl	a5@,a0
	cmpl	a0@(8),d7
	jeq	L00168
	movl	a3@(20),a5
	movl	a5@,a2@+
	movl	d7,a2@+
	movl	a3@(156),a5
	movl	a5@,a2@+
	movl	a4@(20),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00171
	movl	a4@(20),a1
	cmpl	a1@(8),d7
	jeq	L00171
	movl	a4@(20),a1
	movl	a1@(8),a4@(20)
	cmpl	a1@(8),d7
	jra	L00170
L00171:
	movl	d7,d0
L00170:
	movl	a4@(20),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00174
	movl	a3@(104),a2@+
	movl	a4@(20),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00174
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-12),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00173
L00174:
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00173:
	jra	L00167
L00168:
	movl	d7,a2@+	|(calling read)
	movl	a3@(156),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00167:
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
L00165:
	movl	_errp,a5
	movl	a5@(12),_errp
	movl	a5,sp
	addl	#32,sp
	movl	d0,a0
	movl	a0@(4),a4@(4)
	movl	a4@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00164
	movl	a3@(164),a2@+	|(calling status)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00177
	lea	a2@,a5	|(calling exit)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00176
L00177:
	movl	d7,d0
L00176:
	movl	a3@(168),a2@+	|(calling status)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00179
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(172),a2@+	|(calling print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
	lea	a2@,a5	|(calling exit)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00178
L00179:
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(176),a4@(4)
L00178:
	jra	L00163
L00164:
	movl	d7,d0
L00163:
	movl	a3@(36),a5
	cmpl	a5@,d7
	jeq	L00181
	movl	a3@(36),a5
	movl	a5@,a0
	cmpl	a0@(8),d7
	jeq	L00181
	movl	a3@(36),a5
	movl	a5@,a2@+
	movl	a4@(4),a2@+
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00184
	movl	a4@(16),a1
	cmpl	a1@(8),d7
	jeq	L00184
	movl	a4@(16),a1
	movl	a1@(8),a4@(16)
	cmpl	a1@(8),d7
	jra	L00183
L00184:
	movl	d7,d0
L00183:
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00187
	movl	a3@(104),a2@+
	movl	a4@(16),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00187
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-8),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00186
L00187:
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00186:
	jra	L00180
L00181:
	movl	a4@(4),a2@+	|(calling eval)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00180:
	movl	d0,a4@
	movl	a4@(4),a2@+
	movl	a3@(68),a5
	movl	a5@,a2@+
	movl	a3@(72),a5
	movl	a5@,a2@+
	movl	a3@(68),a5
	movl	a4@(16),a5@
	movl	a3@(72),a5
	movl	a4@(20),a5@
	movl	a3@(76),a5
	movl	a4@(24),a5@
	subl	#12,a2
	movl	a4@,a2@+
	movl	a3@(80),a5
	movl	a5@,a2@+
	movl	a3@(84),a5
	movl	a5@,a2@+
	movl	a3@(80),a5
	movl	a4@(16),a5@
	movl	a3@(84),a5
	movl	a4@(20),a5@
	movl	a3@(88),a5
	movl	a4@(24),a5@
	subl	#12,a2
	movl	a3@(48),a5
	cmpl	a5@,d7
	jeq	L00190
	movl	a3@(48),a5
	movl	a5@,a0
	cmpl	a0@(8),d7
	jeq	L00190
	movl	a3@(48),a5
	movl	a5@,a2@+
	movl	a4@,a2@+
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00193
	movl	a4@(16),a1
	cmpl	a1@(8),d7
	jeq	L00193
	movl	a4@(16),a1
	movl	a1@(8),a4@(16)
	cmpl	a1@(8),d7
	jra	L00192
L00193:
	movl	d7,d0
L00192:
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00196
	movl	a3@(104),a2@+
	movl	a4@(16),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00196
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-8),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00195
L00196:
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00195:
	jra	L00189
L00190:
	movl	a4@,a2@+	|(calling print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00189:
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
L00146:
	movl	a3@(140),a5
	movl	d7,a5@
	jra	L00143
L00145:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subql	#4,a2
L00134:
	movl	_errp,a5
	movl	a5@(12),_errp
	movl	a5,sp
	addl	#32,sp
	movl	d0,a4@(8)
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(180),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(56),d6
	cmpl	a4@(8),d6
	jne	L00199
	movl	d7,a2@+	|(calling old-reset-function)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00198
L00199:
	movl	d7,d0
L00198:
	jra	L00131
L00133:
	subl	#12,a2
	moveml	a6@(-24),#L00114
	unlk	a6
	rts
L00114 = 15552
L00113 = 24
	.globl	F00200	|(fcn lexpr debug-err-handler)
F00200:
	link	a6,#-L00203
	tstb	sp@(-132)
	moveml	#L00204,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00201:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	d7,a2@+
	movl	a3@(120),a5	|(calling add1)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	_bnp,a1
	movl	a3@(184),a5
	movl	a5@,a1@+
	movl	a3@(184),a1@+
	movl	a3@(184),a5
	movl	a4@(20),a5@
	movl	a3@(140),a5
	movl	a5@,a1@+
	movl	a3@(140),a1@+
	movl	a3@(140),a5
	movl	a4@(16),a5@
	movl	a3@(120),a5
	movl	a5@,a1@+
	movl	a3@(120),a1@+
	movl	a3@(120),a5
	movl	a4@(8),a5@
	movl	a1,_bnp
	movl	a4@,a2@+	|(calling greaterp)
	movl	#_nilatom+0x1400+0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00206
	movl	a3@(188),a2@+	|(calling print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d7,a2@+
	movl	#_nilatom+0x1400+4,d0	|(beginning do)
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a0
	movl	a0@,a5
	movl	a5@,a1
	movl	a1@,a4@(24)
	movl	a4@(24),a2@+
L00209:
	cmpl	a4@(28),d7
	jne	L00210
	movl	d7,d0
	jra	L00213
L00210:
	movl	a4@(28),a1
	movl	a1@(4),a2@+
	movl	a3@(192),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(32),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	movl	a4@(28),a5
	movl	a5@,a4@(28)
	jra	L00209
L00213:
	subql	#8,a2	|(calling terpr)
	lea	a2@,a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00205
L00206:
	movl	d7,d0
L00205:
	movl	a3@(160),a5
	movl	a3@(196),a5@
	movl	d7,a2@+	|(beginning do)
L00214:
	cmpl	d7,d7
	jeq	L00215
	movl	d7,d0
	jra	L00216
L00215:
	movl	a3@(24),a5
	movl	a5@,d0
	movl	d0,sp@-
	movl	a3@(160),sp@-
	movl	#2,sp@-
	movl	a2,_np
	movl	a2,_lbot
	jbsr	_qpushframe
	movl	d0,_errp
	tstl	_retval
	jeq	L00220
	movl	_lispretval,d0
	jra	L00219
L00220:
	movl	d7,a2@+	|(beginning do)
L00221:
	cmpl	d7,d7
	jeq	L00222
	movl	d7,d0
	jra	L00223
L00222:
	movl	a3@(200),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(120),a5	|(calling patom)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(204),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(156),a5
	movl	a5@,a2@+
	movl	a3@(20),a5
	cmpl	a5@,d7
	jeq	L00227
	movl	a3@(20),a5
	movl	a5@,a0
	cmpl	a0@(8),d7
	jeq	L00227
	movl	a3@(20),a5
	movl	a5@,a2@+
	movl	d7,a2@+
	movl	a3@(156),a5
	movl	a5@,a2@+
	movl	a4@(36),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00230
	movl	a4@(36),a1
	cmpl	a1@(8),d7
	jeq	L00230
	movl	a4@(36),a1
	movl	a1@(8),a4@(36)
	cmpl	a1@(8),d7
	jra	L00229
L00230:
	movl	d7,d0
L00229:
	movl	a4@(36),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00233
	movl	a3@(104),a2@+
	movl	a4@(36),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00233
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-12),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00232
L00233:
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00232:
	jra	L00226
L00227:
	movl	d7,a2@+	|(calling read)
	movl	a3@(156),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00226:
	movl	d0,a4@(28)
	movl	a4@(28),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00225
	movl	a3@(208),a2@+	|(calling status)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00236
	lea	a2@,a5	|(calling exit)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00235
L00236:
	movl	d7,d0
L00235:
	movl	d7,d0
	jra	L00223
|	jra	L00224
L00225:
	movl	a4@(28),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00237
	movl	a3@(212),a2@+
	movl	a4@(28),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00237
	movl	a4@(28),a5	|(calling eval)
	movl	a5@,a1
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00223
|	jra	L00224
L00237:
	movl	a3@(36),a5
	cmpl	a5@,d7
	jeq	L00240
	movl	a3@(36),a5
	movl	a5@,a0
	cmpl	a0@(8),d7
	jeq	L00240
	movl	a3@(36),a5
	movl	a5@,a2@+
	movl	a4@(28),a2@+
	movl	a4@(32),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00243
	movl	a4@(32),a1
	cmpl	a1@(8),d7
	jeq	L00243
	movl	a4@(32),a1
	movl	a1@(8),a4@(32)
	cmpl	a1@(8),d7
	jra	L00242
L00243:
	movl	d7,d0
L00242:
	movl	a4@(32),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00246
	movl	a3@(104),a2@+
	movl	a4@(32),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00246
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-8),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00245
L00246:
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00245:
	jra	L00239
L00240:
	movl	a4@(28),a2@+	|(calling eval)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00239:
	movl	d0,a4@(28)
	movl	a3@(48),a5
	cmpl	a5@,d7
	jeq	L00249
	movl	a3@(48),a5
	movl	a5@,a0
	cmpl	a0@(8),d7
	jeq	L00249
	movl	a3@(48),a5
	movl	a5@,a2@+
	movl	a4@(28),a2@+
	movl	a4@(32),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00252
	movl	a4@(32),a1
	cmpl	a1@(8),d7
	jeq	L00252
	movl	a4@(32),a1
	movl	a1@(8),a4@(32)
	cmpl	a1@(8),d7
	jra	L00251
L00252:
	movl	d7,d0
L00251:
	movl	a4@(32),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00255
	movl	a3@(104),a2@+
	movl	a4@(32),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00255
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-8),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00254
L00255:
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00254:
	jra	L00248
L00249:
	movl	a4@(28),a2@+	|(calling print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00248:
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
L00224:
	jra	L00221
L00223:
	subql	#4,a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
L00219:
	movl	_errp,a5
	movl	a5@(12),_errp
	movl	a5,sp
	addl	#32,sp
	movl	d0,a4@(24)
	movl	a4@(24),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00218
	movl	a4@(24),a1
	movl	a1@(4),d0
	jra	L00216
|	jra	L00217
L00218:
	movl	d7,d0
L00217:
	jra	L00214
L00216:
	subql	#4,a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1@(-20),a5
	movl	a1@(-24),a5@
	movl	a1,_bnp
	subl	#24,_bnp
	subl	#24,a2
	moveml	a6@(-24),#L00204
	unlk	a6
	rts
L00204 = 15552
L00203 = 24
	.globl	F00257	|(fcn lexpr break-err-handler)
F00257:
	link	a6,#-L00260
	tstb	sp@(-132)
	moveml	#L00261,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00258:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	d7,a2@+
	movl	a3@(124),a5	|(calling add1)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	_bnp,a1
	movl	a3@(184),a5
	movl	a5@,a1@+
	movl	a3@(184),a1@+
	movl	a3@(184),a5
	movl	a4@(24),a5@
	movl	a3@(140),a5
	movl	a5@,a1@+
	movl	a3@(140),a1@+
	movl	a3@(140),a5
	movl	a4@(20),a5@
	movl	a3@(124),a5
	movl	a5@,a1@+
	movl	a3@(124),a1@+
	movl	a3@(124),a5
	movl	a4@(8),a5@
	movl	a1,_bnp
	movl	a4@,a2@+	|(calling greaterp)
	movl	#_nilatom+0x1400+0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00263
	movl	a3@(188),a2@+	|(calling print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d7,a2@+
	movl	#_nilatom+0x1400+4,d0	|(beginning do)
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a0
	movl	a0@,a5
	movl	a5@,a1
	movl	a1@,a4@(28)
	movl	a4@(28),a2@+
L00266:
	cmpl	a4@(32),d7
	jne	L00267
	movl	d7,d0
	jra	L00270
L00267:
	movl	a4@(32),a1
	movl	a1@(4),a2@+
	movl	a3@(216),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(36),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	movl	a4@(32),a5
	movl	a5@,a4@(32)
	jra	L00266
L00270:
	subql	#8,a2	|(calling terpr)
	lea	a2@,a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
	movl	#_nilatom+0x1400+4,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a0
	movl	a0@,a5
	movl	a5@,a1
	cmpl	a1@(4),d7
	jeq	L00272
	movl	a3@(220),a4@(16)
	jra	L00271
L00272:
	movl	d7,a4@(16)
L00271:
	jra	L00262
L00263:
	movl	a3@(224),a4@(16)
L00262:
L00275:	|(beginning do)
	cmpl	d7,d7
	jeq	L00276
	movl	d7,d0
	jra	L00277
L00276:
	movl	a3@(228),d0
	movl	d7,sp@-
	movl	d0,sp@-
	movl	#2,sp@-
	movl	a2,_np
	movl	a2,_lbot
	jbsr	_qpushframe
	movl	d0,_errp
	tstl	_retval
	jeq	L00281
	movl	_lispretval,d0
	jra	L00280
L00281:
	movl	d7,a2@+	|(beginning do)
L00282:
	cmpl	d7,d7
	jeq	L00283
	movl	d7,d0
	jra	L00284
L00283:
	movl	a3@(232),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(124),a5	|(calling patom)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(236),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(156),a5
	movl	a5@,a2@+
	movl	a3@(20),a5
	cmpl	a5@,d7
	jeq	L00288
	movl	a3@(20),a5
	movl	a5@,a0
	cmpl	a0@(8),d7
	jeq	L00288
	movl	a3@(20),a5
	movl	a5@,a2@+
	movl	d7,a2@+
	movl	a3@(156),a5
	movl	a5@,a2@+
	movl	a4@(36),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00291
	movl	a4@(36),a1
	cmpl	a1@(8),d7
	jeq	L00291
	movl	a4@(36),a1
	movl	a1@(8),a4@(36)
	cmpl	a1@(8),d7
	jra	L00290
L00291:
	movl	d7,d0
L00290:
	movl	a4@(36),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00294
	movl	a3@(104),a2@+
	movl	a4@(36),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00294
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-12),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00293
L00294:
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00293:
	jra	L00287
L00288:
	movl	d7,a2@+	|(calling read)
	movl	a3@(156),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00287:
	movl	d0,a4@(28)
	movl	a4@(28),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00286
	movl	a3@(240),a2@+	|(calling status)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00297
	lea	a2@,a5	|(calling exit)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00296
L00297:
	movl	d7,d0
L00296:
	movl	#_nilatom+0x1400+4,a2@+	|(calling eval)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(124),a5	|(calling sub1)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00284
|	jra	L00285
L00286:
	movl	a4@(28),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00298
	movl	a3@(212),a2@+
	movl	a4@(28),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00298
	movl	a4@(16),d6
	cmpl	a3@(220),d6
	jeq	L00302
	movl	a4@(16),d6
	cmpl	a3@(224),d6
	jne	L00301
L00302:
	movl	a3@(36),a5
	cmpl	a5@,d7
	jeq	L00304
	movl	a3@(36),a5
	movl	a5@,a0
	cmpl	a0@(8),d7
	jeq	L00304
	movl	a3@(36),a5
	movl	a5@,a2@+
	movl	a4@(28),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@(32),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00307
	movl	a4@(32),a1
	cmpl	a1@(8),d7
	jeq	L00307
	movl	a4@(32),a1
	movl	a1@(8),a4@(32)
	cmpl	a1@(8),d7
	jra	L00306
L00307:
	movl	d7,d0
L00306:
	movl	a4@(32),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00310
	movl	a3@(104),a2@+
	movl	a4@(32),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00310
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-8),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00309
L00310:
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00309:
	jra	L00303
L00304:
	movl	a4@(28),a5	|(calling eval)
	movl	a5@,a1
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00303:
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	jra	L00284
|	jra	L00300
L00301:
	movl	a3@(244),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
L00300:
	jra	L00285
L00298:
	movl	a4@(28),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00312
	movl	a3@(248),a2@+
	movl	a4@(28),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00312
	movl	a3@(36),a5
	cmpl	a5@,d7
	jeq	L00319
	movl	a3@(36),a5
	movl	a5@,a0
	cmpl	a0@(8),d7
	jeq	L00319
	movl	a3@(36),a5
	movl	a5@,a2@+
	movl	a4@(28),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@(32),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00322
	movl	a4@(32),a1
	cmpl	a1@(8),d7
	jeq	L00322
	movl	a4@(32),a1
	movl	a1@(8),a4@(32)
	cmpl	a1@(8),d7
	jra	L00321
L00322:
	movl	d7,d0
L00321:
	movl	a4@(32),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00325
	movl	a3@(104),a2@+
	movl	a4@(32),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00325
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-8),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00324
L00325:
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00324:
	jra	L00318
L00319:
	movl	a4@(28),a5	|(calling eval)
	movl	a5@,a1
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00318:
	movl	d0,a4@(28)
	movl	a4@(28),d0
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
	andw	#532,d0
	jeq	L00315
	movl	a4@(28),d0
	jra	L00284
|	jra	L00314
L00315:
	movl	a3@(124),a5	|(calling sub1)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00284
L00314:
	jra	L00285
L00312:
	movl	a3@(36),a5
	cmpl	a5@,d7
	jeq	L00328
	movl	a3@(36),a5
	movl	a5@,a0
	cmpl	a0@(8),d7
	jeq	L00328
	movl	a3@(36),a5
	movl	a5@,a2@+
	movl	a4@(28),a2@+
	movl	a4@(32),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00331
	movl	a4@(32),a1
	cmpl	a1@(8),d7
	jeq	L00331
	movl	a4@(32),a1
	movl	a1@(8),a4@(32)
	cmpl	a1@(8),d7
	jra	L00330
L00331:
	movl	d7,d0
L00330:
	movl	a4@(32),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00334
	movl	a3@(104),a2@+
	movl	a4@(32),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00334
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-8),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00333
L00334:
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00333:
	jra	L00327
L00328:
	movl	a4@(28),a2@+	|(calling eval)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00327:
	movl	d0,a4@(28)
	movl	a3@(48),a5
	cmpl	a5@,d7
	jeq	L00337
	movl	a3@(48),a5
	movl	a5@,a0
	cmpl	a0@(8),d7
	jeq	L00337
	movl	a3@(48),a5
	movl	a5@,a2@+
	movl	a4@(28),a2@+
	movl	a4@(32),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00340
	movl	a4@(32),a1
	cmpl	a1@(8),d7
	jeq	L00340
	movl	a4@(32),a1
	movl	a1@(8),a4@(32)
	cmpl	a1@(8),d7
	jra	L00339
L00340:
	movl	d7,d0
L00339:
	movl	a4@(32),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00343
	movl	a3@(104),a2@+
	movl	a4@(32),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00343
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-8),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00342
L00343:
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00342:
	jra	L00336
L00337:
	movl	a4@(28),a2@+	|(calling print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00336:
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
L00285:
	jra	L00282
L00284:
	subql	#4,a2
L00280:
	movl	_errp,a5
	movl	a5@(12),_errp
	movl	a5,sp
	addl	#32,sp
	movl	d0,a4@(12)
	movl	a4@(12),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00279
	movl	a4@(16),d6
	cmpl	a3@(224),d6
	jne	L00346
	movl	a4@(12),a1
	movl	a1@(4),d0
	jra	L00345
L00346:
	movl	a4@(12),d0
L00345:
	jra	L00277
|	jra	L00278
L00279:
	movl	a4@(12),a2@+	|(calling lessp)
	movl	a3@(124),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+136,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00347
	movl	a3@(252),a5
	movl	a5@,d6
	movl	a3@(136),a5
	movl	d6,a5@
	movl	a4@(12),sp@-
	movl	a3@(228),sp@-
	movl	#3,sp@-
	jbsr	_Inonlocalgo
	jra	L00278
L00347:
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
L00278:
	jra	L00275
L00277:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1@(-20),a5
	movl	a1@(-24),a5@
	movl	a1,_bnp
	subl	#24,_bnp
	subl	#28,a2
	moveml	a6@(-24),#L00261
	unlk	a6
	rts
L00261 = 15552
L00260 = 24
	.globl	F00348	|(fcn lambda debugging)
F00348:
	link	a6,#-L00351
	tstb	sp@(-132)
	moveml	#L00352,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00349:
	cmpl	a4@,d7
	jeq	L00354
	movl	a3@(256),a5
	movl	a5@,d6
	movl	a3@(160),a5
	movl	d6,a5@
	movl	a3@(260),a2@+	|(calling sstatus)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+144,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(24),a5	|(calling *rset)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00353
L00354:
	movl	a3@(160),a5
	movl	d7,a5@
	movl	a3@(160),a5
	movl	a5@,d0
L00353:
	subql	#4,a2
	moveml	a6@(-24),#L00352
	unlk	a6
	rts
L00352 = 15552
L00351 = 24
	.globl	F00355	|(fcn macro break)
F00355:
	link	a6,#-L00358
	tstb	sp@(-132)
	moveml	#L00359,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00356:
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@,a4@(8)
	cmpl	a1@,d7
	jeq	L00361
	movl	a4@(8),a0
	movl	a0@(4),a4@(8)
	jra	L00360
L00361:
	movl	a3@(24),a5
	movl	a5@,a4@(8)
L00360:
	movl	a3@(264),a2@+
	movl	a4@(8),a2@+
	movl	a3@(268),a2@+
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
	subl	#12,a2
	moveml	a6@(-20),#L00359
	unlk	a6
	rts
L00359 = 15488
L00358 = 20
	.globl	F00362	|(fcn lambda *break)
F00362:
	link	a6,#-L00365
	tstb	sp@(-132)
	moveml	#L00366,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00363:
	movl	d7,a2@+
	movl	_bnp,a1
	movl	a3@(140),a5
	movl	a5@,a1@+
	movl	a3@(140),a1@+
	movl	a3@(140),a5
	movl	a4@(8),a5@
	movl	a1,_bnp
	movl	a3@(124),a2@+	|(calling boundp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00368
	movl	a3@(124),a5
	movl	#_nilatom+0x1400+4,a5@
	jra	L00367
L00368:
	movl	d7,d0
L00367:
	cmpl	a4@,d7
	jeq	L00370
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(272),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(4),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d7,a2@+	|(beginning do)
L00371:
	cmpl	d7,d7
	jeq	L00372
	movl	d7,d0
	jra	L00373
L00372:
	movl	a3@(24),a5
	movl	a5@,d0
	movl	d0,sp@-
	movl	a3@(160),sp@-
	movl	#2,sp@-
	movl	a2,_np
	movl	a2,_lbot
	jbsr	_qpushframe
	movl	d0,_errp
	tstl	_retval
	jeq	L00377
	movl	_lispretval,d0
	jra	L00376
L00377:
	lea	a2@,a5	|(calling break-err-handler)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+160,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
L00376:
	movl	_errp,a5
	movl	a5@(12),_errp
	movl	a5,sp
	addl	#32,sp
	movl	d0,a4@(12)
	movl	a4@(12),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00375
	movl	a4@(12),a1
	movl	a1@(4),d0
	jra	L00373
|	jra	L00374
L00375:
	movl	d7,d0
L00374:
	jra	L00371
L00373:
	subql	#4,a2
	jra	L00369
L00370:
	movl	d7,d0
L00369:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subl	#12,a2
	moveml	a6@(-20),#L00366
	unlk	a6
	rts
L00366 = 15488
L00365 = 20
	.globl	F00378	|(fcn lambda franz-reset)
F00378:
	link	a6,#-L00381
	tstb	sp@(-132)
	moveml	#L00382,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00379:
	movl	a3@(252),a5
	movl	a5@,d6
	movl	a3@(136),a5
	movl	d6,a5@
	movl	d7,d0
	movl	d0,sp@-
	movl	a3@(160),sp@-
	movl	#2,sp@-
	movl	a2,_np
	movl	a2,_lbot
	jbsr	_qpushframe
	movl	d0,_errp
	tstl	_retval
	jeq	L00384
	movl	_lispretval,d0
	jra	L00383
L00384:
	movl	a3@(56),sp@-
	movl	a3@(276),sp@-
	movl	#3,sp@-
	jbsr	_Inonlocalgo
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
L00383:
	movl	_errp,a5
	movl	a5@(12),_errp
	movl	a5,sp
	addl	#32,sp
	movl	d7,a2@+	|(calling old-reset-function)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-4),a2
	moveml	a6@(-24),#L00382
	unlk	a6
	rts
L00382 = 15552
L00381 = 24
	.globl	F00385	|(fcn lambda read-in-lisprc-file)
F00385:
	link	a6,#-L00388
	tstb	sp@(-132)
	moveml	#L00389,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00386:
	movl	a3@(124),a5
	movl	#_nilatom+0x1400+0,a5@
	movl	a3@(120),a5
	movl	#_nilatom+0x1400+0,a5@
	movl	a3@(280),d0
	movl	d7,sp@-
	movl	d0,sp@-
	movl	#2,sp@-
	movl	a2,_np
	movl	a2,_lbot
	jbsr	_qpushframe
	movl	d0,_errp
	tstl	_retval
	jeq	L00391
	movl	_lispretval,d0
	jra	L00390
L00391:
	movl	a3@(284),a2@+	|(beginning do)
	movl	a3@(288),a2@+	|(calling getenv)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	movl	_bnp,a1
	movl	a3@(292),a5
	movl	a5@,a1@+
	movl	a3@(292),a1@+
	movl	a3@(292),a5
	movl	a4@(4),a5@
	movl	a1,_bnp
L00392:
	cmpl	a4@,d7
	jne	L00393
	movl	d7,d0
	jra	L00394
L00393:
	movl	a3@(296),a2@+	|(beginning do)
L00397:
	cmpl	a4@(8),d7
	jne	L00398
	movl	d7,d0
	jra	L00399
L00398:
	movl	a3@(300),a2@+	|(beginning do)
	movl	d7,a2@+
L00402:
	cmpl	a4@(12),d7
	jne	L00403
	movl	d7,d0
	jra	L00404
L00403:
	movl	a4@,a1	|(calling probef)
	|(calling concat)
	movl	a1@(4),a2@+
	movl	a3@(304),a2@+
	movl	a4@(8),a0
	movl	a0@(4),a2@+
	movl	a4@(12),a1
	movl	a1@(4),a2@+
	lea	a2@(-16),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+176,a5
	jbsr	a5@
	lea	a2@(-16),a2
	movl	d0,a4@(16)
	movl	a4@(16),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+184,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00406
	movl	a3@(24),a5
	movl	a5@,d0
	movl	d0,sp@-
	movl	a3@(160),sp@-
	movl	#2,sp@-
	movl	a2,_np
	movl	a2,_lbot
	jbsr	_qpushframe
	movl	d0,_errp
	tstl	_retval
	jeq	L00412
	movl	_lispretval,d0
	jra	L00411
L00412:
	movl	a4@(16),a2@+	|(calling load)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+192,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
L00411:
	movl	_errp,a5
	movl	a5@(12),_errp
	movl	a5,sp
	addl	#32,sp
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
	jeq	L00408
	movl	a3@(308),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(16),a2@+	|(calling print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(312),d0
	jra	L00404
|	jra	L00407
L00408:
	movl	d7,d0
L00407:
	movl	a3@(24),a5
	movl	a5@,d0
	jra	L00404
|	jra	L00405
L00406:
	movl	d7,d0
L00405:
	movl	a4@(12),a5
	movl	a5@,a4@(12)
	jra	L00402
L00404:
	subql	#8,a2
	cmpl	d0,d7
	jeq	L00401
	movl	a3@(24),a5
	movl	a5@,d0
	jra	L00399
|	jra	L00400
L00401:
	movl	d7,d0
L00400:
	movl	a4@(8),a5
	movl	a5@,a4@(8)
	jra	L00397
L00399:
	subql	#4,a2
	cmpl	d0,d7
	jeq	L00396
	movl	a3@(24),a5
	movl	a5@,d0
	jra	L00394
|	jra	L00395
L00396:
	movl	d7,d0
L00395:
	movl	a4@,a5
	movl	a5@,a2@+
	movl	a3@(292),a5
	movl	a5@,d6
	movl	a3@(292),a5
	movl	d6,a5@
	movl	a2@-,a4@
	jra	L00392
L00394:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subql	#8,a2
L00390:
	movl	_errp,a5
	movl	a5@(12),_errp
	movl	a5,sp
	addl	#32,sp
	moveml	a6@(-24),#L00389
	unlk	a6
	rts
L00389 = 15552
L00388 = 24
	.globl	F00413	|(fcn lambda undef-func-handler)
F00413:
	link	a6,#-L00416
	tstb	sp@(-132)
	moveml	#L00417,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00414:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a4@(4)
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00420
	movl	a4@(4),a2@+
	movl	a3@(316),a2@+
	jbsr	_qget
	cmpl	d0,d7
	jne	L00423
	movl	a4@(4),a2@+
	movl	a3@(320),a2@+
	jbsr	_qget
	movl	d0,a4@(8)
	cmpl	d0,d7
	jeq	L00422
	jra	L00424
L00423:
	movl	d0,a4@(8)
L00424:
	movl	a3@(292),a5
	cmpl	a5@,d7
	jeq	L00426
	movl	a3@(324),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(8),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(328),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00425
L00426:
	movl	d7,d0
L00425:
	movl	a4@(8),a2@+	|(calling load)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+192,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00421
L00422:
	movl	d7,d0
	jra	L00418
L00421:
	movl	a4@(4),a1
	cmpl	a1@(8),d7
	jeq	L00428
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	jra	L00418
|	jra	L00427
L00428:
	movl	a3@(332),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(8),a2@+	|(calling print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(336),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(4),a2@+	|(calling print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d7,d0
	jra	L00418
L00427:
	jra	L00419
L00420:
	movl	d7,d0
L00419:
	movl	d7,d0
L00418:
	subl	#12,a2
	moveml	a6@(-20),#L00417
	unlk	a6
	rts
L00417 = 15488
L00416 = 20
L00083:	|(fcn lambda autorunlisp)
	movl	a4,sp@-
	lea	a2@,a4
L00430:
	movl	#_nilatom+0x1400-4,a2@+	|(calling argv)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a0
	movl	a0@,d0
	cmpl	#2,d0
	jle	L00435
	movl	#_nilatom+0x1400+4,a2@+	|(calling argv)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(340),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00437
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00438
	jra	L00435
L00437:
	subql	#8,a2
L00438:
	movl	#_nilatom+0x1400+8,a2@+	|(calling argv)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	_bnp,a1
	movl	a3@(292),a5
	movl	a5@,a1@+
	movl	a3@(292),a1@+
	movl	a3@(292),a5
	movl	a4@(4),a5@
	movl	a1,_bnp
	movl	a3@(344),a2@+	|(calling cvtsearchpathtolist)
	|(calling getenv)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	jbsr	L00084
	movl	d0,a4@(8)
	movl	a3@(24),a5
	movl	a5@,d0
	movl	d0,sp@-
	movl	a3@(160),sp@-
	movl	#2,sp@-
	movl	a2,_np
	movl	a2,_lbot
	jbsr	_qpushframe
	movl	d0,_errp
	tstl	_retval
	jeq	L00442
	movl	_lispretval,d0
	jra	L00441
L00442:
	movl	a4@,a2@+	|(calling load-autorunobject)
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+216,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
L00441:
	movl	_errp,a5
	movl	a5@(12),_errp
	movl	a5,sp
	addl	#32,sp
	cmpl	d0,d7
	jne	L00440
	movl	#_nilatom+0x1400+0,a2@+	|(calling exit)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00439
L00440:
	movl	a3@(24),a5
	movl	a5@,d0
L00439:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subl	#12,a2
	jra	L00434
L00435:
	movl	d7,d0
L00434:
	movl	sp@+,a4
	rts
L00084:	|(fcn lambda cvtsearchpathtolist)
	movl	a4,sp@-
	lea	a2@(-4),a4
L00444:
	movl	a4@,a2@+	|(beginning do)
	|(calling explodec)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
L00448:
	cmpl	a4@(4),d7
	jne	L00449
	movl	a4@(8),a2@+	|(calling nreverse)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+232,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00450
L00449:
	movl	a3@(348),a2@+
	movl	a4@(4),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jeq	L00453
	movl	a4@(4),a5
	cmpl	a5@,d7
	jne	L00452
	movl	a4@(4),a0
	movl	a0@(4),a2@+
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	cmpl	d0,d7
	jeq	L00452
L00453:
	cmpl	a4@(12),d7
	jeq	L00456
	movl	a4@(12),a2@+	|(calling implode)
	|(calling nreverse)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+232,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(8),a2@+
	jbsr	_qcons
	movl	d0,a4@(8)
	movl	d7,a4@(12)
	jra	L00455
L00456:
	movl	a3@(352),a2@+
	movl	a4@(8),a2@+
	jbsr	_qcons
	movl	d0,a4@(8)
L00455:
	jra	L00451
L00452:
	movl	a4@(4),a1
	movl	a1@(4),a2@+
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
L00451:
	movl	a4@(4),a5
	movl	a5@,a4@(4)
	jra	L00448
L00450:
	subl	#16,a2
	movl	sp@+,a4
	rts
	.globl	F00457	|(fcn lambda load-autorunobject)
F00457:
	link	a6,#-L00460
	tstb	sp@(-132)
	moveml	#L00461,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00458:
	movl	a4@,a2@+	|(calling getchar)
	movl	#_nilatom+0x1400+4,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+248,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,d5
	movl	a3@(356),d0
	cmpl	d0,d7
	jeq	L00463
	movl	d0,a0
L00465:
	cmpl	a0@(4),d5
	jeq	L00464
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00465
	movl	a0,d0
	jra	L00463
L00464:
	movl	a4@,a2@+	|(calling probef)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+184,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00467
	movl	a4@,a2@+	|(calling fasl)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+256,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00466
L00467:
	movl	a3@(360),a2@+	|(calling error)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+264,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00466:
	jra	L00462
L00463:
	movl	a4@(4),a2@+	|(beginning do)
	movl	d7,a2@+
L00468:
	cmpl	a4@(8),d7
	jne	L00469
	movl	a3@(364),a2@+	|(calling error)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+264,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00470
L00469:
	movl	a4@(8),a1	|(calling probef)
	|(calling concat)
	movl	a1@(4),a2@+
	movl	a3@(368),a2@+
	movl	a4@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+176,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a4@(12)
	movl	a4@(12),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+184,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00472
	movl	a4@(12),a2@+	|(calling fasl-a-file)
	movl	d7,a2@+
	movl	d7,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+272,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00470
|	jra	L00471
L00472:
	movl	d7,d0
L00471:
	movl	a4@(8),a5
	movl	a5@,a4@(8)
	jra	L00468
L00470:
	subql	#8,a2
L00462:
	subql	#8,a2
	moveml	a6@(-24),#L00461
	unlk	a6
	rts
L00461 = 15520
L00460 = 24
	.globl	F00473	|(fcn lambda command-line-args)
F00473:
	link	a6,#-L00476
	tstb	sp@(-132)
	moveml	#L00477,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00474:
	movl	d7,a2@+	|(beginning do)
	movl	#_nilatom+0x1400-4,a2@+	|(calling argv)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a0
	cmpl	#_nilatom+0x1400-4096,a0
	jle	L00480
	cmpl	#_nilatom+0x1400+4092,a0
	jle	L00481
L00480:
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00482
L00481:
	movl	a0,d0
	subql	#4,d0
	movl	d0,a2@+
L00482:
L00478:
	movl	a4@(4),a5
	cmpl	#1,a5@
	jpl	L00479
	movl	a3@(340),a2@+
	movl	a4@,a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00485
	movl	a4@,a5
	cmpl	a5@,d7
	jeq	L00485
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@,d0
	jra	L00484
L00485:
	movl	a4@,d0
L00484:
	jra	L00483
L00479:
	movl	a4@(4),a2@+	|(calling argv)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	cmpl	#_nilatom+0x1400-4096,a4@(4)
	jle	L00487
	cmpl	#_nilatom+0x1400+4092,a4@(4)
	jle	L00488
L00487:
	movl	a4@(4),a0
	jbsr	_qoneminus
	movl	d0,a4@(4)
	jra	L00489
L00488:
	movl	a4@(4),d0
	subql	#4,d0
	movl	d0,a4@(4)
L00489:
	movl	a2@-,a4@
	jra	L00478
L00483:
	subql	#8,a2
	moveml	a6@(-24),#L00477
	unlk	a6
	rts
L00477 = 15552
L00476 = 24
	.globl	F00490	|(fcn nlambda debug)
F00490:
	link	a6,#-L00493
	tstb	sp@(-132)
	moveml	#L00494,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00491:
	movl	a3@(372),a2@+	|(calling load)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+192,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(376),a2@+	|(calling eval)
	movl	a4@,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	moveml	a6@(-20),#L00494
	unlk	a6
	rts
L00494 = 15488
L00493 = 20
bind_org:
	linker_size = 	95
	trans_size = 	35
	.long	99
	.long	99
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
	.long	0
	.long	99
	.long	0
	.long	99
	.long	0
	.long	99
	.long	99
	.long	99
	.long	0
	.long	99
	.long	2
	.long	99
	.long	0
	.long	99
	.long	0
	.long	99
	.long	0
	.long	99
	.long	99
	.long	99
	.long	0
	.long	99
	.long	99
	.long	99
	.long	99
	.long	0
	.long	99
	.long	0
	.long	99
	.long	1
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long -1
lit_org:
.ascii "(cond ((and top-level-init (getd top-level-init)) (funcall t"
.ascii "op-level-init)) (t (cond ((not (autorunlisp)) (patom (status"
.ascii " version)) (cond ((boundp (quote franz-minor-version-number)"
.ascii ") (patom franz-minor-version-number))) (terpr) (read-in-lisp"
.asciz "rc-file)))))"
.ascii "(cond ((and top-level-prompt (getd top-level-prompt)) (funca"
.asciz "ll top-level-prompt)) (t (patom \"-> \")))"
.asciz "cond"
.asciz "(and top-level-read (getd top-level-read))"
.asciz "funcall"
.asciz "top-level-read"
.asciz "t"
.asciz "read"
.asciz "(and top-level-eval (getd top-level-eval))"
.asciz "top-level-eval"
.asciz "eval"
.asciz "(and top-level-print (getd top-level-print))"
.asciz "top-level-print"
.asciz "print"
.asciz "reset"
.asciz "franz-reset"
.asciz "franz-not-virgin"
.asciz "+"
.asciz "++"
.asciz "+++"
.asciz "*"
.asciz "**"
.asciz "***"
.asciz "ER%tpl"
.asciz "break-err-handler"
.asciz "top-level-init"
.asciz "lambda"
.asciz "(version)"
.asciz "franz-minor-version-number"
.asciz "(top-level-catch break-catch)"
.asciz "debug-level-count"
.asciz "break-level-count"
.asciz "evalhook"
.asciz "funcallhook"
.asciz "tpl-errlist"
.asciz "^w"
.asciz "user-top-level"
.asciz "top-level-prompt"
.asciz "\"-> \""
.asciz "top-level-eof"
.asciz "ER%all"
.asciz "(isatty)"
.asciz "(ignoreeof)"
.asciz "Goodbye"
.asciz "(quote EOF)"
.asciz "\"[Return to top level]\""
.asciz "piport"
.asciz "Error:"
.asciz "\" \""
.asciz "debug-err-handler"
.asciz "\"D<\""
.asciz "\">: \""
.asciz "(isatty)"
.asciz "return"
.asciz "\" \""
.asciz "contuab"
.asciz "localcall"
.asciz "break-catch"
.asciz "\"<\""
.asciz "\">: \""
.asciz "(isatty)"
.asciz "\"Can't continue from this error\""
.asciz "retbrk"
.asciz "errlist"
.asciz "debug-error-handler"
.asciz "(translink nil)"
.asciz "*break"
.asciz "quote"
.asciz "\"Break \""
.asciz "top-level-catch"
.asciz "(break-catch top-level-catch)"
.asciz "\".\""
.asciz "HOME"
.asciz "$ldprint"
.asciz "(\".lisprc\" \"lisprc\")"
.asciz "(\".o\" \".l\" \"\")"
.asciz "\"/\""
.asciz "\"Error loading lisp init file \""
.asciz "error"
.asciz "autoload"
.asciz "macro-autoload"
.asciz "\"[autoload \""
.asciz "\"]\""
.asciz "\"Autoload file \""
.asciz "\" does not contain function \""
.asciz "-f"
.asciz "PATH"
.asciz ":"
.asciz "\\."
.asciz "(/ \\.)"
.asciz "\"From lisp autorun: can't find file to load\""
.asciz "\"Can't find file to execute \""
.asciz "\"/\""
.asciz "fix"
.asciz "debug"
.asciz "append"
.asciz "putd"
.asciz "username-to-dir-flush-cache"
.asciz "boundp"
.asciz "funcall"
.asciz "status"
.asciz "patom"
.asciz "terpr"
.asciz "read-in-lisprc-file"
.asciz "eval"
.asciz "read"
.asciz "exit"
.asciz "print"
.asciz "old-reset-function"
.asciz "add1"
.asciz "greaterp"
.asciz "sub1"
.asciz "lessp"
.asciz "sstatus"
.asciz "*rset"
.asciz "break-err-handler"
.asciz "getenv"
.asciz "concat"
.asciz "probef"
.asciz "load"
.asciz "argv"
.asciz "equal"
.asciz "load-autorunobject"
.asciz "explodec"
.asciz "nreverse"
.asciz "implode"
.asciz "getchar"
.asciz "fasl"
.asciz "error"
.asciz "fasl-a-file"
.ascii "(setq fcn-in-toplevel.l \"toplevel.l compiled by Liszt 68000 "
.asciz "version 8.39a on Fri Dec 15 18:51:06 1989\")"
.ascii "(setq rcs-toplevel- \"$Header: toplevel.l,v 1.6 83/11/18 08:4"
.asciz "7:24 jkf Exp $\")"
.ascii "(setq top-level-eof (gensym (quote Q)) tpl-errlist nil errli"
.ascii "st nil user-top-level nil top-level-init nil top-level-promp"
.ascii "t nil top-level-read nil top-level-eval nil top-level-print "
.asciz "nil)"
.asciz "top-init"
.ascii "(putprop (quote top-init) (list (quote nil) fcn-in-toplevel."
.asciz "l) (quote fcn-info))"
.asciz "top-prompt"
.ascii "(putprop (quote top-prompt) (list (quote nil) fcn-in-topleve"
.asciz "l.l) (quote fcn-info))"
.asciz "top-read"
.ascii "(putprop (quote top-read) (list (quote nil) fcn-in-toplevel."
.asciz "l) (quote fcn-info))"
.asciz "top-eval"
.ascii "(putprop (quote top-eval) (list (quote nil) fcn-in-toplevel."
.asciz "l) (quote fcn-info))"
.asciz "top-print"
.ascii "(putprop (quote top-print) (list (quote nil) fcn-in-toplevel"
.asciz ".l) (quote fcn-info))"
.asciz "franz-top-level"
.ascii "(putprop (quote franz-top-level) (list (quote (0 . 0)) fcn-i"
.asciz "n-toplevel.l) (quote fcn-info))"
.asciz "debug-err-handler"
.ascii "(putprop (quote debug-err-handler) (list (quote nil) fcn-in-"
.asciz "toplevel.l) (quote fcn-info))"
.asciz "break-err-handler"
.ascii "(putprop (quote break-err-handler) (list (quote nil) fcn-in-"
.asciz "toplevel.l) (quote fcn-info))"
.asciz "(eval (quote (liszt-declare (special debug-error-handler))))"
.ascii "(or (boundp (quote debug-error-handler)) (setq debug-error-h"
.asciz "andler (quote debug-err-handler)))"
.asciz "debugging"
.ascii "(putprop (quote debugging) (list (quote (1 . 1)) fcn-in-topl"
.asciz "evel.l) (quote fcn-info))"
.asciz "break"
.ascii "(putprop (quote break) (list (quote nil) fcn-in-toplevel.l) "
.asciz "(quote fcn-info))"
.asciz "*break"
.ascii "(putprop (quote *break) (list (quote (2 . 2)) fcn-in-topleve"
.asciz "l.l) (quote fcn-info))"
.asciz "franz-reset"
.ascii "(putprop (quote franz-reset) (list (quote (0 . 0)) fcn-in-to"
.asciz "plevel.l) (quote fcn-info))"
.asciz "read-in-lisprc-file"
.ascii "(putprop (quote read-in-lisprc-file) (list (quote (0 . 0)) f"
.asciz "cn-in-toplevel.l) (quote fcn-info))"
.asciz "(putd (quote top-level) (getd (quote franz-top-level)))"
.ascii "(cond ((null (getd (quote old-reset-function))) (putd (quote"
.asciz " old-reset-function) (getd (quote reset)))))"
.asciz "undef-func-handler"
.ascii "(putprop (quote undef-func-handler) (list (quote (1 . 1)) fc"
.asciz "n-in-toplevel.l) (quote fcn-info))"
.asciz "(setq ER%undef (quote undef-func-handler))"
.ascii "(putprop (quote autorunlisp) (list (quote (0 . 0)) fcn-in-to"
.asciz "plevel.l) (quote fcn-info))"
.ascii "(putprop (quote cvtsearchpathtolist) (list (quote (1 . 1)) f"
.asciz "cn-in-toplevel.l) (quote fcn-info))"
.asciz "load-autorunobject"
.ascii "(putprop (quote load-autorunobject) (list (quote (2 . 2)) fc"
.asciz "n-in-toplevel.l) (quote fcn-info))"
.asciz "command-line-args"
.ascii "(putprop (quote command-line-args) (list (quote (0 . 0)) fcn"
.asciz "-in-toplevel.l) (quote fcn-info))"
.asciz "debug"
.ascii "(putprop (quote debug) (list (quote nil) fcn-in-toplevel.l) "
.asciz "(quote fcn-info))"
.ascii "(putprop (quote trace) (concat lisp-library-directory \"/trac"
.asciz "e\") (quote autoload))"
.ascii "(putprop (quote untrace) (concat lisp-library-directory \"/tr"
.asciz "ace\") (quote autoload))"
.ascii "(putprop (quote step) (concat lisp-library-directory \"/step\""
.asciz ") (quote autoload))"
.ascii "(putprop (quote editf) (concat lisp-library-directory \"/cmue"
.asciz "dit\") (quote autoload))"
.ascii "(putprop (quote editv) (concat lisp-library-directory \"/cmue"
.asciz "dit\") (quote autoload))"
.ascii "(putprop (quote editp) (concat lisp-library-directory \"/cmue"
.asciz "dit\") (quote autoload))"
.ascii "(putprop (quote edite) (concat lisp-library-directory \"/cmue"
.asciz "dit\") (quote autoload))"
.ascii "(putprop (quote defstruct) (concat lisp-library-directory \"/"
.asciz "struct\") (quote macro-autoload))"
.ascii "(putprop (quote defstruct-expand-ref-macro) (concat lisp-lib"
.asciz "rary-directory \"/struct\") (quote autoload))"
.ascii "(putprop (quote defstruct-expand-cons-macro) (concat lisp-li"
.asciz "brary-directory \"/struct\") (quote autoload))"
.ascii "(putprop (quote defstruct-expand-alter-macro) (concat lisp-l"
.asciz "ibrary-directory \"/struct\") (quote autoload))"
.ascii "(putprop (quote loop) (concat lisp-library-directory \"/loop\""
.asciz ") (quote macro-autoload))"
.ascii "(putprop (quote defflavor) (concat lisp-library-directory \"/"
.asciz "flavors\") (quote macro-autoload))"
.ascii "(putprop (quote defflavor1) (concat lisp-library-directory \""
.asciz "/flavors\") (quote autoload))"
.ascii "(putprop (quote format) (concat lisp-library-directory \"/for"
.asciz "mat\") (quote autoload))"
.ascii "(putprop (quote ferror) (concat lisp-library-directory \"/for"
.asciz "mat\") (quote autoload))"
.ascii "(putprop (quote make-hash-table) (concat lisp-library-direct"
.asciz "ory \"/hash\") (quote autoload))"
.ascii "(putprop (quote make-equal-hash-table) (concat lisp-library-"
.asciz "directory \"/hash\") (quote autoload))"
.ascii "(putprop (quote describe) (concat lisp-library-directory \"/d"
.asciz "escribe\") (quote autoload))"
.ascii "(putprop (quote cgol) (concat lisp-library-directory \"/cgol/"
.asciz "cgoll\") (quote autoload))"
.ascii "(putprop (quote cgolprint) (concat lisp-library-directory \"/"
.asciz "cgol/cgp\") (quote autoload))"
.ascii "(putprop (quote displace) (concat lisp-library-directory \"/m"
.asciz "achacks\") (quote autoload))"
.ascii "(putprop (quote defrecord) (concat lisp-library-directory \"/"
.asciz "record\") (quote macro-autoload))"
.ascii "(putprop (quote record-pkg-construct) (concat lisp-library-d"
.asciz "irectory \"/record\") (quote autoload))"
.ascii "(putprop (quote record-pkg-access) (concat lisp-library-dire"
.asciz "ctory \"/record\") (quote autoload))"
.ascii "(putprop (quote record-pkg-illegal-access) (concat lisp-libr"
.asciz "ary-directory \"/record\") (quote autoload))"
lit_end:
.data | this is just for documentation 
.asciz "@(#)Compiled by Liszt 68000 version 8.39a on Fri Dec 15 18:51:33 1989"
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
