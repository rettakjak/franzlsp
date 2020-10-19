	.globl	F00083	|(fcn nlambda declare)
F00083:
	link	a6,#-L00086
	tstb	sp@(-132)
	moveml	#L00087,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00084:
	movl	d7,d0
	subql	#4,a2
	moveml	a6@(-20),#L00087
	unlk	a6
	rts
L00087 = 15488
L00086 = 20
	.globl	F00088	|(fcn lambda memq)
F00088:
	link	a6,#-L00091
	tstb	sp@(-132)
	moveml	#L00092,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00089:
	movl	a4@(4),a2@+	|(beginning do)
L00093:
	cmpl	a4@(8),d7
	jne	L00094
	movl	d7,d0
	jra	L00095
L00094:
	movl	a4@,a2@+
	movl	a4@(8),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00097
	movl	a4@(8),d0
	jra	L00095
|	jra	L00096
L00097:
	movl	d7,d0
L00096:
	movl	a4@(8),a5
	movl	a5@,a4@(8)
	jra	L00093
L00095:
	subl	#12,a2
	moveml	a6@(-24),#L00092
	unlk	a6
	rts
L00092 = 15552
L00091 = 24
	.globl	F00098	|(fcn nlambda def)
F00098:
	link	a6,#-L00101
	tstb	sp@(-132)
	moveml	#L00102,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00099:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a4@,a1
	movl	a1@(4),a4@(4)
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00104
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00104
	movl	a4@,a5
	movl	a5@,a1
	cmpl	a1@,d7
	jne	L00104
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@(4),a0
	movl	a0@(4),d5
	movl	a3@,d0
	cmpl	d0,d7
	jeq	L00104
	movl	d0,a0
L00107:
	cmpl	a0@(4),d5
	jeq	L00106
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00107
	movl	a0,d0
	jra	L00104
L00106:
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a4@
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@(4),a4@(8)
	cmpl	a0@(4),d7
	jeq	L00108
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00109
	movl	a4@,a0
	movl	a0@(4),d0
	cmpl	a3@(4),d0
	jne	L00111
	movl	a3@(8),d5
	movl	a4@(8),d0
	cmpl	d0,d7
	jeq	L00114
	movl	d0,a0
L00115:
	cmpl	a0@(4),d5
	jeq	L00113
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00115
	movl	a0,d0
L00114:
	movl	a3@(12),d5
	movl	a4@(8),d0
	cmpl	d0,d7
	jeq	L00116
	movl	d0,a0
L00117:
	cmpl	a0@(4),d5
	jeq	L00113
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00117
	movl	a0,d0
L00116:
	movl	a3@(16),d5
	movl	a4@(8),d0
	cmpl	d0,d7
	jeq	L00118
	movl	d0,a0
L00119:
	cmpl	a0@(4),d5
	jeq	L00113
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00119
	movl	a0,d0
L00118:
	movl	a3@(20),d5
	movl	a4@(8),d0
	cmpl	d0,d7
	jeq	L00111
	movl	d0,a0
L00121:
	cmpl	a0@(4),d5
	jeq	L00120
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00121
	movl	a0,d0
	jra	L00111
L00120:
L00113:
	movl	a4@,a5	|(calling lambdacvt)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@
	jra	L00110
L00111:
	movl	d7,d0
L00110:
	jra	L00108
L00109:
	movl	a3@(24),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00108:
	movl	a4@(4),a2@+	|(calling putd)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@(4),d0
	jra	L00103
L00104:
	movl	a3@(28),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00103:
	subl	#12,a2
	moveml	a6@(-24),#L00102
	unlk	a6
	rts
L00102 = 15520
L00101 = 24
	.globl	F00122	|(fcn macro defun)
F00122:
	link	a6,#-L00125
	tstb	sp@(-132)
	moveml	#L00126,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00123:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a4@(4)
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a4@
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00129
	movl	a4@(4),a5
	movl	a5@,a0
	movl	a0@(4),d5
	movl	a3@(32),d0
	cmpl	d0,d7
	jeq	L00131
	movl	d0,a0
L00133:
	cmpl	a0@(4),d5
	jeq	L00132
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00133
	movl	a0,d0
	jra	L00131
L00132:
	movl	a4@(4),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a2@+
	jbsr	_qcons
	movl	d0,a4@
	movl	a4@(4),a1
	movl	a1@(4),a4@(4)
	jra	L00130
L00131:
	movl	a4@(4),a1
	movl	a1@(4),a4@(24)
	movl	a4@(4),a5
	movl	a5@,a0
	movl	a0@(4),a4@(20)
	lea	a2@,a5	|(calling concat)
	|(calling gensym)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	movl	a3@(36),a2@+
	movl	a4@(24),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a4@(4)
L00130:
	jra	L00128
L00129:
	movl	d7,d0
L00128:
	movl	a4@,a1
	cmpl	a1@(4),d7
	jne	L00135
	movl	a3@(4),a4@(8)
	jra	L00134
L00135:
	movl	a3@(40),a2@+
	movl	a4@,a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00136
	movl	a3@(44),a4@(8)
	movl	a4@,a5
	movl	a5@,a4@
	jra	L00134
L00136:
	movl	a3@(48),a2@+
	movl	a4@,a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00137
	movl	a3@(4),a4@(8)
	movl	a4@,a5
	movl	a5@,a4@
	jra	L00134
L00137:
	movl	a3@(52),a2@+
	movl	a4@,a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00138
	movl	a3@(52),a4@(8)
	movl	a4@,a5
	movl	a5@,a4@
	jra	L00134
L00138:
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
	movl	a3@(56),a4@(8)
	movl	a4@,a0	|(calling nconc)
	movl	a0@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@,a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@
	jra	L00134
L00139:
	movl	a3@(4),a4@(8)
L00134:
	movl	a3@(60),a2@+
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	movl	a4@,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	cmpl	a4@(24),d7
	jeq	L00143
	movl	a3@(64),a2@+
	movl	a3@(68),a2@+
	movl	a4@(16),a2@+
	movl	a3@(72),a2@+
	movl	a3@(76),a2@+
	movl	a4@(24),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(80),a2@+
	movl	a3@(76),a2@+
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
	movl	a3@(76),a2@+
	movl	a4@(20),a2@+
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
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00127
|	jra	L00142
L00143:
	movl	a4@(16),d0
	jra	L00127
L00142:
	movl	d7,d0
L00127:
	subl	#28,a2
	moveml	a6@(-28),#L00126
	unlk	a6
	rts
L00126 = 15584
L00125 = 28
	.globl	F00144	|(fcn lexpr error)
F00144:
	link	a6,#-L00147
	tstb	sp@(-132)
	moveml	#L00148,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00145:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	a4@,a2@+	|(beginning do)
	movl	a3@(84),a2@+
L00149:
	cmpl	#_nilatom+0x1400+0,a4@(4)
	jne	L00150
	movl	a4@(8),a2@+	|(calling err-with-message)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00151
L00150:
	movl	a4@(4),d0	|(calling concat)
	cmpl	a4@(4),d7
	jeq	L00156
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00156
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),d0
	jra	L00157
L00156:
	movl	a4@(-4),d0
L00157:
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
	jeq	L00153
	movl	a4@(4),d0
	cmpl	a4@(4),d7
	jeq	L00158
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00158
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),d0
	jra	L00159
L00158:
	movl	a4@(-4),d0
L00159:
	jra	L00152
L00153:
	movl	a4@(4),d0	|(calling lessp)
	|(calling maknum)
	cmpl	a4@(4),d7
	jeq	L00161
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00161
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00162
L00161:
	movl	a4@(-4),a2@+
L00162:
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+	|(calling maknum)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00160
	movl	a3@(88),d0
	jra	L00152
L00160:
	movl	a4@(4),d0	|(calling implode)
	|(calling exploden)
	cmpl	a4@(4),d7
	jeq	L00163
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00163
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00164
L00163:
	movl	a4@(-4),a2@+
L00164:
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00152:
	movl	d0,a2@+
	movl	a3@(92),a2@+
	movl	a4@(8),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a4@(8)
	cmpl	#_nilatom+0x1400-4096,a4@(4)
	jle	L00165
	cmpl	#_nilatom+0x1400+4092,a4@(4)
	jle	L00166
L00165:
	movl	a4@(4),a0
	jbsr	_qoneminus
	movl	d0,a4@(4)
	jra	L00167
L00166:
	movl	a4@(4),d0
	subql	#4,d0
	movl	d0,a4@(4)
L00167:
	jra	L00149
L00151:
	subl	#12,a2
	moveml	a6@(-20),#L00148
	unlk	a6
	rts
L00148 = 15488
L00147 = 20
	.globl	F00168	|(fcn lexpr err)
F00168:
	link	a6,#-L00171
	tstb	sp@(-132)
	moveml	#L00172,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00169:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	cmpl	#_nilatom+0x1400+0,a4@
	jne	L00174
	movl	a3@(96),a2@+	|(calling err-with-message)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00173
L00174:
	cmpl	#_nilatom+0x1400+4,a4@
	jeq	L00176
	cmpl	#_nilatom+0x1400+8,a4@
	jne	L00175
L00176:
	movl	#_nilatom+0x1400+4,d0	|(calling err-with-message)
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	movl	#_nilatom+0x1400+4,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00173
L00175:
	movl	a3@(100),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00173:
	subql	#4,a2
	moveml	a6@(-20),#L00172
	unlk	a6
	rts
L00172 = 15488
L00171 = 20
	.globl	F00182	|(fcn lexpr append)
F00182:
	link	a6,#-L00185
	tstb	sp@(-132)
	moveml	#L00186,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00183:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	cmpl	#_nilatom+0x1400+8,a4@
	jne	L00188
	movl	#_nilatom+0x1400+4,d0	|(calling append2args)
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	movl	#_nilatom+0x1400+8,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	jbsr	L00181
	jra	L00187
L00188:
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@,d6
	jne	L00193
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L00193
	movl	d7,d0
	jra	L00187
L00193:
	cmpl	#_nilatom+0x1400-4096,a4@	|(beginning do)
	jle	L00197
	cmpl	#_nilatom+0x1400+4092,a4@
	jle	L00198
L00197:
	movl	a4@,a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00199
L00198:
	movl	a4@,d0
	subql	#4,d0
	movl	d0,a2@+
L00199:
	movl	a4@,d0
	cmpl	a4@,d7
	jeq	L00200
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00200
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00201
L00200:
	movl	a4@(-4),a2@+
L00201:
L00195:
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@(4),d6
	jne	L00196
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L00196
	movl	a4@(8),d0
	jra	L00202
L00196:
	movl	a4@(4),d0	|(calling append2args)
	cmpl	a4@(4),d7
	jeq	L00204
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00204
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00205
L00204:
	movl	a4@(-4),a2@+
L00205:
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	jbsr	L00181
	movl	d0,a4@(8)
	cmpl	#_nilatom+0x1400-4096,a4@(4)
	jle	L00206
	cmpl	#_nilatom+0x1400+4092,a4@(4)
	jle	L00207
L00206:
	movl	a4@(4),a0
	jbsr	_qoneminus
	movl	d0,a4@(4)
	jra	L00208
L00207:
	movl	a4@(4),d0
	subql	#4,d0
	movl	d0,a4@(4)
L00208:
	jra	L00195
L00202:
	subql	#8,a2
L00187:
	subql	#4,a2
	moveml	a6@(-24),#L00186
	unlk	a6
	rts
L00186 = 15552
L00185 = 24
L00181:	|(fcn lambda append2args)
	movl	a4,sp@-
	lea	a2@(-8),a4
L00210:
	movl	d7,a2@+
	movl	d7,a2@+
	cmpl	a4@,d7
	jne	L00217
	movl	a4@(4),d0
	jra	L00215
|	jra	L00216
L00217:
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
	jeq	L00218
	movl	a3@(104),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00216
L00218:
	movl	d7,d0
L00216:
	movl	a4@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a4@(8)
	movl	a4@(8),a4@(12)
L00214:
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
	jeq	L00222
	movl	a3@(108),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00221
L00222:
	movl	a4@,a5
	movl	a5@,a4@
	cmpl	a5@,d7
	jeq	L00225
	movl	a4@(12),a2@+
	movl	a4@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,d1
	movl	a2@-,a0
	movl	d1,a0@
	movl	a0,d0
	movl	d0,a0
	movl	a0@,a4@(12)
	jra	L00214
|	jra	L00221
L00225:
	movl	d7,d0
L00221:
	movl	a4@(12),a0
	movl	a4@(4),a0@
	movl	a0,d0
	movl	a4@(8),d0
	jra	L00215
|	movl	d7,d0
L00215:
	subl	#16,a2
	movl	sp@+,a4
	rts
	.globl	F00226	|(fcn lambda append1)
F00226:
	link	a6,#-L00229
	tstb	sp@(-132)
	moveml	#L00230,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00227:
	movl	a4@,a2@+	|(calling append)
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#8,a2
	moveml	a6@(-20),#L00230
	unlk	a6
	rts
L00230 = 15488
L00229 = 20
	.globl	F00231	|(fcn lambda assoc)
F00231:
	link	a6,#-L00234
	tstb	sp@(-132)
	moveml	#L00235,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00232:
	movl	a4@(4),a2@+	|(beginning do)
L00236:
	cmpl	a4@(8),d7
	jne	L00237
	movl	d7,d0
	jra	L00238
L00237:
	movl	a4@(8),a1
	cmpl	a1@(4),d7
	jeq	L00239
	movl	a4@(8),a0
	movl	a0@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jeq	L00240
	movl	a3@(112),a2@+	|(calling error)
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00239
L00240:
	movl	a4@,a2@+
	movl	a4@(8),a1
	movl	a1@(4),a0
	movl	a0@(4),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00242
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00243
	jra	L00241
L00242:
	subql	#8,a2
L00243:
	movl	a4@(8),a1
	movl	a1@(4),d0
	jra	L00238
|	jra	L00239
L00241:
	movl	d7,d0
L00239:
	movl	a4@(8),a5
	movl	a5@,a4@(8)
	jra	L00236
L00238:
	subl	#12,a2
	moveml	a6@(-24),#L00235
	unlk	a6
	rts
L00235 = 15552
L00234 = 24
	.globl	F00244	|(fcn lambda rassq)
F00244:
	link	a6,#-L00247
	tstb	sp@(-132)
	moveml	#L00248,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00245:
	cmpl	a4@(4),d7
	jne	L00250
	movl	d7,d0
	jra	L00249
L00250:
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jeq	L00251
	movl	a3@(116),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00249
L00251:
	movl	a4@(4),a2@+	|(beginning do)
L00252:
	cmpl	a4@(8),d7
	jne	L00253
	movl	d7,d0
	jra	L00254
L00253:
	movl	a4@,a2@+
	movl	a4@(8),a1
	movl	a1@(4),a5
	movl	a5@,d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00256
	movl	a4@(8),a0
	movl	a0@(4),d0
	jra	L00254
|	jra	L00255
L00256:
	movl	d7,d0
L00255:
	movl	a4@(8),a5
	movl	a5@,a4@(8)
	jra	L00252
L00254:
	subql	#4,a2
L00249:
	subql	#8,a2
	moveml	a6@(-24),#L00248
	unlk	a6
	rts
L00248 = 15552
L00247 = 24
	.globl	F00257	|(fcn lambda concatl)
F00257:
	link	a6,#-L00260
	tstb	sp@(-132)
	moveml	#L00261,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00258:
	movl	a3@(120),a2@+	|(calling apply)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#4,a2
	moveml	a6@(-20),#L00261
	unlk	a6
	rts
L00261 = 15488
L00260 = 20
	.globl	F00262	|(fcn lambda length)
F00262:
	link	a6,#-L00265
	tstb	sp@(-132)
	moveml	#L00266,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00263:
	cmpl	a4@,d7
	jeq	L00268
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jeq	L00268
	movl	a3@(124),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00267
L00268:
	cmpl	a4@,d7
	jne	L00271
	movl	#_nilatom+0x1400+0,d0
	jra	L00270
L00271:
	movl	a4@,a5	|(beginning do)
	movl	a5@,a2@+
	movl	#_nilatom+0x1400+4,a2@+
L00272:
	cmpl	a4@(4),d7
	jne	L00273
	movl	a4@(8),d0
	jra	L00274
L00273:
	movl	a4@(4),a5
	movl	a5@,a2@+
	cmpl	#_nilatom+0x1400+4088,a4@(8)
	jle	L00275
	movl	a4@(8),a0
	jbsr	_qoneplus
	movl	d0,a4@(8)
	jra	L00276
L00275:
	movl	a4@(8),d0
	addql	#4,d0
	movl	d0,a4@(8)
L00276:
	movl	a2@-,a4@(4)
	jra	L00272
L00274:
	subql	#8,a2
L00270:
L00267:
	subql	#4,a2
	moveml	a6@(-20),#L00266
	unlk	a6
	rts
L00266 = 15488
L00265 = 20
	.globl	F00277	|(fcn lambda memq)
F00277:
	link	a6,#-L00280
	tstb	sp@(-132)
	moveml	#L00281,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00278:
	movl	a4@(4),a2@+	|(beginning do)
L00282:
	cmpl	a4@(8),d7
	jne	L00283
	movl	d7,d0
	jra	L00284
L00283:
	movl	a4@,a2@+
	movl	a4@(8),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00286
	movl	a4@(8),d0
	jra	L00284
|	jra	L00285
L00286:
	movl	d7,d0
L00285:
	movl	a4@(8),a5
	movl	a5@,a4@(8)
	jra	L00282
L00284:
	subl	#12,a2
	moveml	a6@(-24),#L00281
	unlk	a6
	rts
L00281 = 15552
L00280 = 24
	.globl	F00287	|(fcn lexpr nconc)
F00287:
	link	a6,#-L00290
	tstb	sp@(-132)
	moveml	#L00291,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00288:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	a4@,d6
	cmpl	a3@(128),d6
	jne	L00293
	movl	#_nilatom+0x1400+4,d0
	subl	a4@(-4),d0
	cmpl	a4@(-8,d0:L),d7
	jne	L00295
	movl	#_nilatom+0x1400+8,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),d0
	jra	L00294
L00295:
	movl	#_nilatom+0x1400+4,d0	|(beginning do)
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
L00300:
	movl	a4@(4),a5
	cmpl	a5@,d7
	jne	L00301
	movl	a4@(4),a2@+
	movl	#_nilatom+0x1400+8,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),d1
	movl	a2@-,a0
	movl	d1,a0@
	movl	a0,d0
	movl	#_nilatom+0x1400+4,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),d0
	jra	L00304
L00301:
	movl	a4@(4),a5
	movl	a5@,a4@(4)
	jra	L00300
L00304:
	subql	#4,a2
L00294:
	jra	L00292
L00293:
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@,d6
	jne	L00309
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L00309
	movl	d7,d0
	jra	L00292
L00309:
	movl	#_nilatom+0x1400+4,a2@+	|(beginning do)
	movl	#_nilatom+0x1400+8,a2@+
	movl	d7,a2@+
	movl	#_nilatom+0x1400+4,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jbsr	_qcons
	movl	d0,a2@+
L00311:
	movl	a4@(4),d6
	cmpl	a4@,d6
	jne	L00312
	movl	a4@(12),a5
	movl	a5@,d0
	jra	L00315
L00312:
	movl	a4@(4),d0
	cmpl	a4@(4),d7
	jeq	L00318
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00318
	subl	a4@(-4),d0
	cmpl	a4@(-8,d0:L),d7
	jeq	L00317
	jra	L00319
L00318:
L00319:
	movl	a4@(4),d0	|(calling last)
	cmpl	a4@(4),d7
	jeq	L00320
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00320
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00321
L00320:
	movl	a4@(-4),a2@+
L00321:
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(8),d0
	cmpl	a4@(8),d7
	jeq	L00322
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00322
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),d1
	jra	L00323
L00322:
	movl	a4@(-4),d1
L00323:
	movl	a2@-,a0
	movl	d1,a0@
	movl	a0,d0
	jra	L00316
L00317:
	movl	a4@(12),a2@+	|(calling last)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(8),d0
	cmpl	a4@(8),d7
	jeq	L00324
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00324
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),d1
	jra	L00325
L00324:
	movl	a4@(-4),d1
L00325:
	movl	a2@-,a0
	movl	d1,a0@
	movl	a0,d0
L00316:
	movl	a4@(8),a2@+
	cmpl	#_nilatom+0x1400+4088,a4@(8)
	jle	L00326
	movl	a4@(8),a0
	jbsr	_qoneplus
	movl	d0,a4@(8)
	jra	L00327
L00326:
	movl	a4@(8),d0
	addql	#4,d0
	movl	d0,a4@(8)
L00327:
	movl	a2@-,a4@(4)
	jra	L00311
L00315:
	subl	#12,a2
L00292:
	subql	#4,a2
	moveml	a6@(-24),#L00291
	unlk	a6
	rts
L00291 = 15552
L00290 = 24
	.globl	F00329	|(fcn lambda nreconc)
F00329:
	link	a6,#-L00332
	tstb	sp@(-132)
	moveml	#L00333,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00330:
	cmpl	a4@,d7
	jne	L00335
	movl	a4@(4),d0
	jra	L00334
L00335:
	movl	a4@,a2@+	|(calling nreverse1)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	jbsr	L00328
L00334:
	subql	#8,a2
	moveml	a6@(-20),#L00333
	unlk	a6
	rts
L00333 = 15488
L00332 = 20
	.globl	F00336	|(fcn lambda nreverse)
F00336:
	link	a6,#-L00339
	tstb	sp@(-132)
	moveml	#L00340,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00337:
	cmpl	a4@,d7
	jne	L00342
	movl	a4@,d0
	jra	L00341
L00342:
	movl	a4@,a2@+	|(calling nreverse1)
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	jbsr	L00328
L00341:
	subql	#4,a2
	moveml	a6@(-20),#L00340
	unlk	a6
	rts
L00340 = 15488
L00339 = 20
L00328:	|(fcn lambda nreverse1)
	movl	a4,sp@-
	lea	a2@(-8),a4
L00344:
	movl	d7,a2@+
L00348:
	movl	a4@,a5
	movl	a5@,a4@(8)
	movl	a4@,a0
	movl	a4@(4),a0@
	movl	a0,d0
	movl	a4@,a4@(4)
	cmpl	a4@(8),d7
	jeq	L00351
	movl	a4@(8),a4@
	jra	L00348
|	jra	L00350
L00351:
	movl	d7,d0
L00350:
	movl	a4@,d0
	jra	L00349
|	movl	d7,d0
L00349:
	subl	#12,a2
	movl	sp@+,a4
	rts
	.globl	F00352	|(fcn nlambda liszt-declare)
F00352:
	link	a6,#-L00355
	tstb	sp@(-132)
	moveml	#L00356,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00353:
	movl	d7,d0
	subql	#4,a2
	moveml	a6@(-20),#L00356
	unlk	a6
	rts
L00356 = 15488
L00355 = 20
bind_org:
	linker_size = 	33
	trans_size = 	15
	.long	99
	.long	99
	.long	1
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
	.long	1
	.long	99
	.long -1
lit_org:
.asciz "(lambda nlambda lexpr macro glambda)"
.asciz "lambda"
.asciz "&aux"
.asciz "&optional"
.asciz "&rest"
.asciz "&body"
.asciz "\"def: bad lambda list of form in \""
.asciz "\"def: bad form \""
.asciz "(macro expr fexpr lexpr)"
.asciz "\"::\""
.asciz "fexpr"
.asciz "nlambda"
.asciz "expr"
.asciz "macro"
.asciz "lexpr"
.asciz "def"
.asciz "progn"
.asciz "(quote compile)"
.asciz "putprop"
.asciz "quote"
.asciz "getd"
.asciz "\"\""
.asciz "<UNBOUND>"
.asciz "\" \""
.asciz "\"call to err\""
.asciz "\"wrong number of args to err:\""
.asciz "\"Non-list to append:\""
.asciz "\"Non-list to append:\""
.asciz "\"bad arg to assoc\""
.asciz "\"rassq: illegal second argument: \""
.asciz "concat"
.asciz "\"length: non list argument: \""
.asciz "2"
.asciz "lambdacvt"
.asciz "error"
.asciz "putd"
.asciz "gensym"
.asciz "concat"
.asciz "nconc"
.asciz "err-with-message"
.asciz "maknum"
.asciz "lessp"
.asciz "exploden"
.asciz "implode"
.asciz "append"
.asciz "equal"
.asciz "apply"
.asciz "last"
.ascii "(setq fcn-in-common0.l \"common0.l compiled by Liszt 68000 ve"
.asciz "rsion 8.39a on Fri Dec 15 18:47:50 1989\")"
.ascii "(setq rcs-common0- \"$Header: common0.l,v 1.4 83/12/15 11:09:"
.asciz "34 jkf Exp $\")"
.asciz "declare"
.ascii "(putprop (quote declare) (list (quote nil) fcn-in-common0.l)"
.asciz " (quote fcn-info))"
.asciz "memq"
.ascii "(putprop (quote memq) (list (quote (2 . 2)) fcn-in-common0.l"
.asciz ") (quote fcn-info))"
.asciz "def"
.ascii "(putprop (quote def) (list (quote nil) fcn-in-common0.l) (qu"
.asciz "ote fcn-info))"
.asciz "defun"
.ascii "(putprop (quote defun) (list (quote nil) fcn-in-common0.l) ("
.asciz "quote fcn-info))"
.asciz "error"
.ascii "(putprop (quote error) (list (quote nil) fcn-in-common0.l) ("
.asciz "quote fcn-info))"
.asciz "err"
.ascii "(putprop (quote err) (list (quote nil) fcn-in-common0.l) (qu"
.asciz "ote fcn-info))"
.asciz "append"
.ascii "(putprop (quote append) (list (quote nil) fcn-in-common0.l) "
.asciz "(quote fcn-info))"
.ascii "(putprop (quote append2args) (list (quote (2 . 2)) fcn-in-co"
.asciz "mmon0.l) (quote fcn-info))"
.asciz "append1"
.ascii "(putprop (quote append1) (list (quote (2 . 2)) fcn-in-common"
.asciz "0.l) (quote fcn-info))"
.asciz "assoc"
.ascii "(putprop (quote assoc) (list (quote (2 . 2)) fcn-in-common0."
.asciz "l) (quote fcn-info))"
.asciz "rassq"
.ascii "(putprop (quote rassq) (list (quote (2 . 2)) fcn-in-common0."
.asciz "l) (quote fcn-info))"
.asciz "concatl"
.ascii "(putprop (quote concatl) (list (quote (1 . 1)) fcn-in-common"
.asciz "0.l) (quote fcn-info))"
.asciz "length"
.ascii "(putprop (quote length) (list (quote (1 . 1)) fcn-in-common0"
.asciz ".l) (quote fcn-info))"
.asciz "memq"
.ascii "(putprop (quote memq) (list (quote (2 . 2)) fcn-in-common0.l"
.asciz ") (quote fcn-info))"
.asciz "nconc"
.ascii "(putprop (quote nconc) (list (quote nil) fcn-in-common0.l) ("
.asciz "quote fcn-info))"
.asciz "nreconc"
.ascii "(putprop (quote nreconc) (list (quote (2 . 2)) fcn-in-common"
.asciz "0.l) (quote fcn-info))"
.asciz "nreverse"
.ascii "(putprop (quote nreverse) (list (quote (1 . 1)) fcn-in-commo"
.asciz "n0.l) (quote fcn-info))"
.ascii "(putprop (quote nreverse1) (list (quote (2 . 2)) fcn-in-comm"
.asciz "on0.l) (quote fcn-info))"
.asciz "liszt-declare"
.ascii "(putprop (quote liszt-declare) (list (quote nil) fcn-in-comm"
.asciz "on0.l) (quote fcn-info))"
lit_end:
.data | this is just for documentation 
.asciz "@(#)Compiled by Liszt 68000 version 8.39a on Fri Dec 15 18:48:03 1989"
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
