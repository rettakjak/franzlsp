	.globl	F00083	|(fcn lambda *process-send)
F00083:
	link	a6,#-L00086
	tstb	sp@(-132)
	moveml	#L00087,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00084:
	movl	a4@,a2@+	|(calling *process)
	movl	d7,a2@+
	movl	a3@,a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a0
	movl	a0@,a1
	movl	a1@(4),d0
	subql	#4,a2
	moveml	a6@(-20),#L00087
	unlk	a6
	rts
L00087 = 15488
L00086 = 20
	.globl	F00088	|(fcn lambda *process-receive)
F00088:
	link	a6,#-L00091
	tstb	sp@(-132)
	moveml	#L00092,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00089:
	movl	a4@,a2@+	|(calling *process)
	movl	a3@,a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a0
	movl	a0@(4),d0
	subql	#4,a2
	moveml	a6@(-20),#L00092
	unlk	a6
	rts
L00092 = 15488
L00091 = 20
	.globl	F00093	|(fcn nlambda process)
F00093:
	link	a6,#-L00096
	tstb	sp@(-132)
	moveml	#L00097,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00094:
	movl	a4@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),a2@+
	movl	a4@,a5
	cmpl	a5@,d7
	jne	L00099
	movl	a4@(4),a2@+	|(calling *process)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00098
L00099:
	movl	a4@(4),a2@+	|(calling *process)
	movl	a4@(8),a2@+
	movl	a4@(12),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	cmpl	a4@(8),d7
	jeq	L00101
	movl	a4@(8),a2@+	|(calling set)
	movl	a4@(16),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00100
L00101:
	movl	d7,d0
L00100:
	cmpl	a4@(12),d7
	jeq	L00103
	movl	a4@(12),a2@+	|(calling set)
	movl	a4@(16),a1
	movl	a1@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00102
L00103:
	movl	d7,d0
L00102:
	movl	a4@(16),a5
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),d0
	subql	#4,a2
L00098:
	subl	#16,a2
	moveml	a6@(-20),#L00097
	unlk	a6
	rts
L00097 = 15488
L00096 = 20
	.globl	F00104	|(fcn macro msg)
F00104:
	link	a6,#-L00107
	tstb	sp@(-132)
	moveml	#L00108,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00105:
	movl	a4@,a5
	movl	a5@,a2@+
	movl	a4@(4),a2@+	|(beginning do)
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
L00109:
	cmpl	a4@(8),d7
	jne	L00110
	movl	a3@(4),a2@+
	movl	a4@(12),a2@+	|(calling append)
	|(calling nreverse)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00111
L00110:
	movl	a4@(8),a1
	movl	a1@(4),a4@(24)
	movl	a4@(24),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00113
	movl	a4@(24),a0
	movl	a0@(4),d0
	cmpl	a3@(8),d0
	jne	L00115
	movl	a3@(12),a2@+
	movl	a3@(16),a2@+
	movl	a4@(24),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	jra	L00114
L00115:
	movl	a4@(24),a1
	movl	a1@(4),d0
	cmpl	a3@(20),d0
	jne	L00116
	movl	a3@(12),a2@+
	movl	a3@(24),a2@+
	movl	a4@(24),a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	jra	L00114
L00116:
	movl	a4@(24),a0
	movl	a0@(4),d0
	cmpl	a3@(28),d0
	jne	L00117
	movl	a3@(12),a2@+
	movl	a3@(32),a2@+
	movl	a4@(24),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	jra	L00114
L00117:
	movl	a4@(24),a1
	movl	a1@(4),d0
	cmpl	a3@(36),d0
	jne	L00118
	movl	a4@(24),a5
	movl	a5@,a0
	movl	a0@(4),a4@(20)
	jra	L00114
L00118:
	movl	a4@(24),a0
	movl	a0@(4),d0
	cmpl	a3@(40),d0
	jne	L00119
	movl	a3@(44),a2@+
	movl	a3@(48),a2@+
	movl	a4@(24),a5
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
	jbsr	_qcons
	movl	d0,a4@(16)
	jra	L00114
L00119:
	movl	a3@(52),a2@+
	movl	a4@(24),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
L00114:
	jra	L00112
L00113:
	movl	a4@(24),d6
	cmpl	a3@(8),d6
	jne	L00120
	movl	a3@(56),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	jra	L00112
L00120:
	movl	a4@(24),d6
	cmpl	a3@(20),d6
	jne	L00121
	movl	a3@(60),a2@+
	movl	#_nilatom+0x1400+128,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	jra	L00112
L00121:
	movl	a4@(24),d6
	cmpl	a3@(64),d6
	jne	L00122
	movl	a3@(68),a4@(16)
	jra	L00112
L00122:
	movl	a3@(52),a2@+
	movl	a4@(24),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
L00112:
	cmpl	a4@(16),d7
	jeq	L00124
	cmpl	a4@(20),d7
	jeq	L00126
	movl	a4@(16),a2@+	|(calling nconc)
	movl	a4@(20),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00125
L00126:
	movl	a4@(16),d0
L00125:
	movl	d0,a2@+
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	jra	L00123
L00124:
	movl	d7,d0
L00123:
	movl	a4@(8),a5
	movl	a5@,a2@+
	movl	d7,a4@(16)
	movl	a2@-,a4@(8)
	jra	L00109
L00111:
	subl	#28,a2
	moveml	a6@(-24),#L00108
	unlk	a6
	rts
L00108 = 15552
L00107 = 24
	.globl	F00129	|(fcn lexpr msg-tyo-char)
F00129:
	link	a6,#-L00132
	tstb	sp@(-132)
	moveml	#L00133,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00130:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	#_nilatom+0x1400+4,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	movl	#_nilatom+0x1400+8,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	movl	d7,a2@+
	movl	#3,d6
	movl	a4@,a5
	cmpl	a5@,d6
	jle	L00139
	movl	d7,a4@(12)
	jra	L00138
L00139:
	movl	#_nilatom+0x1400+12,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(12)
L00138:
	movl	a4@(8),a2@+	|(beginning do)
L00142:
	movl	a4@(16),a5
	cmpl	#1,a5@
	jpl	L00143
	movl	d7,d0
	jra	L00144
L00143:
	cmpl	#_nilatom+0x1400+40,a4@(4)
	jne	L00146
	movl	a4@(12),a2@+	|(calling terpr)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00145
L00146:
	movl	a4@(4),a2@+	|(calling tyo)
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00145:
	cmpl	#_nilatom+0x1400-4096,a4@(16)
	jle	L00147
	cmpl	#_nilatom+0x1400+4092,a4@(16)
	jle	L00148
L00147:
	movl	a4@(16),a0
	jbsr	_qoneminus
	movl	d0,a4@(16)
	jra	L00149
L00148:
	movl	a4@(16),d0
	subql	#4,d0
	movl	d0,a4@(16)
L00149:
	jra	L00142
L00144:
	subl	#20,a2
	moveml	a6@(-24),#L00133
	unlk	a6
	rts
L00133 = 15552
L00132 = 24
	.globl	F00152	|(fcn lexpr msg-print)
F00152:
	link	a6,#-L00155
	tstb	sp@(-132)
	moveml	#L00156,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00153:
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
	movl	#2,d6
	movl	a4@,a5
	cmpl	a5@,d6
	jle	L00160
	movl	d7,a4@(8)
	jra	L00159
L00160:
	movl	#_nilatom+0x1400+8,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(8)
L00159:
	movl	a4@(4),a2@+	|(calling patom)
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subl	#12,a2
	moveml	a6@(-24),#L00156
	unlk	a6
	rts
L00156 = 15552
L00155 = 24
	.globl	F00163	|(fcn lambda printblanks)
F00163:
	link	a6,#-L00166
	tstb	sp@(-132)
	moveml	#L00167,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00164:
	movl	a4@,d5
	movl	a3@(72),d0
	cmpl	d0,d7
	jeq	L00169
	movl	d0,a0
L00170:
	cmpl	a0@(4),d5
	jeq	L00168
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00170
	movl	a0,d0
L00169:
	movl	d0,a2@+
	jra	L00171
L00168:
	movl	a0,a2@+
L00171:
	cmpl	a4@(8),d7
	jeq	L00173
	movl	a4@(8),a5	|(calling patom)
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00172
L00173:
	movl	a4@,a2@+	|(beginning do)
L00174:
	movl	a4@(12),a5
	cmpl	#1,a5@
	jpl	L00175
	movl	d7,d0
	jra	L00176
L00175:
	movl	a3@(76),a2@+	|(calling patom)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	#_nilatom+0x1400-4096,a4@(12)
	jle	L00177
	cmpl	#_nilatom+0x1400+4092,a4@(12)
	jle	L00178
L00177:
	movl	a4@(12),a0
	jbsr	_qoneminus
	movl	d0,a4@(12)
	jra	L00179
L00178:
	movl	a4@(12),d0
	subql	#4,d0
	movl	d0,a4@(12)
L00179:
	jra	L00174
L00176:
	subql	#4,a2
L00172:
	subl	#12,a2
	moveml	a6@(-24),#L00167
	unlk	a6
	rts
L00167 = 15520
L00166 = 24
	.globl	F00180	|(fcn nlambda linelength)
F00180:
	link	a6,#-L00183
	tstb	sp@(-132)
	moveml	#L00184,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00181:
	cmpl	a4@,d7
	jne	L00186
	movl	a3@(80),a5
	movl	a5@,d0
	jra	L00185
L00186:
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
	andw	#532,d0
	jeq	L00187
	movl	a4@,a0
	movl	a3@(80),a5
	movl	a0@(4),a5@
	movl	a3@(80),a5
	movl	a5@,d0
	jra	L00185
L00187:
	movl	a3@(80),a5
	movl	a5@,d0
L00185:
	subql	#4,a2
	moveml	a6@(-20),#L00184
	unlk	a6
	rts
L00184 = 15488
L00183 = 20
	.globl	F00190	|(fcn lambda charcnt)
F00190:
	link	a6,#-L00193
	tstb	sp@(-132)
	moveml	#L00194,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00191:
	movl	a3@(80),a5
	movl	a5@,a0
	movl	a0@,d2
	movl	d2,sp@-
	movl	a4@,a2@+	|(calling nwritn)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a0
	movl	a0@,d2
	movl	sp@+,d0
	subl	d2,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00195
	jbsr	_qnewint
L00195:
	subql	#4,a2
	moveml	a6@(-24),#L00194
	unlk	a6
	rts
L00194 = 15492
L00193 = 24
	.globl	F00196	|(fcn lambda nthcdr)
F00196:
	link	a6,#-L00199
	tstb	sp@(-132)
	moveml	#L00200,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00197:
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
	andw	#516,d0
	jeq	L00202
	movl	a4@,a5
	cmpl	#0,a5@
	jpl	L00206
	movl	d7,a2@+
	movl	a4@(4),a2@+
	jbsr	_qcons
	jra	L00205
L00206:
	cmpl	#_nilatom+0x1400+0,a4@
	jne	L00207
	movl	a4@(4),d0
	jra	L00205
L00207:
	cmpl	#_nilatom+0x1400-4096,a4@	|(calling nthcdr)
	jle	L00208
	cmpl	#_nilatom+0x1400+4092,a4@
	jle	L00209
L00208:
	movl	a4@,a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00210
L00209:
	movl	a4@,d0
	subql	#4,d0
	movl	d0,a2@+
L00210:
	movl	a4@(4),a5
	movl	a5@,a2@+
	movl	_lbot,a5
	movl	a4,a5
	movl	a2@(-8),a5@
	movl	a2@(-4),a5@(4)
	movl	a5,a2
	addql	#8,a2
	jra	L00197
L00205:
	jra	L00201
L00202:
	movl	a3@(84),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00201:
	subql	#8,a2
	moveml	a6@(-20),#L00200
	unlk	a6
	rts
L00200 = 15488
L00199 = 20
	.globl	F00212	|(fcn macro nthcdr::cmacro:g00211)
F00212:
	link	a6,#-L00215
	tstb	sp@(-132)
	moveml	#L00216,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00213:
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
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
	jeq	L00218
	cmpl	#_nilatom+0x1400+0,a4@(4)
	jne	L00218
	movl	a4@(8),d0
	jra	L00217
L00218:
	movl	a4@(4),a2@+	|(beginning do)
	movl	a3@(88),a2@+
L00222:
	cmpl	a4@(16),d7
	jne	L00223
	movl	d7,d0
	jra	L00224
L00223:
	movl	a4@(12),a2@+
	movl	a4@(16),a1
	movl	a1@(4),a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00226
	movl	a4@(16),a1
	movl	a1@(4),d0
	jra	L00224
|	jra	L00225
L00226:
	movl	d7,d0
L00225:
	movl	a4@(16),a5
	movl	a5@,a4@(16)
	jra	L00222
L00224:
	subql	#8,a2
	movl	d0,a2@+
	cmpl	a4@(12),d7
	jeq	L00228
	movl	a4@(12),a5
	movl	a5@,a2@+
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00227
L00228:
	movl	a3@(92),a2@+
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
L00227:
	subql	#4,a2
L00217:
	subl	#12,a2
	moveml	a6@(-24),#L00216
	unlk	a6
	rts
L00216 = 15552
L00215 = 24
	.globl	F00229	|(fcn lambda nth)
F00229:
	link	a6,#-L00232
	tstb	sp@(-132)
	moveml	#L00233,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00230:
	movl	a4@,a2@+	|(calling nthcdr)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a0
	movl	a0@(4),d0
	subql	#8,a2
	moveml	a6@(-20),#L00233
	unlk	a6
	rts
L00233 = 15488
L00232 = 20
	.globl	F00235	|(fcn macro nth::cmacro:g00234)
F00235:
	link	a6,#-L00238
	tstb	sp@(-132)
	moveml	#L00239,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00236:
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a3@(96),a2@+
	movl	a3@(92),a2@+
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
	moveml	a6@(-20),#L00239
	unlk	a6
	rts
L00239 = 15488
L00238 = 20
	.globl	F00240	|(fcn lambda listp)
F00240:
	link	a6,#-L00243
	tstb	sp@(-132)
	moveml	#L00244,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00241:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jeq	L00246
	movl	d7,d0
	jra	L00247
L00246:
	movl	a3@,d0
	jra	L00245
L00247:
	cmpl	a4@,d7
	jne	L00248
	movl	a3@,d0
	jra	L00249
L00248:
	movl	d7,d0
L00249:
	jra	L00250
L00245:
	movl	d0,d0
L00250:
	subql	#4,a2
	moveml	a6@(-20),#L00244
	unlk	a6
	rts
L00244 = 15488
L00243 = 20
	.globl	F00253	|(fcn lexpr remq)
F00253:
	link	a6,#-L00256
	tstb	sp@(-132)
	moveml	#L00257,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00254:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	#_nilatom+0x1400+4,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	movl	#_nilatom+0x1400+8,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	movl	d7,a2@+
	movl	#3,d6
	movl	a4@,a5
	cmpl	a5@,d6
	jle	L00263
	movl	#_nilatom+0x1400-4,a4@(12)
	jra	L00262
L00263:
	movl	#_nilatom+0x1400+12,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(12)
L00262:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a4@(8),a2@+	|(beginning do)
	movl	d7,a2@+
L00266:
	cmpl	a4@(24),d7
	jne	L00267
	movl	a4@(16),d0
	jra	L00268
L00267:
	movl	a4@(24),a1
	movl	a1@(4),d0
	cmpl	a4@(4),d0
	jne	L00271
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@(12),d6
	jne	L00270
L00271:
	movl	a4@(24),a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a4@(28)
	cmpl	a4@(16),d7
	jne	L00273
	movl	a4@(28),a4@(16)
	jra	L00272
L00273:
	movl	a4@(20),a0
	movl	a4@(28),a0@
	movl	a0,d0
L00272:
	movl	a4@(28),a4@(20)
	jra	L00269
L00270:
	cmpl	#_nilatom+0x1400-4096,a4@(12)
	jle	L00274
	cmpl	#_nilatom+0x1400+4092,a4@(12)
	jle	L00275
L00274:
	movl	a4@(12),a0
	jbsr	_qoneminus
	movl	d0,a4@(12)
	jra	L00276
L00275:
	movl	a4@(12),d0
	subql	#4,d0
	movl	d0,a4@(12)
L00276:
L00269:
	movl	a4@(24),a5
	movl	a5@,a4@(24)
	jra	L00266
L00268:
	subl	#32,a2
	moveml	a6@(-24),#L00257
	unlk	a6
	rts
L00257 = 15552
L00256 = 24
	.globl	F00277	|(fcn lexpr tab)
F00277:
	link	a6,#-L00280
	tstb	sp@(-132)
	moveml	#L00281,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00278:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	#_nilatom+0x1400+4,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(4)
	movl	a4@,a5
	cmpl	#1,a5@
	jle	L00286
	movl	#_nilatom+0x1400+8,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(8)
	jra	L00285
L00286:
	movl	d7,d0
L00285:
	movl	a4@(8),a2@+	|(calling nwritn)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(12)
	movl	a4@(12),a0
	movl	a0@,d0
	movl	a4@(4),a5
	cmpl	a5@,d0
	jle	L00290
	movl	a4@(8),a2@+	|(calling terpri)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	#_nilatom+0x1400+0,a4@(12)
	jra	L00289
L00290:
	movl	d7,d0
L00289:
	movl	a4@(4),a5	|(calling printblanks)
	movl	a5@,d0
	movl	a4@(12),a5
	subl	a5@,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00291
	jbsr	_qnewint
L00291:
	movl	d0,a2@+
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d7,d0
L00282:
	subl	#16,a2
	moveml	a6@(-24),#L00281
	unlk	a6
	rts
L00281 = 15492
L00280 = 24
	.globl	F00292	|(fcn lambda charcnt)
F00292:
	link	a6,#-L00295
	tstb	sp@(-132)
	moveml	#L00296,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00293:
	movl	a3@(80),a5
	movl	a5@,a0
	movl	a0@,d2
	movl	d2,sp@-
	movl	a4@,a2@+	|(calling nwritn)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a0
	movl	a0@,d2
	movl	sp@+,d0
	subl	d2,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00297
	jbsr	_qnewint
L00297:
	subql	#4,a2
	moveml	a6@(-24),#L00296
	unlk	a6
	rts
L00296 = 15492
L00295 = 24
	.globl	F00298	|(fcn lambda $patom1)
F00298:
	link	a6,#-L00301
	tstb	sp@(-132)
	moveml	#L00302,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00299:
	movl	a4@,a2@+	|(calling patom)
	movl	a3@(100),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#4,a2
	moveml	a6@(-20),#L00302
	unlk	a6
	rts
L00302 = 15488
L00301 = 20
	.globl	F00303	|(fcn lambda attach)
F00303:
	link	a6,#-L00306
	tstb	sp@(-132)
	moveml	#L00307,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00304:
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00309
	movl	a4@(4),a2@+
	movl	a4@(4),a1
	movl	a1@(4),a2@+
	movl	a4@(4),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	d0,d1
	movl	a2@-,a0
	movl	d1,a0@
	movl	a0,d0
	movl	a4@(4),a0
	movl	a4@,a0@(4)
	movl	a0,d0
	jra	L00308
L00309:
	movl	a3@(104),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00308:
	subql	#8,a2
	moveml	a6@(-20),#L00307
	unlk	a6
	rts
L00307 = 15488
L00306 = 20
	.globl	F00310	|(fcn lambda Cnth)
F00310:
	link	a6,#-L00313
	tstb	sp@(-132)
	moveml	#L00314,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00311:
	movl	#1,d6
	movl	a4@(4),a5
	cmpl	a5@,d6
	jle	L00316
	movl	d7,a2@+
	movl	a4@,a2@+
	jbsr	_qcons
	jra	L00315
L00316:
L00317:
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
	jne	L00321
	cmpl	#_nilatom+0x1400+4,a4@(4)
	jne	L00320
L00321:
	movl	a4@,d0
	jra	L00318
|	jra	L00319
L00320:
	movl	d7,d0
L00319:
	movl	a4@,a5
	movl	a5@,a4@
	cmpl	#_nilatom+0x1400-4096,a4@(4)
	jle	L00324
	cmpl	#_nilatom+0x1400+4092,a4@(4)
	jle	L00325
L00324:
	movl	a4@(4),a0
	jbsr	_qoneminus
	movl	d0,a4@(4)
	jra	L00326
L00325:
	movl	a4@(4),d0
	subql	#4,d0
	movl	d0,a4@(4)
L00326:
	jra	L00317
|	movl	d7,d0
L00318:
L00315:
	subql	#8,a2
	moveml	a6@(-24),#L00314
	unlk	a6
	rts
L00314 = 15552
L00313 = 24
	.globl	F00327	|(fcn lambda dsubst)
F00327:
	link	a6,#-L00330
	tstb	sp@(-132)
	moveml	#L00331,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00328:
	movl	d7,a2@+
	movl	a4@(4),a2@+
	movl	a4@(8),a4@(12)
	movl	a4@(12),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00335
	movl	a4@,a2@+	|(calling copy)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00333
|	jra	L00334
L00335:
	movl	d7,d0
L00334:
L00332:
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
	andw	#1783,d0
	jeq	L00337
	movl	a4@(12),d0
	jra	L00333
|	jra	L00336
L00337:
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00342
	movl	a4@(4),a2@+
	movl	a4@(8),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jeq	L00343
	movl	d7,d0
	jra	L00344
L00343:
	movl	a3@,d0
L00344:
	jra	L00341
L00342:
	movl	a4@(4),a2@+
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00345
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00346
	movl	d7,d0
	jra	L00347
L00345:
	subql	#8,a2
L00346:
	movl	a3@,d0
L00347:
L00341:
	cmpl	d0,d7
	jeq	L00340
	movl	a4@(8),a2@+
	movl	a4@,a2@+	|(calling copy)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,d1
	movl	a2@-,a0
	movl	d1,a0@(4)
	movl	a0,d0
	jra	L00336
L00340:
	movl	a4@,a2@+	|(calling dsubst)
	movl	a4@(4),a2@+
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00336:
	cmpl	a4@(4),d7
	jeq	L00349
	movl	a4@(4),d6
	movl	a4@(8),a5
	cmpl	a5@,d6
	jne	L00349
	movl	a4@(8),a2@+
	movl	a4@,a2@+	|(calling copy)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,d1
	movl	a2@-,a0
	movl	d1,a0@
	movl	a0,d0
	movl	a4@(12),d0
	jra	L00333
|	jra	L00348
L00349:
	movl	d7,d0
L00348:
	movl	a4@(8),a5
	movl	a5@,a4@(8)
	jra	L00332
|	movl	d7,d0
L00333:
	subl	#16,a2
	moveml	a6@(-24),#L00331
	unlk	a6
	rts
L00331 = 15552
L00330 = 24
	.globl	F00351	|(fcn lambda insert)
F00351:
	link	a6,#-L00354
	tstb	sp@(-132)
	moveml	#L00355,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(16),a2
L00352:
	cmpl	a4@(4),d7
	jne	L00357
	movl	a4@,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	jra	L00356
L00357:
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
	jeq	L00358
	movl	a3@(108),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00356
L00358:
	cmpl	a4@(12),d7
	jeq	L00361
	movl	a4@,a2@+	|(calling member)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00361
	movl	a4@(4),d0
	jra	L00356
L00361:
	cmpl	a4@(8),d7
	jne	L00364
	movl	a3@(112),a4@(8)
	jra	L00363
L00364:
	movl	d7,d0
L00363:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a4@(4),a4@(16)
	movl	a4@(4),a2@+	|(calling length)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+136,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(20)
L00365:
	movl	a4@(20),a2@+	|(calling /)
	|(calling add1)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+144,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	#_nilatom+0x1400+8,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(24)
	movl	a4@(16),a2@+	|(calling Cnth)
	movl	a4@(24),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+160,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(28)
	movl	a4@(20),a5
	cmpl	#3,a5@
	jpl	L00368
	movl	a4@(8),a2@+
	movl	a4@,a2@+
	movl	a4@(28),a1
	movl	a1@(4),a2@+
	movl	a4@(32),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00372
	movl	a4@(32),a1
	cmpl	a1@(8),d7
	jeq	L00372
	movl	a4@(32),a1
	movl	a1@(8),a4@(32)
	cmpl	a1@(8),d7
	jra	L00371
L00372:
	movl	d7,d0
L00371:
	movl	a4@(32),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00375
	movl	a3@(116),a2@+
	movl	a4@(32),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00375
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-12),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00374
L00375:
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00374:
	cmpl	d0,d7
	jeq	L00370
	movl	a4@,a2@+
	movl	a4@(28),a1
	movl	a1@(4),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00379
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00380
	jra	L00381
L00379:
	subql	#8,a2
L00380:
	jra	L00378
L00381:
	movl	a4@(28),a2@+
	movl	a4@(28),a1
	movl	a1@(4),a2@+
	movl	a4@(28),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	d0,d1
	movl	a2@-,a0
	movl	d1,a0@
	movl	a0,d0
	movl	a4@(28),a0
	movl	a4@,a0@(4)
	movl	a0,d0
	jra	L00377
L00378:
	movl	d7,d0
L00377:
	jra	L00369
L00370:
	cmpl	#_nilatom+0x1400+4,a4@(20)
	jne	L00382
	movl	a4@(28),a2@+
	movl	a4@,a2@+
	movl	a4@(28),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	d0,d1
	movl	a2@-,a0
	movl	d1,a0@
	movl	a0,d0
	jra	L00369
L00382:
	movl	a4@(8),a2@+
	movl	a4@,a2@+
	movl	a4@(28),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@(32),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00385
	movl	a4@(32),a1
	cmpl	a1@(8),d7
	jeq	L00385
	movl	a4@(32),a1
	movl	a1@(8),a4@(32)
	cmpl	a1@(8),d7
	jra	L00384
L00385:
	movl	d7,d0
L00384:
	movl	a4@(32),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00388
	movl	a3@(116),a2@+
	movl	a4@(32),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00388
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-12),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00387
L00388:
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00387:
	cmpl	d0,d7
	jeq	L00383
	movl	a4@,a2@+
	movl	a4@(28),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00392
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00393
	jra	L00394
L00392:
	subql	#8,a2
L00393:
	jra	L00391
L00394:
	movl	a4@(28),a5
	movl	a5@,a2@+
	movl	a4@(28),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@(28),a5
	movl	a5@,a0
	movl	a0@,a2@+
	jbsr	_qcons
	movl	d0,d1
	movl	a2@-,a0
	movl	d1,a0@
	movl	a0,d0
	movl	a4@(28),a5
	movl	a5@,a0
	movl	a4@,a0@(4)
	movl	a0,d0
	jra	L00390
L00391:
	movl	d7,d0
L00390:
	jra	L00369
L00383:
	movl	a4@(28),a5
	movl	a5@,a2@+
	movl	a4@,a2@+
	movl	a4@(28),a5
	movl	a5@,a1
	movl	a1@,a2@+
	jbsr	_qcons
	movl	d0,d1
	movl	a2@-,a0
	movl	d1,a0@
	movl	a0,d0
L00369:
	jra	L00367
L00368:
	movl	a4@(8),a2@+
	movl	a4@,a2@+
	movl	a4@(28),a1
	movl	a1@(4),a2@+
	movl	a4@(32),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00397
	movl	a4@(32),a1
	cmpl	a1@(8),d7
	jeq	L00397
	movl	a4@(32),a1
	movl	a1@(8),a4@(32)
	cmpl	a1@(8),d7
	jra	L00396
L00397:
	movl	d7,d0
L00396:
	movl	a4@(32),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00400
	movl	a3@(116),a2@+
	movl	a4@(32),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00400
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-12),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00399
L00400:
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00399:
	cmpl	d0,d7
	jeq	L00395
	movl	a4@,a2@+
	movl	a4@(28),a1
	movl	a1@(4),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00404
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00405
	jra	L00406
L00404:
	subql	#8,a2
L00405:
	jra	L00403
L00406:
	movl	a4@(24),a2@+	|(calling sub1)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+176,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(20)
	jra	L00365
|	jra	L00402
L00403:
	movl	d7,d0
L00402:
	jra	L00367
L00395:
	movl	a4@(28),a5
	movl	a5@,a4@(16)
	movl	a4@(20),a5
	movl	a5@,d0
	movl	a4@(24),a5
	subl	a5@,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00407
	jbsr	_qnewint
L00407:
	movl	d0,a4@(20)
	jra	L00365
L00367:
L00366:
	subl	#16,a2
	movl	a4@(4),d0
L00356:
	subl	#16,a2
	moveml	a6@(-28),#L00355
	unlk	a6
	rts
L00355 = 15556
L00354 = 28
	.globl	F00408	|(fcn lambda kwote)
F00408:
	link	a6,#-L00411
	tstb	sp@(-132)
	moveml	#L00412,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00409:
	movl	a3@(120),a2@+
	movl	a4@,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#4,a2
	moveml	a6@(-20),#L00412
	unlk	a6
	rts
L00412 = 15488
L00411 = 20
	.globl	F00413	|(fcn lambda lconc)
F00413:
	link	a6,#-L00416
	tstb	sp@(-132)
	moveml	#L00417,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00414:
	movl	d7,a2@+
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
	jeq	L00420
	movl	a4@,d0
	jra	L00419
L00420:
	movl	a4@(4),a2@+	|(calling last)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+184,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(8)
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
	jeq	L00424
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	jbsr	_qcons
	jra	L00423
L00424:
	movl	a4@,a5
	movl	a5@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00427
	movl	a4@,a5
	movl	a5@,a0
	movl	a4@(4),a0@
	movl	a0,d0
	movl	a4@,a0
	movl	a4@(8),a0@
	movl	a0,d0
	jra	L00423
L00427:
	movl	a4@,a0
	movl	a4@(8),a0@
	movl	a0,d0
	movl	d0,a0
	movl	a4@(4),a0@(4)
	movl	a0,d0
L00423:
L00419:
	jra	L00418
|	movl	d7,d0
L00418:
	subl	#12,a2
	moveml	a6@(-20),#L00417
	unlk	a6
	rts
L00417 = 15488
L00416 = 20
	.globl	F00428	|(fcn lambda ldiff)
F00428:
	link	a6,#-L00431
	tstb	sp@(-132)
	moveml	#L00432,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00429:
	movl	a4@,d6
	cmpl	a4@(4),d6
	jne	L00434
	movl	d7,d0
	jra	L00433
L00434:
	cmpl	a4@(4),d7
	jne	L00435
	movl	a4@,d0
	jra	L00433
L00435:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a4@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a4@(8)
	movl	a4@(8),a4@(12)
L00436:
	movl	a4@,a5
	movl	a5@,a4@
	movl	a4@,d6
	cmpl	a4@(4),d6
	jne	L00439
	movl	a4@(12),d0
	jra	L00437
|	jra	L00438
L00439:
	cmpl	a4@,d7
	jne	L00440
	movl	a3@(124),a2@+	|(calling error)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00438
L00440:
	movl	d7,d0
L00438:
	movl	a4@(8),a2@+
	movl	a4@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,d1
	movl	a2@-,a0
	movl	d1,a0@
	movl	a0,d0
	movl	d0,a0
	movl	a0@,a4@(8)
	jra	L00436
|	movl	d7,d0
L00437:
	subql	#8,a2
L00433:
	subql	#8,a2
	moveml	a6@(-24),#L00432
	unlk	a6
	rts
L00432 = 15552
L00431 = 24
	.globl	F00441	|(fcn lambda lsubst)
F00441:
	link	a6,#-L00444
	tstb	sp@(-132)
	moveml	#L00445,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00442:
	cmpl	a4@(8),d7
	jne	L00447
	movl	d7,d0
	jra	L00446
L00447:
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
	andw	#1783,d0
	jeq	L00448
	movl	a4@(4),d6
	cmpl	a4@(8),d6
	jne	L00452
	movl	a4@,d0
	jra	L00451
L00452:
	movl	a4@(8),d0
L00451:
	jra	L00446
L00448:
	movl	a4@(4),a2@+
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00454
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00455
	jra	L00453
L00454:
	subql	#8,a2
L00455:
	movl	a4@,a2@+	|(calling nconc)
	|(calling copy)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@,a2@+	|(calling lsubst)
	movl	a4@(4),a2@+
	movl	a4@(8),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+192,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00446
L00453:
	movl	a4@,a2@+	|(calling lsubst)
	movl	a4@(4),a2@+
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+192,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	movl	a4@,a2@+	|(calling lsubst)
	movl	a4@(4),a2@+
	movl	a4@(8),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+192,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	jbsr	_qcons
L00446:
	subl	#12,a2
	moveml	a6@(-24),#L00445
	unlk	a6
	rts
L00445 = 15552
L00444 = 24
	.globl	F00456	|(fcn lambda merge)
F00456:
	link	a6,#-L00459
	tstb	sp@(-132)
	moveml	#L00460,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00457:
	movl	_bnp,a1
	movl	a3@(128),a5
	movl	a5@,a1@+
	movl	a3@(128),a1@+
	movl	a3@(128),a5
	movl	a4@(8),a5@
	movl	a1,_bnp
	movl	a3@(128),a5
	cmpl	a5@,d7
	jne	L00462
	movl	a3@(128),a5
	movl	a3@(112),a5@
	jra	L00461
L00462:
	movl	d7,d0
L00461:
	movl	a4@,a2@+	|(calling merge1)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subl	#12,a2
	moveml	a6@(-20),#L00460
	unlk	a6
	rts
L00460 = 15488
L00459 = 20
	.globl	F00463	|(fcn lambda merge1)
F00463:
	link	a6,#-L00466
	tstb	sp@(-132)
	moveml	#L00467,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00464:
	cmpl	a4@,d7
	jne	L00469
	movl	a4@(4),d0
	jra	L00468
L00469:
	cmpl	a4@(4),d7
	jne	L00470
	movl	a4@,d0
	jra	L00468
L00470:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a3@(128),a5
	movl	a5@,a2@+
	movl	a4@,a1
	movl	a1@(4),a2@+
	movl	a4@(4),a0
	movl	a0@(4),a2@+
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00476
	movl	a4@(16),a1
	cmpl	a1@(8),d7
	jeq	L00476
	movl	a4@(16),a1
	movl	a1@(8),a4@(16)
	cmpl	a1@(8),d7
	jra	L00475
L00476:
	movl	d7,d0
L00475:
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00479
	movl	a3@(116),a2@+
	movl	a4@(16),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00479
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-12),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00478
L00479:
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00478:
	cmpl	d0,d7
	jeq	L00474
	movl	a4@,a2@+
	movl	a4@,a5
	movl	a5@,a4@
	movl	a4@(16),d0
	subql	#4,a2
	jra	L00473
L00474:
	movl	a4@(4),a2@+
	movl	a4@(4),a5
	movl	a5@,a4@(4)
	movl	a4@(16),d0
	subql	#4,a2
L00473:
	movl	d0,a4@(12)
	movl	a4@(12),a4@(8)
L00471:
	cmpl	a4@,d7
	jne	L00484
	movl	a4@(12),a0
	movl	a4@(4),a0@
	movl	a0,d0
	movl	a4@(8),d0
	jra	L00472
|	jra	L00483
L00484:
	cmpl	a4@(4),d7
	jne	L00485
	movl	a4@(12),a0
	movl	a4@,a0@
	movl	a0,d0
	movl	a4@(8),d0
	jra	L00472
|	jra	L00483
L00485:
	movl	a3@(128),a5
	movl	a5@,a2@+
	movl	a4@,a1
	movl	a1@(4),a2@+
	movl	a4@(4),a0
	movl	a0@(4),a2@+
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00488
	movl	a4@(16),a1
	cmpl	a1@(8),d7
	jeq	L00488
	movl	a4@(16),a1
	movl	a1@(8),a4@(16)
	cmpl	a1@(8),d7
	jra	L00487
L00488:
	movl	d7,d0
L00487:
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00491
	movl	a3@(116),a2@+
	movl	a4@(16),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00491
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-12),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00490
L00491:
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00490:
	cmpl	d0,d7
	jeq	L00486
	movl	a4@(12),a0
	movl	a4@,a0@
	movl	a0,d0
	movl	a4@,a5
	movl	a5@,a4@
	jra	L00483
L00486:
	movl	a4@(12),a0
	movl	a4@(4),a0@
	movl	a0,d0
	movl	a4@(4),a5
	movl	a5@,a4@(4)
L00483:
	movl	a4@(12),a5
	movl	a5@,a4@(12)
	jra	L00471
|	movl	d7,d0
L00472:
	subql	#8,a2
L00468:
	subql	#8,a2
	moveml	a6@(-24),#L00467
	unlk	a6
	rts
L00467 = 15552
L00466 = 24
	.globl	F00493	|(fcn macro neq)
F00493:
	link	a6,#-L00496
	tstb	sp@(-132)
	moveml	#L00497,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00494:
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a3@(132),a2@+
	movl	a3@(136),a2@+
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
	moveml	a6@(-20),#L00497
	unlk	a6
	rts
L00497 = 15488
L00496 = 20
	.globl	F00498	|(fcn macro quote!)
F00498:
	link	a6,#-L00501
	tstb	sp@(-132)
	moveml	#L00502,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00499:
	movl	a4@,a5
	movl	a5@,a2@+
	movl	a4@(4),a2@+	|(calling quote!-expr-mac)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#8,a2
	moveml	a6@(-20),#L00502
	unlk	a6
	rts
L00502 = 15488
L00501 = 20
	.globl	F00503	|(fcn lambda quote!-expr-mac)
F00503:
	link	a6,#-L00506
	tstb	sp@(-132)
	moveml	#L00507,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00504:
	cmpl	a4@,d7
	jne	L00509
	movl	d7,d0
	jra	L00508
L00509:
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
	jeq	L00510
	movl	a3@(120),a2@+
	movl	a4@,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00508
L00510:
	movl	a4@,a1
	movl	a1@(4),d0
	cmpl	a3@(140),d0
	jne	L00513
	movl	a3@(144),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	movl	a4@,a5	|(calling quote!-expr-mac)
	movl	a5@,a1
	movl	a1@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00508
L00513:
	movl	a4@,a0
	movl	a0@(4),d0
	cmpl	a3@(148),d0
	jne	L00514
	movl	a4@,a5
	movl	a5@,a1
	cmpl	a1@,d7
	jeq	L00516
	movl	a3@(152),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	movl	a4@,a5	|(calling quote!-expr-mac)
	movl	a5@,a1
	movl	a1@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00515
L00516:
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@(4),d0
L00515:
	jra	L00508
L00514:
	movl	a3@(144),a2@+
	movl	a4@,a1	|(calling quote!-expr-mac)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@,a5	|(calling quote!-expr-mac)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
L00508:
	subql	#4,a2
	moveml	a6@(-20),#L00507
	unlk	a6
	rts
L00507 = 15488
L00506 = 20
	.globl	F00519	|(fcn lexpr remove)
F00519:
	link	a6,#-L00522
	tstb	sp@(-132)
	moveml	#L00523,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00520:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	#_nilatom+0x1400+4,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	movl	#_nilatom+0x1400+8,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	movl	d7,a2@+
	movl	#3,d6
	movl	a4@,a5
	cmpl	a5@,d6
	jle	L00529
	movl	#_nilatom+0x1400-4,a4@(12)
	jra	L00528
L00529:
	movl	#_nilatom+0x1400+12,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(12)
L00528:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a4@(8),a2@+	|(beginning do)
	movl	d7,a2@+
L00532:
	cmpl	a4@(24),d7
	jne	L00533
	movl	a4@(16),d0
	jra	L00534
L00533:
	movl	a4@(24),a1
	movl	a1@(4),a2@+
	movl	a4@(4),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00538
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00539
	jra	L00537
L00538:
	subql	#8,a2
L00539:
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@(12),d6
	jne	L00536
	movl	a4@(12),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L00536
L00537:
	movl	a4@(24),a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a4@(28)
	cmpl	a4@(16),d7
	jne	L00542
	movl	a4@(28),a4@(16)
	jra	L00541
L00542:
	movl	a4@(20),a0
	movl	a4@(28),a0@
	movl	a0,d0
L00541:
	movl	a4@(28),a4@(20)
	jra	L00535
L00536:
	cmpl	#_nilatom+0x1400-4096,a4@(12)
	jle	L00543
	cmpl	#_nilatom+0x1400+4092,a4@(12)
	jle	L00544
L00543:
	movl	a4@(12),a0
	jbsr	_qoneminus
	movl	d0,a4@(12)
	jra	L00545
L00544:
	movl	a4@(12),d0
	subql	#4,d0
	movl	d0,a4@(12)
L00545:
L00535:
	movl	a4@(24),a5
	movl	a5@,a4@(24)
	jra	L00532
L00534:
	subl	#32,a2
	moveml	a6@(-24),#L00523
	unlk	a6
	rts
L00523 = 15552
L00522 = 24
	.globl	F00546	|(fcn lambda subpair)
F00546:
	link	a6,#-L00549
	tstb	sp@(-132)
	moveml	#L00550,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00547:
	cmpl	a4@,d7
	jeq	L00552
	movl	a4@(8),a2@+	|(calling subpr)
	movl	a4@,a2@+
	movl	a4@(4),d0
	cmpl	a4@(4),d7
	jne	L00553
	movl	a3@(156),a2@+
	jra	L00554
L00553:
	movl	d0,a2@+
L00554:
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+216,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00551
L00552:
	movl	a4@(8),d0
L00551:
	subl	#12,a2
	moveml	a6@(-20),#L00550
	unlk	a6
	rts
L00550 = 15488
L00549 = 20
	.globl	F00555	|(fcn lambda subpr)
F00555:
	link	a6,#-L00558
	tstb	sp@(-132)
	moveml	#L00559,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00556:
	movl	d7,a2@+
	movl	d7,a2@+
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
	jeq	L00563
	jra	L00560
|	jra	L00562
L00563:
	movl	a4@,a5
	movl	a5@,a4@(12)
	cmpl	a5@,d7
	jeq	L00566
	movl	a4@(12),a2@+	|(calling subpr)
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+216,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a4@(12)
	jra	L00562
L00566:
	movl	d7,d0
L00562:
	movl	a4@,a1	|(calling subpr)
	movl	a1@(4),a2@+
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+216,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a4@(16)
	movl	a4@(16),a2@+
	movl	a4@,a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00569
	movl	a4@(12),d6
	movl	a4@,a5
	cmpl	a5@,d6
	jeq	L00568
L00569:
	movl	a4@(16),a2@+
	movl	a4@(12),a2@+
	jbsr	_qcons
	jra	L00567
L00568:
	movl	a4@,d0
L00567:
	jra	L00561
L00560:
	cmpl	a4@(4),d7
	jne	L00571
	movl	a4@,d0
	jra	L00561
|	jra	L00570
L00571:
	cmpl	a4@(8),d7
	jeq	L00572
	movl	a4@,a2@+
	movl	a4@(4),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00574
	movl	a4@(8),a0
	movl	a0@(4),d0
	jra	L00561
|	jra	L00573
L00574:
	movl	d7,d0
L00573:
	jra	L00570
L00572:
	movl	a4@,a2@+
	movl	a4@(4),a1
	movl	a1@(4),a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00576
	movl	a4@(4),a1
	movl	a1@(4),a5
	movl	a5@,d0
	jra	L00561
|	jra	L00575
L00576:
	movl	d7,d0
L00575:
L00570:
	movl	a4@(4),a5
	movl	a5@,a4@(4)
	cmpl	a4@(8),d7
	jeq	L00577
	movl	a4@(8),a5
	movl	a5@,d0
	movl	a4@(8),a5
	cmpl	a5@,d7
	jne	L00578
	movl	a3@(160),a4@(8)
	jra	L00579
L00578:
	movl	d0,a4@(8)
L00579:
L00577:
	jra	L00560
|	movl	d7,d0
L00561:
	subl	#20,a2
	moveml	a6@(-24),#L00559
	unlk	a6
	rts
L00559 = 15552
L00558 = 24
	.globl	F00580	|(fcn lambda tailp)
F00580:
	link	a6,#-L00583
	tstb	sp@(-132)
	moveml	#L00584,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00581:
	cmpl	a4@,d7
	jeq	L00585
L00586:
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
	jeq	L00589
	movl	d7,d0
	jra	L00587
|	jra	L00588
L00589:
	movl	a4@,d6
	cmpl	a4@(4),d6
	jne	L00592
	movl	a4@,d0
	jra	L00587
|	jra	L00588
L00592:
	movl	d7,d0
L00588:
	movl	a4@(4),a5
	movl	a5@,a4@(4)
	jra	L00586
|	movl	d7,d0
L00587:
	jra	L00593
L00585:
	movl	d7,d0
L00593:
	subql	#8,a2
	moveml	a6@(-24),#L00584
	unlk	a6
	rts
L00584 = 15552
L00583 = 24
	.globl	F00594	|(fcn lambda tconc)
F00594:
	link	a6,#-L00597
	tstb	sp@(-132)
	moveml	#L00598,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00595:
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
	jeq	L00600
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a4@(4)
	movl	a4@(4),a2@+
	movl	a4@(4),a2@+
	jbsr	_qcons
	jra	L00599
L00600:
	movl	a4@,a5
	movl	a5@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00603
	movl	a4@,a2@+
	movl	a4@,a5
	movl	a5@,a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,d1
	movl	a2@-,a0
	movl	d1,a0@
	movl	a0,d0
	movl	d0,a0
	movl	a0@,d1
	movl	a2@-,a0
	movl	d1,a0@
	movl	a0,d0
	jra	L00599
L00603:
	movl	a4@,a2@+
	movl	a4@,a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,d1
	movl	a2@-,a0
	movl	d1,a0@
	movl	a0,d0
	movl	d0,a0
	movl	a0@,d1
	movl	a2@-,a0
	movl	d1,a0@(4)
	movl	a0,d0
L00599:
	subql	#8,a2
	moveml	a6@(-20),#L00598
	unlk	a6
	rts
L00598 = 15488
L00597 = 20
	.globl	F00604	|(fcn lambda int:vector-range-error)
F00604:
	link	a6,#-L00607
	tstb	sp@(-132)
	moveml	#L00608,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00605:
	movl	a3@(164),a2@+	|(calling error)
	movl	a4@,a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#8,a2
	moveml	a6@(-20),#L00608
	unlk	a6
	rts
L00608 = 15488
L00607 = 20
	.globl	F00609	|(fcn lexpr int:wrong-number-of-args-error)
F00609:
	link	a6,#-L00612
	tstb	sp@(-132)
	moveml	#L00613,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00610:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	a4@,d0
	cmpl	a4@,d7
	jeq	L00614
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00614
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00615
L00614:
	movl	a4@(-4),a2@+
L00615:
	cmpl	#_nilatom+0x1400-4096,a4@
	jle	L00618
	cmpl	#_nilatom+0x1400+4092,a4@
	jle	L00619
L00618:
	movl	a4@,a0
	jbsr	_qoneminus
	jra	L00620
L00619:
	movl	a4@,d0
	subql	#4,d0
L00620:
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00616
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00617
L00616:
	movl	a4@(-4),a2@+
L00617:
	movl	a4@,a5
	movl	a5@,d0
	subl	#2,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00623
	jbsr	_qnewint
L00623:
	cmpl	d0,d7
	jeq	L00621
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00621
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00622
L00621:
	movl	a4@(-4),a2@+
L00622:
	movl	a4@,a5	|(beginning do)
	movl	a5@,d0
	subl	#3,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00626
	jbsr	_qnewint
L00626:
	movl	d0,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
L00624:
	movl	a4@(16),a5
	cmpl	#1,a5@
	jpl	L00625
	movl	a4@(8),a5
	movl	a5@,d6
	movl	a4@(4),a5
	cmpl	a5@,d6
	jne	L00629
	movl	d7,a2@+	|(calling format)
	movl	a3@(168),a2@+
	movl	a4@(12),a2@+
	movl	a4@(8),a2@+
	movl	a4@(8),a2@+
	movl	a4@(24),a2@+	|(calling length)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+136,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-24),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-24),a2
	movl	d0,a4@(20)
	jra	L00628
L00629:
	cmpl	#_nilatom+0x1400-4,a4@(4)
	jne	L00630
	movl	d7,a2@+	|(calling format)
	movl	a3@(172),a2@+
	movl	a4@(12),a2@+
	movl	a4@(8),a2@+
	movl	a4@(8),a2@+
	movl	a4@(24),a2@+	|(calling length)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+136,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-24),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-24),a2
	movl	d0,a4@(20)
	jra	L00628
L00630:
	movl	d7,a2@+	|(calling format)
	movl	a3@(176),a2@+
	movl	a4@(12),a2@+
	movl	a4@(8),a2@+
	movl	a4@(4),a2@+
	movl	a4@(24),a2@+	|(calling length)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+136,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-24),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-24),a2
	movl	d0,a4@(20)
L00628:
	movl	a4@(20),a2@+	|(calling error)
	movl	a4@(24),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00627
L00625:
	movl	a4@(16),d0
	cmpl	a4@(16),d7
	jeq	L00631
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00631
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00632
L00631:
	movl	a4@(-4),a2@+
L00632:
	movl	a4@(24),a2@+
	jbsr	_qcons
	movl	d0,a4@(24)
	cmpl	#_nilatom+0x1400-4096,a4@(16)
	jle	L00633
	cmpl	#_nilatom+0x1400+4092,a4@(16)
	jle	L00634
L00633:
	movl	a4@(16),a0
	jbsr	_qoneminus
	movl	d0,a4@(16)
	jra	L00635
L00634:
	movl	a4@(16),d0
	subql	#4,d0
	movl	d0,a4@(16)
L00635:
	jra	L00624
L00627:
	subl	#28,a2
	moveml	a6@(-28),#L00613
	unlk	a6
	rts
L00613 = 15556
L00612 = 28
	.globl	F00636	|(fcn lambda filestat:mode)
F00636:
	link	a6,#-L00639
	tstb	sp@(-132)
	moveml	#L00640,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00637:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00642
	movl	a4@,a0
	moveq	#0,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00643
	jmp	vecindexerr
L00643:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,d0
	jra	L00644
vecindexerr:
	movl	a0,a2@+
	jbsr	_qnewint
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+232,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00644:
	jra	L00641
L00642:
	movl	a3@(180),a2@+	|(calling error)
	|(calling concat)
	movl	a3@(184),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00641:
	subql	#4,a2
	moveml	a6@(-24),#L00640
	unlk	a6
	rts
L00640 = 15492
L00639 = 24
	.globl	F00645	|(fcn lambda filestat:type)
F00645:
	link	a6,#-L00648
	tstb	sp@(-132)
	moveml	#L00649,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00646:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00651
	movl	a4@,a0
	moveq	#1,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00652
	jmp	vecindexerr
L00652:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,d0
	jra	L00650
L00651:
	movl	a3@(188),a2@+	|(calling error)
	|(calling concat)
	movl	a3@(184),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00650:
	subql	#4,a2
	moveml	a6@(-24),#L00649
	unlk	a6
	rts
L00649 = 15492
L00648 = 24
	.globl	F00653	|(fcn lambda filestat:nlink)
F00653:
	link	a6,#-L00656
	tstb	sp@(-132)
	moveml	#L00657,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00654:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00659
	movl	a4@,a0
	moveq	#2,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00660
	jmp	vecindexerr
L00660:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,d0
	jra	L00658
L00659:
	movl	a3@(192),a2@+	|(calling error)
	|(calling concat)
	movl	a3@(184),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00658:
	subql	#4,a2
	moveml	a6@(-24),#L00657
	unlk	a6
	rts
L00657 = 15492
L00656 = 24
	.globl	F00661	|(fcn lambda filestat:uid)
F00661:
	link	a6,#-L00664
	tstb	sp@(-132)
	moveml	#L00665,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00662:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00667
	movl	a4@,a0
	moveq	#3,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00668
	jmp	vecindexerr
L00668:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,d0
	jra	L00666
L00667:
	movl	a3@(196),a2@+	|(calling error)
	|(calling concat)
	movl	a3@(184),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00666:
	subql	#4,a2
	moveml	a6@(-24),#L00665
	unlk	a6
	rts
L00665 = 15492
L00664 = 24
	.globl	F00669	|(fcn lambda filestat:gid)
F00669:
	link	a6,#-L00672
	tstb	sp@(-132)
	moveml	#L00673,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00670:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00675
	movl	a4@,a0
	moveq	#4,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00676
	jmp	vecindexerr
L00676:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,d0
	jra	L00674
L00675:
	movl	a3@(200),a2@+	|(calling error)
	|(calling concat)
	movl	a3@(184),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00674:
	subql	#4,a2
	moveml	a6@(-24),#L00673
	unlk	a6
	rts
L00673 = 15492
L00672 = 24
	.globl	F00677	|(fcn lambda filestat:size)
F00677:
	link	a6,#-L00680
	tstb	sp@(-132)
	moveml	#L00681,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00678:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00683
	movl	a4@,a0
	moveq	#5,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00684
	jmp	vecindexerr
L00684:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,d0
	jra	L00682
L00683:
	movl	a3@(204),a2@+	|(calling error)
	|(calling concat)
	movl	a3@(184),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00682:
	subql	#4,a2
	moveml	a6@(-24),#L00681
	unlk	a6
	rts
L00681 = 15492
L00680 = 24
	.globl	F00685	|(fcn lambda filestat:atime)
F00685:
	link	a6,#-L00688
	tstb	sp@(-132)
	moveml	#L00689,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00686:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00691
	movl	a4@,a0
	moveq	#6,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00692
	jmp	vecindexerr
L00692:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,d0
	jra	L00690
L00691:
	movl	a3@(208),a2@+	|(calling error)
	|(calling concat)
	movl	a3@(184),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00690:
	subql	#4,a2
	moveml	a6@(-24),#L00689
	unlk	a6
	rts
L00689 = 15492
L00688 = 24
	.globl	F00693	|(fcn lambda filestat:mtime)
F00693:
	link	a6,#-L00696
	tstb	sp@(-132)
	moveml	#L00697,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00694:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00699
	movl	a4@,a0
	moveq	#7,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00700
	jmp	vecindexerr
L00700:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,d0
	jra	L00698
L00699:
	movl	a3@(212),a2@+	|(calling error)
	|(calling concat)
	movl	a3@(184),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00698:
	subql	#4,a2
	moveml	a6@(-24),#L00697
	unlk	a6
	rts
L00697 = 15492
L00696 = 24
	.globl	F00701	|(fcn lambda filestat:ctime)
F00701:
	link	a6,#-L00704
	tstb	sp@(-132)
	moveml	#L00705,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00702:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00707
	movl	a4@,a0
	moveq	#8,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00708
	jmp	vecindexerr
L00708:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,d0
	jra	L00706
L00707:
	movl	a3@(216),a2@+	|(calling error)
	|(calling concat)
	movl	a3@(184),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00706:
	subql	#4,a2
	moveml	a6@(-24),#L00705
	unlk	a6
	rts
L00705 = 15492
L00704 = 24
	.globl	F00709	|(fcn lambda filestat:dev)
F00709:
	link	a6,#-L00712
	tstb	sp@(-132)
	moveml	#L00713,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00710:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00715
	movl	a4@,a0
	moveq	#9,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00716
	jmp	vecindexerr
L00716:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,d0
	jra	L00714
L00715:
	movl	a3@(220),a2@+	|(calling error)
	|(calling concat)
	movl	a3@(184),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00714:
	subql	#4,a2
	moveml	a6@(-24),#L00713
	unlk	a6
	rts
L00713 = 15492
L00712 = 24
	.globl	F00717	|(fcn lambda filestat:rdev)
F00717:
	link	a6,#-L00720
	tstb	sp@(-132)
	moveml	#L00721,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00718:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00723
	movl	a4@,a0
	moveq	#10,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00724
	jmp	vecindexerr
L00724:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,d0
	jra	L00722
L00723:
	movl	a3@(224),a2@+	|(calling error)
	|(calling concat)
	movl	a3@(184),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00722:
	subql	#4,a2
	moveml	a6@(-24),#L00721
	unlk	a6
	rts
L00721 = 15492
L00720 = 24
	.globl	F00725	|(fcn lambda filestat:ino)
F00725:
	link	a6,#-L00728
	tstb	sp@(-132)
	moveml	#L00729,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00726:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00731
	movl	a4@,a0
	moveq	#11,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00732
	jmp	vecindexerr
L00732:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,d0
	jra	L00730
L00731:
	movl	a3@(228),a2@+	|(calling error)
	|(calling concat)
	movl	a3@(184),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00730:
	subql	#4,a2
	moveml	a6@(-24),#L00729
	unlk	a6
	rts
L00729 = 15492
L00728 = 24
	.globl	F00733	|(fcn nlambda showstack)
F00733:
	link	a6,#-L00736
	tstb	sp@(-132)
	moveml	#L00737,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00734:
	movl	a4@,a2@+	|(calling showstack-baktrace)
	movl	a3@,a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+248,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#4,a2
	moveml	a6@(-20),#L00737
	unlk	a6
	rts
L00737 = 15488
L00736 = 20
	.globl	F00738	|(fcn nlambda baktrace)
F00738:
	link	a6,#-L00741
	tstb	sp@(-132)
	moveml	#L00742,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00739:
	movl	a4@,a2@+	|(calling showstack-baktrace)
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+248,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#4,a2
	moveml	a6@(-20),#L00742
	unlk	a6
	rts
L00742 = 15488
L00741 = 20
	.globl	F00743	|(fcn lambda showstack-baktrace)
F00743:
	link	a6,#-L00746
	tstb	sp@(-132)
	moveml	#L00747,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00744:
	movl	d7,a2@+
	movl	#_nilatom+0x1400-4,a2@+
	movl	a3@(232),a5
	movl	a5@,a2@+
	movl	a3@(236),a5
	movl	a5@,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	_bnp,a1
	movl	a3@(240),a5
	movl	a5@,a1@+
	movl	a3@(240),a1@+
	movl	a3@(240),a5
	movl	a4@(20),a5@
	movl	a3@(244),a5
	movl	a5@,a1@+
	movl	a3@(244),a1@+
	movl	a3@(244),a5
	movl	a4@(16),a5@
	movl	a1,_bnp
	movl	a4@,a2@+	|(beginning do)
L00748:
	cmpl	a4@(40),d7
	jne	L00749
	movl	d7,d0
	jra	L00750
L00749:
	movl	a3@,a5
	movl	a5@,a2@+
	movl	a4@(40),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00752
	movl	a3@,a5
	movl	a5@,a4@(8)
	jra	L00751
L00752:
	movl	a4@(40),a0
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
	jeq	L00753
	movl	a4@(40),a1
	movl	a1@(4),a4@(12)
	jra	L00751
L00753:
	movl	a3@(248),a2@+
	movl	a4@(40),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00756
	movl	a4@(40),a5
	movl	a5@,a4@(40)
	movl	a4@(40),a0
	movl	a3@(244),a5
	movl	a0@(4),a5@
	jra	L00751
L00756:
	movl	a3@(252),a2@+
	movl	a4@(40),a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00757
	movl	a4@(40),a5
	movl	a5@,a4@(40)
	movl	a4@(40),a1
	movl	a3@(240),a5
	movl	a1@(4),a5@
	jra	L00751
L00757:
	movl	d7,d0
L00751:
	movl	a4@(40),a5
	movl	a5@,a4@(40)
	jra	L00748
L00750:
	subql	#4,a2	|(beginning do)
	movl	a4@(12),a2@+
	movl	a3@,a5
	movl	a5@,a2@+
L00758:
	movl	#_nilatom+0x1400+0,a2@+
	movl	a4@(36),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00762
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00763
	jra	L00764
L00762:
	subql	#8,a2
L00763:
	jra	L00761
L00764:
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@(40),d6
	jne	L00759
	movl	a4@(40),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L00759
L00761:
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00760
L00759:
	movl	a4@(36),a2@+	|(calling int:showstack)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+256,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(24)
	cmpl	a4@(24),d7
	jne	L00767
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d7,d0
	jra	L00760
|	jra	L00766
L00767:
	movl	d7,d0
L00766:
	movl	a4@(24),a5
	movl	a5@,a4@(36)
	movl	a4@(24),a1
	movl	a1@(4),a4@(24)
	cmpl	a4@(8),d7
	jne	L00770
	movl	a4@(24),a2@+	|(calling trace-funp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+264,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00769
L00770:
	cmpl	a4@(32),d7
	jeq	L00772
	cmpl	a4@(4),d7
	jeq	L00772
	movl	a3@(256),a2@+	|(calling subst-eq)
	movl	a4@(32),a2@+
	movl	a4@(24),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+272,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a4@(28)
	jra	L00771
L00772:
	movl	a4@(24),a4@(28)
L00771:
	cmpl	a4@(4),d7
	jeq	L00775
	movl	a3@(260),a5
	movl	a5@,a2@+
	movl	a4@(28),a2@+
	movl	a4@(48),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00777
	movl	a4@(48),a1
	cmpl	a1@(8),d7
	jeq	L00777
	movl	a4@(48),a1
	movl	a1@(8),a4@(48)
	cmpl	a1@(8),d7
	jra	L00776
L00777:
	movl	d7,d0
L00776:
	movl	a4@(48),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00780
	movl	a3@(116),a2@+
	movl	a4@(48),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00780
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-8),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00779
L00780:
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00779:
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00774
L00775:
	movl	a4@(28),a2@+	|(calling baktraceprint)
	movl	a4@(44),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+280,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00774:
	cmpl	#_nilatom+0x1400-4096,a4@(40)
	jle	L00782
	cmpl	#_nilatom+0x1400+4092,a4@(40)
	jle	L00783
L00782:
	movl	a4@(40),a0
	jbsr	_qoneminus
	movl	d0,a4@(40)
	jra	L00784
L00783:
	movl	a4@(40),d0
	subql	#4,d0
	movl	d0,a4@(40)
L00784:
	movl	a4@(24),a4@(32)
	jra	L00768
L00769:
	movl	d7,d0
L00768:
	movl	d7,a4@(44)
	jra	L00758
L00760:
	subql	#8,a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1,_bnp
	subl	#16,_bnp
	subl	#40,a2
	moveml	a6@(-24),#L00747
	unlk	a6
	rts
L00747 = 15552
L00746 = 24
	.globl	F00785	|(fcn lambda baktraceprint)
F00785:
	link	a6,#-L00788
	tstb	sp@(-132)
	moveml	#L00789,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00786:
	cmpl	a4@(4),d7
	jne	L00791
	movl	a3@(264),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00790
L00791:
	movl	d7,d0
L00790:
	lea	a2@,a5	|(calling nwritn)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a0
	movl	a0@,d0
	cmpl	#65,d0
	jle	L00793
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00792
L00793:
	movl	d7,d0
L00792:
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
	jeq	L00795
	movl	a4@,a2@+	|(calling print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+288,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00794
L00795:
	movl	#_nilatom+0x1400+4,a2@+
	movl	#_nilatom+0x1400+8,a2@+
	movl	_bnp,a1
	movl	a3@(240),a5
	movl	a5@,a1@+
	movl	a3@(240),a1@+
	movl	a3@(240),a5
	movl	a4@(12),a5@
	movl	a3@(244),a5
	movl	a5@,a1@+
	movl	a3@(244),a1@+
	movl	a3@(244),a5
	movl	a4@(8),a5@
	movl	a1,_bnp
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00799
	movl	a4@,a1	|(calling print)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+288,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00798
L00799:
	movl	a4@,a2@+	|(calling print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+288,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00798:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1,_bnp
	subl	#16,_bnp
	subql	#8,a2
L00794:
	subql	#8,a2
	moveml	a6@(-20),#L00789
	unlk	a6
	rts
L00789 = 15488
L00788 = 20
	.globl	F00800	|(fcn lambda trace-funp)
F00800:
	link	a6,#-L00803
	tstb	sp@(-132)
	moveml	#L00804,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00801:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00806
	movl	a4@,d5
	movl	a3@(268),d0
	cmpl	d0,d7
	jeq	L00808
	movl	d0,a0
L00809:
	cmpl	a0@(4),d5
	jeq	L00807
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00809
	movl	a0,d0
L00808:
	movl	d0,d0
	jra	L00810
L00807:
	movl	a0,d0
	jra	L00805
L00810:
	jra	L00811
L00806:
	movl	d7,d0
L00811:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00812
	movl	a4@,a1
	movl	a1@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00814
	movl	a4@,a0
	movl	a0@(4),d5
	movl	a3@(272),d0
	cmpl	d0,d7
	jeq	L00816
	movl	d0,a0
L00817:
	cmpl	a0@(4),d5
	jeq	L00815
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00817
	movl	a0,d0
L00816:
	movl	d0,d0
	jra	L00818
L00815:
	movl	a0,d0
L00818:
	jra	L00813
L00814:
	movl	a4@,a0
	movl	a0@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00819
	movl	a3@(116),a2@+
	movl	a4@,a1
	movl	a1@(4),a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00820
	movl	a3@(276),a2@+
	movl	a4@,a1
	movl	a1@(4),a5
	movl	a5@,a0
	movl	a0@(4),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jeq	L00821
	movl	d7,d0
	jra	L00822
L00821:
	movl	a3@,d0
L00822:
	jra	L00823
L00820:
	movl	d7,d0
L00823:
	jra	L00813
L00819:
	movl	d7,d0
L00813:
	jra	L00824
L00812:
	movl	d7,d0
L00824:
	jra	L00825
L00805:
	movl	d0,d0
L00825:
	subql	#4,a2
	moveml	a6@(-28),#L00804
	unlk	a6
	rts
L00804 = 15584
L00803 = 28
	.globl	F00826	|(fcn lambda subst-eq)
F00826:
	link	a6,#-L00829
	tstb	sp@(-132)
	moveml	#L00830,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00827:
	movl	a4@(4),d6
	cmpl	a4@(8),d6
	jne	L00832
	movl	a4@,d0
	jra	L00831
L00832:
	movl	a4@(8),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00833
	movl	a4@(4),a2@+	|(calling subst-eqp)
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+296,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00833
	movl	a4@(4),a2@+
	movl	a4@(8),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00836
	movl	a4@,a2@+
	movl	a4@,a2@+	|(calling subst-eq)
	movl	a4@(4),a2@+
	movl	a4@(8),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+272,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00835
L00836:
	movl	a4@(8),a0
	movl	a0@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00837
	movl	a4@,a2@+	|(calling subst-eq)
	movl	a4@(4),a2@+
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+272,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	movl	a4@,a2@+	|(calling subst-eq)
	movl	a4@(4),a2@+
	movl	a4@(8),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+272,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00835
L00837:
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	a4@,a2@+	|(calling subst-eq)
	movl	a4@(4),a2@+
	movl	a4@(8),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+272,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	jbsr	_qcons
L00835:
	jra	L00831
L00833:
	movl	a4@(8),d0
L00831:
	subl	#12,a2
	moveml	a6@(-24),#L00830
	unlk	a6
	rts
L00830 = 15552
L00829 = 24
	.globl	F00838	|(fcn lambda subst-eqp)
F00838:
	link	a6,#-L00841
	tstb	sp@(-132)
	moveml	#L00842,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00839:
	movl	a4@,d6
	cmpl	a4@(4),d6
	jne	L00844
	movl	a3@,a5
	movl	a5@,d0
	jra	L00843
L00844:
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00845
	movl	a4@,a2@+	|(calling subst-eqp)
	movl	a4@(4),a1
	movl	a1@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+296,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00846
	movl	a4@,a2@+	|(calling subst-eqp)
	movl	a4@(4),a5
	movl	a5@,a2@+
	movl	_lbot,a5
	movl	a4,a5
	movl	a2@(-8),a5@
	movl	a2@(-4),a5@(4)
	movl	a5,a2
	addql	#8,a2
	jra	L00839
|	jra	L00847
L00846:
	movl	d0,d0
L00847:
	jra	L00843
L00845:
	movl	d7,d0
L00843:
	subql	#8,a2
	moveml	a6@(-24),#L00842
	unlk	a6
	rts
L00842 = 15552
L00841 = 24
	.globl	F00848	|(fcn macro environment)
F00848:
	link	a6,#-L00851
	tstb	sp@(-132)
	moveml	#L00852,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00849:
	movl	a4@,a5
	movl	a5@,a2@+
	movl	a4@(4),a2@+	|(beginning do)
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
L00853:
	cmpl	a4@(8),d7
	jne	L00854
	movl	a3@(4),a2@+
	movl	a3@(280),a2@+
	movl	a4@(20),a2@+	|(calling append)
	|(calling nreverse)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00855
L00854:
	movl	a4@(8),a1
	movl	a1@(4),a4@(12)
	movl	a4@(8),a5
	movl	a5@,a0
	movl	a0@(4),a4@(16)
	movl	a4@(12),d0
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
	jeq	L00857
	movl	a4@(12),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	jra	L00856
L00857:
	movl	d7,d0
L00856:
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00861
	movl	a4@(16),a1
	movl	a1@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00861
	movl	a3@(284),a2@+	|(calling concat)
	movl	a4@(16),a1
	movl	a1@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@(16),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	jra	L00860
L00861:
	movl	d7,d0
L00860:
	movl	a3@(288),a2@+
	movl	a4@(12),a2@+
	movl	a4@(16),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(20),a2@+
	jbsr	_qcons
	movl	d0,a4@(20)
	movl	a4@(8),a5
	movl	a5@,a1
	movl	a1@,a4@(8)
	jra	L00853
L00855:
	subl	#24,a2
	moveml	a6@(-20),#L00852
	unlk	a6
	rts
L00852 = 15488
L00851 = 20
	.globl	F00863	|(fcn nlambda environment-files)
F00863:
	link	a6,#-L00866
	tstb	sp@(-132)
	moveml	#L00867,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00864:
	movl	d7,a2@+
	movl	a4@,a4@(4)	|(beginning do)
	movl	a4@(4),a2@+
L00870:
	cmpl	a4@(8),d7
	jne	L00871
	movl	d7,d0
	jra	L00872
L00871:
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	a4@(12),a2@+
	movl	a3@(292),a2@+
	jbsr	_qget
	cmpl	d0,d7
	jne	L00874
	movl	a4@(12),a2@+	|(calling load)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+304,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00873
L00874:
	movl	d7,d0
L00873:
	subql	#4,a2
	movl	a4@(8),a5
	movl	a5@,a4@(8)
	jra	L00870
L00872:
	subql	#4,a2
	movl	a4@(4),d0
	subql	#8,a2
	moveml	a6@(-20),#L00867
	unlk	a6
	rts
L00867 = 15488
L00866 = 20
	.globl	F00875	|(fcn nlambda environment-syntax)
F00875:
	link	a6,#-L00878
	tstb	sp@(-132)
	moveml	#L00879,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00876:
	movl	d7,a2@+
	movl	a4@,a4@(4)	|(beginning do)
	movl	a4@(4),a2@+
L00882:
	cmpl	a4@(8),d7
	jne	L00883
	movl	d7,d0
	jra	L00884
L00883:
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	a4@(12),d6
	cmpl	a3@(296),d6
	jne	L00886
	lea	a2@,a5	|(calling cvttomaclisp)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00885
L00886:
	movl	a4@(12),d6
	cmpl	a3@(300),d6
	jne	L00887
	lea	a2@,a5	|(calling cvttointlisp)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+320,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00885
L00887:
	movl	a4@(12),d6
	cmpl	a3@(304),d6
	jne	L00888
	lea	a2@,a5	|(calling cvttoucilisp)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+328,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00885
L00888:
	movl	a4@(12),d5
	movl	a3@(308),d0
	cmpl	d0,d7
	jeq	L00889
	movl	d0,a0
L00891:
	cmpl	a0@(4),d5
	jeq	L00890
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00891
	movl	a0,d0
	jra	L00889
L00890:
	lea	a2@,a5	|(calling cvttofranzlisp)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+336,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00885
L00889:
	movl	a3@(312),a2@+	|(calling error)
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00885:
	subql	#4,a2
	movl	a4@(8),a5
	movl	a5@,a4@(8)
	jra	L00882
L00884:
	subql	#4,a2
	movl	a4@(4),d0
	subql	#8,a2
	moveml	a6@(-28),#L00879
	unlk	a6
	rts
L00879 = 15584
L00878 = 28
	.globl	F00892	|(fcn macro environment-maclisp)
F00892:
	link	a6,#-L00895
	tstb	sp@(-132)
	moveml	#L00896,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00893:
	movl	a4@,a5
	movl	a5@,a2@+
	movl	a3@(316),a2@+
	movl	a3@(320),a2@+
	movl	a3@(324),a2@+
	movl	a3@(328),a2@+
	movl	a3@(332),a2@+
	movl	a4@(4),a2@+	|(calling append)
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-8),a2
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
	subql	#8,a2
	moveml	a6@(-20),#L00896
	unlk	a6
	rts
L00896 = 15488
L00895 = 20
	.globl	F00897	|(fcn macro environment-lmlisp)
F00897:
	link	a6,#-L00900
	tstb	sp@(-132)
	moveml	#L00901,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00898:
	movl	a4@,a5
	movl	a5@,a2@+
	movl	a3@(316),a2@+
	movl	a3@(336),a2@+
	movl	a3@(340),a2@+
	movl	a3@(344),a2@+
	movl	a3@(348),a2@+
	movl	a4@(4),a2@+	|(calling append)
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-8),a2
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
	subql	#8,a2
	moveml	a6@(-20),#L00901
	unlk	a6
	rts
L00901 = 15488
L00900 = 20
	.globl	F00902	|(fcn lambda infile)
F00902:
	link	a6,#-L00905
	tstb	sp@(-132)
	moveml	#L00906,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00903:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00908
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jeq	L00908
	movl	a3@(352),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00907
L00908:
	movl	d7,d0
L00907:
	movl	a3@(356),a5
	cmpl	a5@,d7
	jeq	L00911
	movl	a4@,a2@+	|(calling tilde-expand)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@
	jra	L00910
L00911:
	movl	d7,d0
L00910:
	movl	a4@,a2@+	|(calling int:infile)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+352,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	moveml	a6@(-20),#L00906
	unlk	a6
	rts
L00906 = 15488
L00905 = 20
	.globl	F00914	|(fcn lexpr outfile)
F00914:
	link	a6,#-L00917
	tstb	sp@(-132)
	moveml	#L00918,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00915:
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
	movl	#2,d6
	movl	a4@,a5
	cmpl	a5@,d6
	jle	L00922
	movl	d7,a4@(8)
	jra	L00921
L00922:
	movl	#_nilatom+0x1400+8,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(8)
L00921:
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00926
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jeq	L00926
	movl	a3@(360),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00925
L00926:
	movl	d7,d0
L00925:
	movl	a3@(356),a5
	cmpl	a5@,d7
	jeq	L00929
	movl	a4@(4),a2@+	|(calling tilde-expand)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(4)
	jra	L00928
L00929:
	movl	d7,d0
L00928:
	movl	a4@(4),a2@+	|(calling int:outfile)
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subl	#12,a2
	moveml	a6@(-24),#L00918
	unlk	a6
	rts
L00918 = 15552
L00917 = 24
	.globl	F00930	|(fcn lambda fileopen)
F00930:
	link	a6,#-L00933
	tstb	sp@(-132)
	moveml	#L00934,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00931:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00936
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jeq	L00936
	movl	a3@(364),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00935
L00936:
	movl	d7,d0
L00935:
	movl	a3@(356),a5
	cmpl	a5@,d7
	jeq	L00939
	movl	a4@,a2@+	|(calling tilde-expand)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@
	jra	L00938
L00939:
	movl	d7,d0
L00938:
	movl	a4@,a2@+	|(calling int:fileopen)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+368,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#8,a2
	moveml	a6@(-20),#L00934
	unlk	a6
	rts
L00934 = 15488
L00933 = 20
	.globl	F00944	|(fcn lexpr fasl)
F00944:
	link	a6,#-L00947
	tstb	sp@(-132)
	moveml	#L00948,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00945:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	#_nilatom+0x1400+4,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	movl	a4@,a2@+	|(beginning do)
	movl	d7,a2@+
L00951:
	movl	a4@(8),a5
	cmpl	#2,a5@
	jpl	L00952
	movl	a4@(12),d0
	jra	L00953
L00952:
	cmpl	#_nilatom+0x1400-4096,a4@(8)
	jle	L00954
	cmpl	#_nilatom+0x1400+4092,a4@(8)
	jle	L00955
L00954:
	movl	a4@(8),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00956
L00955:
	movl	a4@(8),d0
	subql	#4,d0
	movl	d0,a2@+
L00956:
	movl	a4@(8),d0
	cmpl	a4@(8),d7
	jeq	L00957
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00957
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00958
L00957:
	movl	a4@(-4),a2@+
L00958:
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	movl	a2@-,a4@(8)
	jra	L00951
L00953:
	subql	#8,a2
	movl	d0,a2@+
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00960
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jeq	L00960
	movl	a3@(368),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00959
L00960:
	movl	d7,d0
L00959:
	movl	a3@(356),a5
	cmpl	a5@,d7
	jeq	L00963
	movl	a4@(4),a2@+	|(calling tilde-expand)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(4)
	jra	L00962
L00963:
	movl	d7,d0
L00962:
	movl	a3@(372),a2@+	|(calling lexpr-funcall)
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+376,a5
	jbsr	a5@
	lea	a2@(-12),a2
	subl	#12,a2
	moveml	a6@(-20),#L00948
	unlk	a6
	rts
L00948 = 15488
L00947 = 20
	.globl	F00968	|(fcn lexpr cfasl)
F00968:
	link	a6,#-L00971
	tstb	sp@(-132)
	moveml	#L00972,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00969:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	#_nilatom+0x1400+4,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	movl	a4@,a2@+	|(beginning do)
	movl	d7,a2@+
L00975:
	movl	a4@(8),a5
	cmpl	#2,a5@
	jpl	L00976
	movl	a4@(12),d0
	jra	L00977
L00976:
	cmpl	#_nilatom+0x1400-4096,a4@(8)
	jle	L00978
	cmpl	#_nilatom+0x1400+4092,a4@(8)
	jle	L00979
L00978:
	movl	a4@(8),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00980
L00979:
	movl	a4@(8),d0
	subql	#4,d0
	movl	d0,a2@+
L00980:
	movl	a4@(8),d0
	cmpl	a4@(8),d7
	jeq	L00981
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00981
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00982
L00981:
	movl	a4@(-4),a2@+
L00982:
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	movl	a2@-,a4@(8)
	jra	L00975
L00977:
	subql	#8,a2
	movl	d0,a2@+
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00984
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jeq	L00984
	movl	a3@(376),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00983
L00984:
	movl	d7,d0
L00983:
	movl	a3@(356),a5
	cmpl	a5@,d7
	jeq	L00987
	movl	a4@(4),a2@+	|(calling tilde-expand)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(4)
	jra	L00986
L00987:
	movl	d7,d0
L00986:
	movl	a3@(380),a2@+	|(calling lexpr-funcall)
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+376,a5
	jbsr	a5@
	lea	a2@(-12),a2
	subl	#12,a2
	moveml	a6@(-20),#L00972
	unlk	a6
	rts
L00972 = 15488
L00971 = 20
	.globl	F00988	|(fcn lambda probef)
F00988:
	link	a6,#-L00991
	tstb	sp@(-132)
	moveml	#L00992,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00989:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00994
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jeq	L00994
	movl	a3@(384),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00993
L00994:
	movl	d7,d0
L00993:
	movl	a4@,a2@+	|(calling sys:access)
	movl	#_nilatom+0x1400+0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+384,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#4,a2
	moveml	a6@(-20),#L00992
	unlk	a6
	rts
L00992 = 15488
L00991 = 20
	.globl	F00996	|(fcn lambda username-to-dir)
F00996:
	link	a6,#-L00999
	tstb	sp@(-132)
	moveml	#L01000,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00997:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L01002
	movl	a4@,a2@+	|(calling get_pname)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+392,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@
	jra	L01001
L01002:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jeq	L01001
	movl	a3@(388),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L01001:
	movl	a4@,a2@+	|(calling assoc)
	movl	a3@(392),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+400,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	cmpl	a4@(4),d7
	jne	L01004
	movl	a4@,a2@+	|(calling sys:getpwnam)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+408,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(4)
	cmpl	a4@(4),d7
	jeq	L01006
	movl	a4@,a2@+
	movl	a4@(4),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(392),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	a3@(392),a5
	movl	d0,a5@
	jra	L01005
L01006:
	movl	d7,d0
L01005:
	jra	L01003
L01004:
	movl	a4@(4),a5
	movl	a5@,a4@(4)
L01003:
	cmpl	a4@(4),d7
	jeq	L01008
	movl	a4@(4),a2@+	|(calling sys:getpwnam-dir)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+416,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L01007
L01008:
	movl	d7,d0
L01007:
	subql	#8,a2
	moveml	a6@(-20),#L01000
	unlk	a6
	rts
L01000 = 15488
L00999 = 20
	.globl	F01009	|(fcn lambda username-to-dir-flush-cache)
F01009:
	link	a6,#-L01012
	tstb	sp@(-132)
	moveml	#L01013,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L01010:
	movl	a3@(392),a5
	movl	d7,a5@
	movl	a3@(392),a5
	movl	a5@,d0
	moveml	a6@(-20),#L01013
	unlk	a6
	rts
L01013 = 15488
L01012 = 20
	.globl	F01014	|(fcn lambda sys:getpwnam)
F01014:
	link	a6,#-L01017
	tstb	sp@(-132)
	moveml	#L01018,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L01015:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L01021
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jne	L01020
L01021:
	movl	#_nilatom+0x1400+4,a2@+	|(calling int:franz-call)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+424,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L01019
L01020:
	movl	a3@(396),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L01019:
	subql	#4,a2
	moveml	a6@(-20),#L01018
	unlk	a6
	rts
L01018 = 15488
L01017 = 20
	.globl	F01022	|(fcn lambda sys:getpwnam-dir)
F01022:
	link	a6,#-L01025
	tstb	sp@(-132)
	moveml	#L01026,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L01023:
	movl	a4@,a0
	moveq	#3,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L01027
	jmp	vecindexerr
L01027:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,d0
	subql	#4,a2
	moveml	a6@(-24),#L01026
	unlk	a6
	rts
L01026 = 15492
L01025 = 24
	.globl	F01028	|(fcn lambda sys:access)
F01028:
	link	a6,#-L01031
	tstb	sp@(-132)
	moveml	#L01032,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L01029:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L01036
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jne	L01034
L01036:
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
	jeq	L01034
	movl	a3@(356),a5
	cmpl	a5@,d7
	jeq	L01040
	movl	a4@,a2@+	|(calling tilde-expand)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@
	jra	L01039
L01040:
	movl	d7,d0
L01039:
	movl	#_nilatom+0x1400+8,a2@+	|(calling int:franz-call)
	movl	a4@,a2@+
	movl	a4@(4),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+424,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@(8),d6
	jne	L01042
	movl	a4@(8),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L01043
	movl	a3@,d0
	jra	L01044
L01043:
	movl	d7,d0
L01044:
	jra	L01045
L01042:
	movl	d7,d0
L01045:
	subql	#4,a2
	jra	L01033
L01034:
	movl	a3@(400),a2@+	|(calling error)
	movl	a4@,a2@+
	movl	a4@(4),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-12),a2
L01033:
	subql	#8,a2
	moveml	a6@(-24),#L01032
	unlk	a6
	rts
L01032 = 15552
L01031 = 24
	.globl	F01046	|(fcn lambda chdir)
F01046:
	link	a6,#-L01049
	tstb	sp@(-132)
	moveml	#L01050,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L01047:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L01053
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jne	L01052
L01053:
	movl	a3@(356),a5
	cmpl	a5@,d7
	jeq	L01055
	movl	a4@,a2@+	|(calling tilde-expand)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@
	jra	L01054
L01055:
	movl	d7,d0
L01054:
	movl	#_nilatom+0x1400+12,a2@+	|(calling int:franz-call)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+424,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@(4),d6
	jne	L01058
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L01059
	movl	a3@,d0
	jra	L01060
L01059:
	movl	d7,d0
L01060:
	jra	L01061
L01058:
	movl	d7,d0
L01061:
	subql	#4,a2
	cmpl	d0,d7
	jne	L01056
	movl	a3@(404),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L01056:
	jra	L01051
L01052:
	movl	a3@(408),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L01051:
	subql	#4,a2
	moveml	a6@(-24),#L01050
	unlk	a6
	rts
L01050 = 15552
L01049 = 24
	.globl	F01062	|(fcn lambda sys:unlink)
F01062:
	link	a6,#-L01065
	tstb	sp@(-132)
	moveml	#L01066,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L01063:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L01069
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jne	L01068
L01069:
	movl	a3@(356),a5
	cmpl	a5@,d7
	jeq	L01071
	movl	a4@,a2@+	|(calling tilde-expand)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@
	jra	L01070
L01071:
	movl	d7,d0
L01070:
	movl	#_nilatom+0x1400+16,a2@+	|(calling int:franz-call)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+424,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@(4),d6
	jne	L01074
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L01075
	movl	a3@,d0
	jra	L01076
L01075:
	movl	d7,d0
L01076:
	jra	L01077
L01074:
	movl	d7,d0
L01077:
	subql	#4,a2
	cmpl	d0,d7
	jne	L01072
	movl	a3@(412),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L01072:
	jra	L01067
L01068:
	movl	a3@(416),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L01067:
	subql	#4,a2
	moveml	a6@(-24),#L01066
	unlk	a6
	rts
L01066 = 15552
L01065 = 24
	.globl	F01078	|(fcn lambda sys:link)
F01078:
	link	a6,#-L01081
	tstb	sp@(-132)
	moveml	#L01082,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L01079:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L01085
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jne	L01084
L01085:
	movl	a3@(356),a5
	cmpl	a5@,d7
	jeq	L01087
	movl	a4@,a2@+	|(calling tilde-expand)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@
	jra	L01086
L01087:
	movl	d7,d0
L01086:
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L01090
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jne	L01089
L01090:
	movl	a3@(356),a5
	cmpl	a5@,d7
	jeq	L01092
	movl	a4@(4),a2@+	|(calling tilde-expand)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(4)
	jra	L01091
L01092:
	movl	d7,d0
L01091:
	movl	#_nilatom+0x1400+40,a2@+	|(calling int:franz-call)
	movl	a4@,a2@+
	movl	a4@(4),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+424,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@(8),d6
	jne	L01095
	movl	a4@(8),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L01096
	movl	a3@,d0
	jra	L01097
L01096:
	movl	d7,d0
L01097:
	jra	L01098
L01095:
	movl	d7,d0
L01098:
	subql	#4,a2
	cmpl	d0,d7
	jne	L01093
	movl	a3@(420),a2@+	|(calling error)
	movl	a4@,a2@+
	movl	a4@(4),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-12),a2
L01093:
	jra	L01088
L01089:
	movl	a3@(424),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L01088:
	jra	L01083
L01084:
	movl	a3@(428),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L01083:
	subql	#8,a2
	moveml	a6@(-24),#L01082
	unlk	a6
	rts
L01082 = 15552
L01081 = 24
	.globl	F01099	|(fcn lambda sys:time)
F01099:
	link	a6,#-L01102
	tstb	sp@(-132)
	moveml	#L01103,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L01100:
	movl	#_nilatom+0x1400+20,a2@+	|(calling int:franz-call)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+424,a5
	jbsr	a5@
	lea	a2@(-4),a2
	moveml	a6@(-20),#L01103
	unlk	a6
	rts
L01103 = 15488
L01102 = 20
	.globl	F01104	|(fcn lambda sys:chmod)
F01104:
	link	a6,#-L01107
	tstb	sp@(-132)
	moveml	#L01108,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L01105:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jeq	L01112
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L01110
L01112:
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
	jeq	L01110
	movl	a3@(356),a5
	cmpl	a5@,d7
	jeq	L01116
	movl	a4@,a2@+	|(calling tilde-expand)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@
	jra	L01115
L01116:
	movl	d7,d0
L01115:
	movl	#_nilatom+0x1400+24,a2@+	|(calling int:franz-call)
	movl	a4@,a2@+
	movl	a4@(4),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+424,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@(8),d6
	jne	L01119
	movl	a4@(8),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L01120
	movl	a3@,d0
	jra	L01121
L01120:
	movl	d7,d0
L01121:
	jra	L01122
L01119:
	movl	d7,d0
L01122:
	subql	#4,a2
	cmpl	d0,d7
	jne	L01117
	movl	a3@(432),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L01117:
	jra	L01109
L01110:
	movl	a3@(436),a2@+	|(calling error)
	movl	a4@,a2@+
	movl	a4@(4),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-12),a2
L01109:
	subql	#8,a2
	moveml	a6@(-24),#L01108
	unlk	a6
	rts
L01108 = 15552
L01107 = 24
	.globl	F01123	|(fcn lambda sys:getpid)
F01123:
	link	a6,#-L01126
	tstb	sp@(-132)
	moveml	#L01127,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L01124:
	movl	#_nilatom+0x1400+28,a2@+	|(calling int:franz-call)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+424,a5
	jbsr	a5@
	lea	a2@(-4),a2
	moveml	a6@(-20),#L01127
	unlk	a6
	rts
L01127 = 15488
L01126 = 20
	.globl	F01128	|(fcn lambda filestat)
F01128:
	link	a6,#-L01131
	tstb	sp@(-132)
	moveml	#L01132,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L01129:
	movl	d7,a2@+
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L01135
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jne	L01134
L01135:
	movl	a3@(356),a5
	cmpl	a5@,d7
	jeq	L01137
	movl	a4@,a2@+	|(calling tilde-expand)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@
	jra	L01136
L01137:
	movl	d7,d0
L01136:
	movl	#_nilatom+0x1400+32,a2@+	|(calling int:franz-call)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+424,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(4)
	cmpl	d0,d7
	jne	L01139
	movl	a3@(440),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L01138
L01139:
	movl	a4@(4),d0
L01138:
	jra	L01133
L01134:
	movl	a3@(444),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L01133:
	subql	#8,a2
	moveml	a6@(-20),#L01132
	unlk	a6
	rts
L01132 = 15488
L01131 = 20
	.globl	F01140	|(fcn lambda sys:gethostname)
F01140:
	link	a6,#-L01143
	tstb	sp@(-132)
	moveml	#L01144,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L01141:
	movl	#_nilatom+0x1400+36,a2@+	|(calling int:franz-call)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+424,a5
	jbsr	a5@
	lea	a2@(-4),a2
	moveml	a6@(-20),#L01144
	unlk	a6
	rts
L01144 = 15488
L01143 = 20
	.globl	F01145	|(fcn lambda sleep)
F01145:
	link	a6,#-L01148
	tstb	sp@(-132)
	moveml	#L01149,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L01146:
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
	andw	#516,d0
	jeq	L01151
	movl	#_nilatom+0x1400+44,a2@+	|(calling int:franz-call)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+424,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L01150
L01151:
	movl	a3@(448),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L01150:
	subql	#4,a2
	moveml	a6@(-20),#L01149
	unlk	a6
	rts
L01149 = 15488
L01148 = 20
	.globl	F01154	|(fcn lambda sys:nice)
F01154:
	link	a6,#-L01157
	tstb	sp@(-132)
	moveml	#L01158,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L01155:
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
	andw	#516,d0
	jeq	L01160
	movl	#_nilatom+0x1400+48,a2@+	|(calling int:franz-call)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+424,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L01159
L01160:
	movl	a3@(452),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L01159:
	subql	#4,a2
	moveml	a6@(-20),#L01158
	unlk	a6
	rts
L01158 = 15488
L01157 = 20
bind_org:
	linker_size = 	114
	trans_size = 	54
	.long	99
	.long	99
	.long	0
	.long	99
	.long	0
	.long	99
	.long	1
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
	.long	1
	.long	99
	.long	0
	.long	99
	.long	0
	.long	99
	.long	2
	.long	99
	.long	99
	.long	99
	.long	0
	.long	99
	.long	2
	.long	99
	.long	99
	.long	99
	.long	0
	.long	99
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
	.long	0
	.long	99
	.long	0
	.long	99
	.long	2
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
	.long	0
	.long	99
	.long	0
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	1
	.long	99
	.long	1
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
	.long	2
	.long	99
	.long	1
	.long	99
	.long	1
	.long	99
	.long	2
	.long	99
	.long	2
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
	.long -1
lit_org:
.asciz "t"
.asciz "progn"
.asciz "N"
.asciz "msg-tyo-char"
.asciz "10"
.asciz "B"
.asciz "32"
.asciz "T"
.asciz "9"
.asciz "P"
.asciz "C"
.asciz "tab"
.asciz "\\1-"
.asciz "msg-print"
.asciz "terpr"
.asciz "tyo"
.asciz "D"
.asciz "(drain)"
.ascii "(0 \"\" 1 \" \" 2 \"  \" 3 \"   \" 4 \"    \" 5 \"     \" 6 \"      \" 7 \""
.asciz "       \" 8 \"        \")"
.asciz "\" \""
.asciz "linel"
.asciz "\"Non fixnum first argument to nthcdr \""
.ascii "((1 . cdr) (2 . cddr) (3 . cdddr) (4 . cddddr) (5 . cdddddr)"
.asciz " (6 . cddddddr))"
.asciz "nthcdr"
.asciz "car"
.asciz "$outport$"
.asciz "\"An atom can't be attached to \""
.asciz "\"an atom, can't be inserted into\""
.asciz "alphalessp"
.asciz "lambda"
.asciz "quote"
.asciz "\"not a tail - ldiff\""
.asciz "%%cfn"
.asciz "not"
.asciz "eq"
.asciz "!"
.asciz "cons"
.asciz "!!"
.asciz "append"
.asciz "(nil)"
.asciz "(nil)"
.asciz "\"vector index out of range detected in compiled code \""
.asciz "\"`~a' expects ~r argument~p but was given ~@d:\""
.asciz "\"`~a' expects at least ~r argument~p but was given ~@d:\""
.ascii "\"`~a' expects between ~r and ~r arguments but was given ~@d:"
.asciz "\""
.asciz "filestat:mode"
.asciz ":\\ bad\\ arg\\ "
.asciz "filestat:type"
.asciz "filestat:nlink"
.asciz "filestat:uid"
.asciz "filestat:gid"
.asciz "filestat:size"
.asciz "filestat:atime"
.asciz "filestat:mtime"
.asciz "filestat:ctime"
.asciz "filestat:dev"
.asciz "filestat:rdev"
.asciz "filestat:ino"
.asciz "showstack-prinlevel"
.asciz "showstack-prinlength"
.asciz "prinlength"
.asciz "prinlevel"
.asciz "lev"
.asciz "len"
.asciz "<**>"
.asciz "showstack-printer"
.asciz "\" -- \""
.ascii "(T-eval T-apply T-setq eval int:showstack showstack-baktrace"
.asciz ")"
.asciz "(trace-break T-cond T-eval T-setq T-apply)"
.asciz "T-arglst"
.asciz "(quote compile)"
.asciz "\"environment-\""
.asciz "eval-when"
.asciz "version"
.asciz "maclisp"
.asciz "intlisp"
.asciz "ucilisp"
.asciz "(franz franzlisp)"
.asciz "\"unknown syntax conversion type \""
.asciz "environment"
.asciz "(compile load eval)"
.asciz "(files machacks)"
.asciz "(compile eval)"
.asciz "(syntax maclisp)"
.asciz "(compile load eval)"
.asciz "(files machacks lmhacks)"
.asciz "(compile eval)"
.asciz "(syntax maclisp)"
.asciz "\"infile: non symbol or string filename \""
.asciz "tilde-expansion"
.asciz "\"outfile: non symbol or string filename \""
.asciz "\"fileopen: non symbol or string filename \""
.asciz "\"fasl: non symbol or string filename \""
.asciz "int:fasl"
.asciz "\"cfasl: non symbol or string filename \""
.asciz "int:cfasl"
.asciz "\"probef: non symbol or string filename \""
.asciz "\"username-to-dir: Illegal name \""
.asciz "user-name-to-dir-cache"
.asciz "\"sys:getpwnam : illegal name \""
.asciz "\"sys:access : illegal name or class \""
.asciz "\"cd: can't chdir to \""
.asciz "\"chdir: illegal argument \""
.asciz "\"sys:unlink : unlink failed of \""
.asciz "\"sys:unlink : illegal argument \""
.asciz "\"sys:link : unlink failed of \""
.asciz "\"sys:unlink : illegal argument \""
.asciz "\"sys:unlink : illegal argument \""
.asciz "\"sys:chmod : chmod failed of \""
.asciz "\"sys:chmod : illegal argument(s): \""
.asciz "\"filestat : file doesn't exist \""
.asciz "\"filestat : illegal argument \""
.asciz "\"sleep: non-fixnum argument \""
.asciz "\"sys:nice: non-fixnum argument \""
.asciz "*process"
.asciz "set"
.asciz "nreverse"
.asciz "append"
.asciz "nconc"
.asciz "terpr"
.asciz "tyo"
.asciz "patom"
.asciz "nwritn"
.asciz "error"
.asciz "nthcdr"
.asciz "terpri"
.asciz "printblanks"
.asciz "copy"
.asciz "equal"
.asciz "dsubst"
.asciz "member"
.asciz "length"
.asciz "add1"
.asciz "/"
.asciz "Cnth"
.asciz "funcall"
.asciz "sub1"
.asciz "last"
.asciz "lsubst"
.asciz "merge1"
.asciz "quote!-expr-mac"
.asciz "subpr"
.asciz "format"
.asciz "int:vector-range-error"
.asciz "concat"
.asciz "showstack-baktrace"
.asciz "int:showstack"
.asciz "trace-funp"
.asciz "subst-eq"
.asciz "baktraceprint"
.asciz "print"
.asciz "subst-eqp"
.asciz "load"
.asciz "cvttomaclisp"
.asciz "cvttointlisp"
.asciz "cvttoucilisp"
.asciz "cvttofranzlisp"
.asciz "tilde-expand"
.asciz "int:infile"
.asciz "int:outfile"
.asciz "int:fileopen"
.asciz "lexpr-funcall"
.asciz "sys:access"
.asciz "get_pname"
.asciz "assoc"
.asciz "sys:getpwnam"
.asciz "sys:getpwnam-dir"
.asciz "int:franz-call"
.ascii "(setq fcn-in-common2.l \"common2.l compiled by Liszt 68000 ve"
.asciz "rsion 8.39a on Fri Dec 15 18:49:41 1989\")"
.ascii "(setq rcs-common2- \"$Header: common2.l,v 1.10 84/02/29 19:32"
.asciz ":00 jkf Exp $\")"
.asciz "*process-send"
.ascii "(putprop (quote *process-send) (list (quote (1 . 1)) fcn-in-"
.asciz "common2.l) (quote fcn-info))"
.asciz "*process-receive"
.ascii "(putprop (quote *process-receive) (list (quote (1 . 1)) fcn-"
.asciz "in-common2.l) (quote fcn-info))"
.asciz "process"
.ascii "(putprop (quote process) (list (quote (1 . 3)) fcn-in-common"
.asciz "2.l) (quote fcn-info))"
.asciz "msg"
.ascii "(putprop (quote msg) (list (quote nil) fcn-in-common2.l) (qu"
.asciz "ote fcn-info))"
.asciz "msg-tyo-char"
.ascii "(putprop (quote msg-tyo-char) (list (quote (2 . 3)) fcn-in-c"
.asciz "ommon2.l) (quote fcn-info))"
.asciz "msg-print"
.ascii "(putprop (quote msg-print) (list (quote (1 . 2)) fcn-in-comm"
.asciz "on2.l) (quote fcn-info))"
.asciz "printblanks"
.ascii "(putprop (quote printblanks) (list (quote (2 . 2)) fcn-in-co"
.asciz "mmon2.l) (quote fcn-info))"
.asciz "(setq linel 80)"
.asciz "linelength"
.ascii "(putprop (quote linelength) (list (quote nil) fcn-in-common2"
.asciz ".l) (quote fcn-info))"
.asciz "charcnt"
.ascii "(putprop (quote charcnt) (list (quote (1 . 1)) fcn-in-common"
.asciz "2.l) (quote fcn-info))"
.asciz "nthcdr"
.ascii "(putprop (quote nthcdr) (list (quote (2 . 2)) fcn-in-common2"
.asciz ".l) (quote fcn-info))"
.asciz "nthcdr::cmacro:g00211"
.ascii "(putprop (quote nthcdr::cmacro:g00211) (list (quote nil) fcn"
.asciz "-in-common2.l) (quote fcn-info))"
.ascii "(putprop (quote nthcdr) (getd (quote nthcdr::cmacro:g00211))"
.asciz " (quote cmacro))"
.asciz "(remob (quote nthcdr::cmacro:g00211))"
.asciz "nth"
.ascii "(putprop (quote nth) (list (quote (2 . 2)) fcn-in-common2.l)"
.asciz " (quote fcn-info))"
.asciz "nth::cmacro:g00234"
.ascii "(putprop (quote nth::cmacro:g00234) (list (quote nil) fcn-in"
.asciz "-common2.l) (quote fcn-info))"
.ascii "(putprop (quote nth) (getd (quote nth::cmacro:g00234)) (quot"
.asciz "e cmacro))"
.asciz "(remob (quote nth::cmacro:g00234))"
.asciz "listp"
.ascii "(putprop (quote listp) (list (quote (1 . 1)) fcn-in-common2."
.asciz "l) (quote fcn-info))"
.ascii "(quote (def apply* (nlambda ($x$) (eval (cons (eval (car $x$"
.asciz ")) (cdr $x$))))))"
.asciz "(putd (quote apply*) (getd (quote funcall)))"
.asciz "remq"
.ascii "(putprop (quote remq) (list (quote (2 . 3)) fcn-in-common2.l"
.asciz ") (quote fcn-info))"
.asciz "tab"
.ascii "(putprop (quote tab) (list (quote nil) fcn-in-common2.l) (qu"
.asciz "ote fcn-info))"
.asciz "charcnt"
.ascii "(putprop (quote charcnt) (list (quote (1 . 1)) fcn-in-common"
.asciz "2.l) (quote fcn-info))"
.asciz "$patom1"
.ascii "(putprop (quote $patom1) (list (quote (1 . 1)) fcn-in-common"
.asciz "2.l) (quote fcn-info))"
.asciz "attach"
.ascii "(putprop (quote attach) (list (quote (2 . 2)) fcn-in-common2"
.asciz ".l) (quote fcn-info))"
.asciz "Cnth"
.ascii "(putprop (quote Cnth) (list (quote (2 . 2)) fcn-in-common2.l"
.asciz ") (quote fcn-info))"
.asciz "dsubst"
.ascii "(putprop (quote dsubst) (list (quote (3 . 3)) fcn-in-common2"
.asciz ".l) (quote fcn-info))"
.asciz "(putd (quote eqstr) (getd (quote equal)))"
.asciz "insert"
.ascii "(putprop (quote insert) (list (quote (4 . 4)) fcn-in-common2"
.asciz ".l) (quote fcn-info))"
.asciz "kwote"
.ascii "(putprop (quote kwote) (list (quote (1 . 1)) fcn-in-common2."
.asciz "l) (quote fcn-info))"
.asciz "lconc"
.ascii "(putprop (quote lconc) (list (quote (2 . 2)) fcn-in-common2."
.asciz "l) (quote fcn-info))"
.asciz "ldiff"
.ascii "(putprop (quote ldiff) (list (quote (2 . 2)) fcn-in-common2."
.asciz "l) (quote fcn-info))"
.asciz "lsubst"
.ascii "(putprop (quote lsubst) (list (quote (3 . 3)) fcn-in-common2"
.asciz ".l) (quote fcn-info))"
.asciz "merge"
.ascii "(putprop (quote merge) (list (quote (3 . 3)) fcn-in-common2."
.asciz "l) (quote fcn-info))"
.asciz "merge1"
.ascii "(putprop (quote merge1) (list (quote (2 . 2)) fcn-in-common2"
.asciz ".l) (quote fcn-info))"
.asciz "neq"
.ascii "(putprop (quote neq) (list (quote nil) fcn-in-common2.l) (qu"
.asciz "ote fcn-info))"
.asciz "(putd (quote nthchar) (getd (quote getchar)))"
.asciz "quote!"
.ascii "(putprop (quote quote!) (list (quote nil) fcn-in-common2.l) "
.asciz "(quote fcn-info))"
.asciz "quote!-expr-mac"
.ascii "(putprop (quote quote!-expr-mac) (list (quote (1 . 1)) fcn-i"
.asciz "n-common2.l) (quote fcn-info))"
.asciz "remove"
.ascii "(putprop (quote remove) (list (quote (2 . 3)) fcn-in-common2"
.asciz ".l) (quote fcn-info))"
.asciz "subpair"
.ascii "(putprop (quote subpair) (list (quote (3 . 3)) fcn-in-common"
.asciz "2.l) (quote fcn-info))"
.asciz "subpr"
.ascii "(putprop (quote subpr) (list (quote (3 . 3)) fcn-in-common2."
.asciz "l) (quote fcn-info))"
.asciz "tailp"
.ascii "(putprop (quote tailp) (list (quote (2 . 2)) fcn-in-common2."
.asciz "l) (quote fcn-info))"
.asciz "tconc"
.ascii "(putprop (quote tconc) (list (quote (2 . 2)) fcn-in-common2."
.asciz "l) (quote fcn-info))"
.asciz "int:vector-range-error"
.ascii "(putprop (quote int:vector-range-error) (list (quote (2 . 2)"
.asciz ") fcn-in-common2.l) (quote fcn-info))"
.asciz "int:wrong-number-of-args-error"
.ascii "(putprop (quote int:wrong-number-of-args-error) (list (quote"
.asciz " nil) fcn-in-common2.l) (quote fcn-info))"
.asciz "filestat:mode"
.ascii "(putprop (quote filestat:mode) (list (quote (1 . 1)) fcn-in-"
.asciz "common2.l) (quote fcn-info))"
.asciz "filestat:type"
.ascii "(putprop (quote filestat:type) (list (quote (1 . 1)) fcn-in-"
.asciz "common2.l) (quote fcn-info))"
.asciz "filestat:nlink"
.ascii "(putprop (quote filestat:nlink) (list (quote (1 . 1)) fcn-in"
.asciz "-common2.l) (quote fcn-info))"
.asciz "filestat:uid"
.ascii "(putprop (quote filestat:uid) (list (quote (1 . 1)) fcn-in-c"
.asciz "ommon2.l) (quote fcn-info))"
.asciz "filestat:gid"
.ascii "(putprop (quote filestat:gid) (list (quote (1 . 1)) fcn-in-c"
.asciz "ommon2.l) (quote fcn-info))"
.asciz "filestat:size"
.ascii "(putprop (quote filestat:size) (list (quote (1 . 1)) fcn-in-"
.asciz "common2.l) (quote fcn-info))"
.asciz "filestat:atime"
.ascii "(putprop (quote filestat:atime) (list (quote (1 . 1)) fcn-in"
.asciz "-common2.l) (quote fcn-info))"
.asciz "filestat:mtime"
.ascii "(putprop (quote filestat:mtime) (list (quote (1 . 1)) fcn-in"
.asciz "-common2.l) (quote fcn-info))"
.asciz "filestat:ctime"
.ascii "(putprop (quote filestat:ctime) (list (quote (1 . 1)) fcn-in"
.asciz "-common2.l) (quote fcn-info))"
.asciz "filestat:dev"
.ascii "(putprop (quote filestat:dev) (list (quote (1 . 1)) fcn-in-c"
.asciz "ommon2.l) (quote fcn-info))"
.asciz "filestat:rdev"
.ascii "(putprop (quote filestat:rdev) (list (quote (1 . 1)) fcn-in-"
.asciz "common2.l) (quote fcn-info))"
.asciz "filestat:ino"
.ascii "(putprop (quote filestat:ino) (list (quote (1 . 1)) fcn-in-c"
.asciz "ommon2.l) (quote fcn-info))"
.ascii "(or (boundp (quote showstack-prinlevel)) (setq showstack-pri"
.asciz "nlevel 3))"
.ascii "(or (boundp (quote showstack-prinlength)) (setq showstack-pr"
.asciz "inlength 4))"
.ascii "(or (boundp (quote showstack-printer)) (setq showstack-print"
.asciz "er (quote print)))"
.ascii "(or (getd (quote old-showstack)) (putd (quote old-showstack)"
.asciz " (getd (quote showstack))))"
.ascii "(or (getd (quote old-baktrace)) (putd (quote old-baktrace) ("
.asciz "getd (quote baktrace))))"
.asciz "showstack"
.ascii "(putprop (quote showstack) (list (quote nil) fcn-in-common2."
.asciz "l) (quote fcn-info))"
.asciz "baktrace"
.ascii "(putprop (quote baktrace) (list (quote nil) fcn-in-common2.l"
.asciz ") (quote fcn-info))"
.asciz "showstack-baktrace"
.ascii "(putprop (quote showstack-baktrace) (list (quote (2 . 2)) fc"
.asciz "n-in-common2.l) (quote fcn-info))"
.asciz "baktraceprint"
.ascii "(putprop (quote baktraceprint) (list (quote (2 . 2)) fcn-in-"
.asciz "common2.l) (quote fcn-info))"
.asciz "trace-funp"
.ascii "(putprop (quote trace-funp) (list (quote (1 . 1)) fcn-in-com"
.asciz "mon2.l) (quote fcn-info))"
.asciz "subst-eq"
.ascii "(putprop (quote subst-eq) (list (quote (3 . 3)) fcn-in-commo"
.asciz "n2.l) (quote fcn-info))"
.asciz "subst-eqp"
.ascii "(putprop (quote subst-eqp) (list (quote (2 . 2)) fcn-in-comm"
.asciz "on2.l) (quote fcn-info))"
.asciz "environment"
.ascii "(putprop (quote environment) (list (quote nil) fcn-in-common"
.asciz "2.l) (quote fcn-info))"
.asciz "environment-files"
.ascii "(putprop (quote environment-files) (list (quote nil) fcn-in-"
.asciz "common2.l) (quote fcn-info))"
.asciz "environment-syntax"
.ascii "(putprop (quote environment-syntax) (list (quote nil) fcn-in"
.asciz "-common2.l) (quote fcn-info))"
.asciz "environment-maclisp"
.ascii "(putprop (quote environment-maclisp) (list (quote nil) fcn-i"
.asciz "n-common2.l) (quote fcn-info))"
.asciz "environment-lmlisp"
.ascii "(putprop (quote environment-lmlisp) (list (quote nil) fcn-in"
.asciz "-common2.l) (quote fcn-info))"
.ascii "(cond ((null (getd (quote int:infile))) (putd (quote int:inf"
.ascii "ile) (getd (quote infile))) (putd (quote int:outfile) (getd "
.ascii "(quote outfile))) (putd (quote int:fileopen) (getd (quote fi"
.ascii "leopen))) (putd (quote int:cfasl) (getd (quote cfasl))) (put"
.asciz "d (quote int:fasl) (getd (quote fasl)))))"
.asciz "infile"
.ascii "(putprop (quote infile) (list (quote (1 . 1)) fcn-in-common2"
.asciz ".l) (quote fcn-info))"
.asciz "outfile"
.ascii "(putprop (quote outfile) (list (quote (1 . 2)) fcn-in-common"
.asciz "2.l) (quote fcn-info))"
.asciz "fileopen"
.ascii "(putprop (quote fileopen) (list (quote (2 . 2)) fcn-in-commo"
.asciz "n2.l) (quote fcn-info))"
.asciz "fasl"
.ascii "(putprop (quote fasl) (list (quote (1)) fcn-in-common2.l) (q"
.asciz "uote fcn-info))"
.asciz "cfasl"
.ascii "(putprop (quote cfasl) (list (quote (1)) fcn-in-common2.l) ("
.asciz "quote fcn-info))"
.asciz "probef"
.ascii "(putprop (quote probef) (list (quote (1 . 1)) fcn-in-common2"
.asciz ".l) (quote fcn-info))"
.ascii "(or (boundp (quote user-name-to-dir-cache)) (setq user-name-"
.asciz "to-dir-cache nil))"
.asciz "username-to-dir"
.ascii "(putprop (quote username-to-dir) (list (quote (1 . 1)) fcn-i"
.asciz "n-common2.l) (quote fcn-info))"
.asciz "username-to-dir-flush-cache"
.ascii "(putprop (quote username-to-dir-flush-cache) (list (quote (0"
.asciz " . 0)) fcn-in-common2.l) (quote fcn-info))"
.asciz "sys:getpwnam"
.ascii "(putprop (quote sys:getpwnam) (list (quote (1 . 1)) fcn-in-c"
.asciz "ommon2.l) (quote fcn-info))"
.asciz "sys:getpwnam-dir"
.ascii "(putprop (quote sys:getpwnam-dir) (list (quote (1 . 1)) fcn-"
.asciz "in-common2.l) (quote fcn-info))"
.asciz "sys:access"
.ascii "(putprop (quote sys:access) (list (quote (2 . 2)) fcn-in-com"
.asciz "mon2.l) (quote fcn-info))"
.asciz "chdir"
.ascii "(putprop (quote chdir) (list (quote (1 . 1)) fcn-in-common2."
.asciz "l) (quote fcn-info))"
.asciz "sys:unlink"
.ascii "(putprop (quote sys:unlink) (list (quote (1 . 1)) fcn-in-com"
.asciz "mon2.l) (quote fcn-info))"
.asciz "sys:link"
.ascii "(putprop (quote sys:link) (list (quote (2 . 2)) fcn-in-commo"
.asciz "n2.l) (quote fcn-info))"
.asciz "sys:time"
.ascii "(putprop (quote sys:time) (list (quote (0 . 0)) fcn-in-commo"
.asciz "n2.l) (quote fcn-info))"
.asciz "sys:chmod"
.ascii "(putprop (quote sys:chmod) (list (quote (2 . 2)) fcn-in-comm"
.asciz "on2.l) (quote fcn-info))"
.asciz "sys:getpid"
.ascii "(putprop (quote sys:getpid) (list (quote (0 . 0)) fcn-in-com"
.asciz "mon2.l) (quote fcn-info))"
.asciz "filestat"
.ascii "(putprop (quote filestat) (list (quote (1 . 1)) fcn-in-commo"
.asciz "n2.l) (quote fcn-info))"
.asciz "sys:gethostname"
.ascii "(putprop (quote sys:gethostname) (list (quote (0 . 0)) fcn-i"
.asciz "n-common2.l) (quote fcn-info))"
.asciz "sleep"
.ascii "(putprop (quote sleep) (list (quote (1 . 1)) fcn-in-common2."
.asciz "l) (quote fcn-info))"
.asciz "sys:nice"
.ascii "(putprop (quote sys:nice) (list (quote (1 . 1)) fcn-in-commo"
.asciz "n2.l) (quote fcn-info))"
lit_end:
.data | this is just for documentation 
.asciz "@(#)Compiled by Liszt 68000 version 8.39a on Fri Dec 15 18:50:38 1989"
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
