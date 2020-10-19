	.globl	F00083	|(fcn macro litatom)
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
	movl	a4@,a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(8),a2@+
	movl	a3@(12),a2@+
	movl	a4@,a5
	movl	a5@,a2@+
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
	moveml	a6@(-20),#L00087
	unlk	a6
	rts
L00087 = 15488
L00086 = 20
	.globl	F00088	|(fcn lambda nequal)
F00088:
	link	a6,#-L00091
	tstb	sp@(-132)
	moveml	#L00092,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00089:
	movl	a4@,a2@+
	movl	a4@(4),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00095
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00096
	jra	L00097
L00095:
	subql	#8,a2
L00096:
	jra	L00093
L00097:
	movl	a3@(16),d0
	jra	L00094
L00093:
	movl	d7,d0
L00094:
	subql	#8,a2
	moveml	a6@(-24),#L00092
	unlk	a6
	rts
L00092 = 15552
L00091 = 24
	.globl	F00102	|(fcn lexpr lineread)
F00102:
	link	a6,#-L00105
	tstb	sp@(-132)
	moveml	#L00106,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00103:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	a4@,a2@+	|(beginning do)
	movl	d7,a2@+
L00107:
	movl	a4@(4),a5
	cmpl	#1,a5@
	jpl	L00108
	movl	a4@(8),d0
	jra	L00109
L00108:
	cmpl	#_nilatom+0x1400-4096,a4@(4)
	jle	L00110
	cmpl	#_nilatom+0x1400+4092,a4@(4)
	jle	L00111
L00110:
	movl	a4@(4),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00112
L00111:
	movl	a4@(4),d0
	subql	#4,d0
	movl	d0,a2@+
L00112:
	movl	a4@(4),d0
	cmpl	a4@(4),d7
	jeq	L00113
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00113
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00114
L00113:
	movl	a4@(-4),a2@+
L00114:
	movl	a4@(8),a2@+
	jbsr	_qcons
	movl	d0,a4@(8)
	movl	a2@-,a4@(4)
	jra	L00107
L00109:
	subql	#8,a2
	movl	d0,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a4@(4),a4@(16)	|(beginning do)
	movl	a4@(16),a2@+
L00117:
	cmpl	a4@(20),d7
	jne	L00118
	movl	d7,d0
	jra	L00119
L00118:
	movl	a4@(20),a1
	movl	a1@(4),a2@+
	movl	a4@(24),a2@+	|(calling portp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00121
	movl	a4@(24),a4@(12)
	jra	L00120
L00121:
	movl	a4@(24),a4@(8)
	cmpl	a4@(24),d7
	jne	L00120
	movl	d7,d0
L00120:
	subql	#4,a2
	movl	a4@(20),a5
	movl	a5@,a4@(20)
	jra	L00117
L00119:
	subql	#8,a2
	cmpl	a4@(8),d7
	jeq	L00124
	movl	a4@(12),a2@+	|(calling tyipeek)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	#_nilatom+0x1400+40,d0
	jne	L00124
	movl	a4@(12),a2@+	|(calling tyi)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00123
L00124:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	movl	a4@(16),a2@+	|(calling tconc)
	movl	a4@(12),a2@+	|(calling read)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00125:
	movl	a4@(12),a2@+	|(calling tyipeek)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	#_nilatom+0x1400+40,d0
	jeq	L00128
	movl	a4@(16),a2@+	|(calling tconc)
	movl	a4@(12),a2@+	|(calling read)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00125
|	jra	L00127
L00128:
	movl	a4@(12),a2@+	|(calling tyi)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(16),a1
	movl	a1@(4),d0
	jra	L00126
L00127:
	movl	d7,d0
L00126:
	subql	#4,a2
	jra	L00122
L00123:
	movl	d7,d0
L00122:
	subl	#16,a2
	moveml	a6@(-20),#L00106
	unlk	a6
	rts
L00106 = 15488
L00105 = 20
	.globl	F00129	|(fcn nlambda defv)
F00129:
	link	a6,#-L00132
	tstb	sp@(-132)
	moveml	#L00133,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00130:
	movl	a4@,a1	|(calling set)
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#4,a2
	moveml	a6@(-20),#L00133
	unlk	a6
	rts
L00133 = 15488
L00132 = 20
	.globl	F00138	|(fcn lexpr initsym)
F00138:
	link	a6,#-L00141
	tstb	sp@(-132)
	moveml	#L00142,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00139:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	a4@,a2@+	|(beginning do)
	movl	d7,a2@+
L00143:
	movl	a4@(4),a5
	cmpl	#1,a5@
	jpl	L00144
	movl	a4@(8),d0
	jra	L00145
L00144:
	cmpl	#_nilatom+0x1400-4096,a4@(4)
	jle	L00146
	cmpl	#_nilatom+0x1400+4092,a4@(4)
	jle	L00147
L00146:
	movl	a4@(4),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00148
L00147:
	movl	a4@(4),d0
	subql	#4,d0
	movl	d0,a2@+
L00148:
	movl	a4@(4),d0
	cmpl	a4@(4),d7
	jeq	L00149
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00149
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00150
L00149:
	movl	a4@(-4),a2@+
L00150:
	movl	a4@(8),a2@+
	jbsr	_qcons
	movl	d0,a4@(8)
	movl	a2@-,a4@(4)
	jra	L00143
L00145:
	subql	#8,a2
	movl	d0,a2@+
	movl	d7,a2@+
	movl	a4@(4),a2@+	|(beginning do)
L00153:
	cmpl	a4@(12),d7
	jne	L00154
	movl	d7,d0
	jra	L00155
L00154:
	movl	a4@(12),a1	|(calling initsym1)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(8),a2@+
	jbsr	_qcons
	movl	d0,a4@(8)
	movl	a4@(12),a5
	movl	a5@,a4@(12)
	jra	L00153
L00155:
	subql	#4,a2	|(calling nreverse)
	movl	a4@(8),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subl	#12,a2
	moveml	a6@(-20),#L00142
	unlk	a6
	rts
L00142 = 15488
L00141 = 20
	.globl	F00156	|(fcn lambda initsym1)
F00156:
	link	a6,#-L00159
	tstb	sp@(-132)
	moveml	#L00160,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00157:
	movl	d7,a2@+
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00163
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a4@(4)
	movl	a4@,a0
	movl	a0@(4),a4@
	jra	L00162
L00163:
	movl	#_nilatom+0x1400+0,a4@(4)
L00162:
	movl	a4@,a2@+	|(calling putprop)
	movl	a4@(4),a2@+
	movl	a3@(20),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	a4@,a2@+	|(calling concat)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00161
|	movl	d7,d0
L00161:
	subql	#8,a2
	moveml	a6@(-20),#L00160
	unlk	a6
	rts
L00160 = 15488
L00159 = 20
	.globl	F00164	|(fcn lambda newsym)
F00164:
	link	a6,#-L00167
	tstb	sp@(-132)
	moveml	#L00168,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00165:
	movl	a4@,a2@+	|(calling concat)
	movl	a4@,a2@+	|(calling putprop)
	movl	a4@,a2@+
	movl	a3@(20),a2@+
	jbsr	_qget
	cmpl	d0,d7
	jne	L00171
	movl	#_nilatom+0x1400-4,a0
	jra	L00172
L00171:
	movl	d0,a0
L00172:
	cmpl	#_nilatom+0x1400+4088,a0
	jle	L00169
	jbsr	_qoneplus
	movl	d0,a2@+
	jra	L00170
L00169:
	movl	a0,d0
	addql	#4,d0
	movl	d0,a2@+
L00170:
	movl	a3@(20),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#4,a2
	moveml	a6@(-20),#L00168
	unlk	a6
	rts
L00168 = 15488
L00167 = 20
	.globl	F00173	|(fcn lambda oldsym)
F00173:
	link	a6,#-L00176
	tstb	sp@(-132)
	moveml	#L00177,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00174:
	movl	a4@,a2@+
	movl	a3@(20),a2@+
	jbsr	_qget
	cmpl	d0,d7
	jeq	L00179
	movl	a4@,a2@+	|(calling concat)
	movl	a4@,a2@+
	movl	a3@(20),a2@+
	jbsr	_qget
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00178
L00179:
	movl	a4@,d0
L00178:
	subql	#4,a2
	moveml	a6@(-20),#L00177
	unlk	a6
	rts
L00177 = 15488
L00176 = 20
	.globl	F00180	|(fcn lambda allsym)
F00180:
	link	a6,#-L00183
	tstb	sp@(-132)
	moveml	#L00184,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00181:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00188
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a4@(4)
	movl	a4@,a0
	movl	a0@(4),a4@
	jra	L00187
L00188:
	movl	#_nilatom+0x1400+0,a4@(4)
L00187:
	movl	a4@,a2@+
	movl	a3@(20),a2@+
	jbsr	_qget
	movl	d0,a4@(8)
	cmpl	d0,d7
	jne	L00189
	movl	d7,d0
	jra	L00186
L00189:
L00185:
	movl	a4@(4),a5
	movl	a5@,d6
	movl	a4@(8),a5
	cmpl	a5@,d6
	jle	L00190
	movl	a4@(12),d0
	jra	L00186
L00190:
	movl	a4@,a2@+	|(calling concat)
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	cmpl	#_nilatom+0x1400-4096,a4@(8)
	jle	L00191
	cmpl	#_nilatom+0x1400+4092,a4@(8)
	jle	L00192
L00191:
	movl	a4@(8),a0
	jbsr	_qoneminus
	movl	d0,a4@(8)
	jra	L00193
L00192:
	movl	a4@(8),d0
	subql	#4,d0
	movl	d0,a4@(8)
L00193:
	jra	L00185
|	movl	d7,d0
L00186:
	subl	#16,a2
	moveml	a6@(-24),#L00184
	unlk	a6
	rts
L00184 = 15552
L00183 = 24
	.globl	F00198	|(fcn lexpr remsym)
F00198:
	link	a6,#-L00201
	tstb	sp@(-132)
	moveml	#L00202,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00199:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	a4@,a2@+	|(beginning do)
	movl	d7,a2@+
L00203:
	movl	a4@(4),a5
	cmpl	#1,a5@
	jpl	L00204
	movl	a4@(8),d0
	jra	L00205
L00204:
	cmpl	#_nilatom+0x1400-4096,a4@(4)
	jle	L00206
	cmpl	#_nilatom+0x1400+4092,a4@(4)
	jle	L00207
L00206:
	movl	a4@(4),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00208
L00207:
	movl	a4@(4),d0
	subql	#4,d0
	movl	d0,a2@+
L00208:
	movl	a4@(4),d0
	cmpl	a4@(4),d7
	jeq	L00209
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00209
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00210
L00209:
	movl	a4@(-4),a2@+
L00210:
	movl	a4@(8),a2@+
	jbsr	_qcons
	movl	d0,a4@(8)
	movl	a2@-,a4@(4)
	jra	L00203
L00205:
	subql	#8,a2
	movl	d0,a2@+
	movl	d7,a2@+
	movl	a4@(4),a2@+	|(beginning do)
L00213:
	cmpl	a4@(12),d7
	jne	L00214
	movl	d7,d0
	jra	L00215
L00214:
	movl	a4@(12),a1	|(calling remsym1)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(8),a2@+
	jbsr	_qcons
	movl	d0,a4@(8)
	movl	a4@(12),a5
	movl	a5@,a4@(12)
	jra	L00213
L00215:
	subql	#4,a2	|(calling nreverse)
	movl	a4@(8),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subl	#12,a2
	moveml	a6@(-20),#L00202
	unlk	a6
	rts
L00202 = 15488
L00201 = 20
	.globl	F00216	|(fcn lambda remsym1)
F00216:
	link	a6,#-L00219
	tstb	sp@(-132)
	moveml	#L00220,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00217:
	movl	a4@,d0	|(calling oldsym)
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00223
	movl	a4@,a1
	movl	a1@(4),d0
	jra	L00222
L00223:
	movl	a4@,d0
L00222:
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
	movl	a4@,a2@+	|(beginning do)
	|(calling allsym)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(8)
	movl	a4@(8),a2@+
L00226:
	cmpl	a4@(12),d7
	jne	L00227
	movl	d7,d0
	jra	L00228
L00227:
	movl	a4@(12),a1	|(calling remob)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(12),a5
	movl	a5@,a4@(12)
	jra	L00226
L00228:
	subql	#8,a2
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00230
	movl	a4@,a1	|(calling putprop)
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@(4),a0
	cmpl	#_nilatom+0x1400-4096,a0
	jle	L00231
	cmpl	#_nilatom+0x1400+4092,a0
	jle	L00232
L00231:
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00233
L00232:
	movl	a0,d0
	subql	#4,d0
	movl	d0,a2@+
L00233:
	movl	a3@(20),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00229
L00230:
	movl	a4@,a2@+	|(calling remprop)
	movl	a3@(20),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00229:
	movl	a4@(4),d0
	subql	#8,a2
	moveml	a6@(-20),#L00220
	unlk	a6
	rts
L00220 = 15488
L00219 = 20
	.globl	F00238	|(fcn lexpr symstat)
F00238:
	link	a6,#-L00241
	tstb	sp@(-132)
	moveml	#L00242,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00239:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	a4@,a2@+	|(beginning do)
	movl	d7,a2@+
L00243:
	movl	a4@(4),a5
	cmpl	#1,a5@
	jpl	L00244
	movl	a4@(8),d0
	jra	L00245
L00244:
	cmpl	#_nilatom+0x1400-4096,a4@(4)
	jle	L00246
	cmpl	#_nilatom+0x1400+4092,a4@(4)
	jle	L00247
L00246:
	movl	a4@(4),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00248
L00247:
	movl	a4@(4),d0
	subql	#4,d0
	movl	d0,a2@+
L00248:
	movl	a4@(4),d0
	cmpl	a4@(4),d7
	jeq	L00249
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00249
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00250
L00249:
	movl	a4@(-4),a2@+
L00250:
	movl	a4@(8),a2@+
	jbsr	_qcons
	movl	d0,a4@(8)
	movl	a2@-,a4@(4)
	jra	L00243
L00245:
	subql	#8,a2
	movl	d0,a2@+
	movl	d7,a2@+
	movl	a4@(4),a2@+	|(beginning do)
L00253:
	cmpl	a4@(12),d7
	jne	L00254
	movl	d7,d0
	jra	L00255
L00254:
	movl	a4@(12),a1
	movl	a1@(4),a2@+
	movl	a4@(16),a2@+
	movl	a4@(16),a2@+
	movl	a3@(20),a2@+
	jbsr	_qget
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#4,a2
	movl	d0,a2@+
	movl	a4@(8),a2@+
	jbsr	_qcons
	movl	d0,a4@(8)
	movl	a4@(12),a5
	movl	a5@,a4@(12)
	jra	L00253
L00255:
	subql	#4,a2	|(calling nreverse)
	movl	a4@(8),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subl	#12,a2
	moveml	a6@(-20),#L00242
	unlk	a6
	rts
L00242 = 15488
L00241 = 20
	.globl	F00258	|(fcn lexpr wide-print-list)
F00258:
	link	a6,#-L00261
	tstb	sp@(-132)
	moveml	#L00262,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00259:
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
	jle	L00266
	lea	a2@,a5	|(calling nwritn)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a4@(8)
	jra	L00265
L00266:
	movl	#_nilatom+0x1400+8,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(8)
L00265:
	movl	#_nilatom+0x1400+312,a2@+
	movl	a4@(8),a2@+	|(calling tab)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+136,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(4),a2@+	|(calling listp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+144,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00270
	movl	a4@(4),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00269
L00270:
	cmpl	a4@(4),d7
	jne	L00271
	movl	d7,a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00269
L00271:
	movl	a3@(24),a5	|(calling patom)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(4),a2@+	|(beginning do)
	movl	d7,a2@+
L00272:
	cmpl	a4@(16),d7
	jne	L00273
	movl	d7,d0
	jra	L00274
L00273:
	cmpl	a4@(20),d7
	jeq	L00276
	movl	a3@(28),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00275
L00276:
	movl	d7,d0
L00275:
	movl	a4@(16),a1
	movl	a1@(4),a2@+
	movl	a4@(24),a2@+	|(calling flatc)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+160,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@,a5	|(calling nwritn)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	movl	a4@(12),a5
	movl	a5@,d0
	movl	a4@(32),a5
	subl	a5@,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00277
	jbsr	_qnewint
L00277:
	movl	d0,a2@+
	movl	a4@(28),a2@+	|(calling lessp)
	movl	a4@(36),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00279
	cmpl	#_nilatom+0x1400+4088,a4@(8)	|(calling tab)
	jle	L00280
	movl	a4@(8),a0
	jbsr	_qoneplus
	movl	d0,a2@+
	jra	L00281
L00280:
	movl	a4@(8),d0
	addql	#4,d0
	movl	d0,a2@+
L00281:
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+136,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00278
L00279:
	movl	d7,d0
L00278:
	movl	a4@(24),a2@+	|(calling listp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+144,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00283
	movl	a4@(24),a2@+	|(calling wide-print-list)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+176,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00282
L00283:
	movl	a4@(24),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00282:
	subl	#16,a2
	movl	a4@(16),a5
	movl	a5@,a2@+
	movl	a3@(16),a5
	movl	a5@,a4@(20)
	movl	a2@-,a4@(16)
	jra	L00272
L00274:
	subql	#8,a2	|(calling patom)
	movl	a3@(32),a5
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00269:
	subl	#16,a2
	moveml	a6@(-28),#L00262
	unlk	a6
	rts
L00262 = 15556
L00261 = 28
bind_org:
	linker_size = 	9
	trans_size = 	23
	.long	99
	.long	99
	.long	2
	.long	99
	.long	0
	.long	99
	.long	0
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
.asciz "and"
.asciz "atom"
.asciz "not"
.asciz "numberp"
.asciz "t"
.asciz "symctr"
.asciz "lpar"
.asciz "\" \""
.asciz "rpar"
.asciz "equal"
.asciz "portp"
.asciz "tyipeek"
.asciz "tyi"
.asciz "read"
.asciz "tconc"
.asciz "set"
.asciz "initsym1"
.asciz "nreverse"
.asciz "putprop"
.asciz "concat"
.asciz "remsym1"
.asciz "oldsym"
.asciz "allsym"
.asciz "remob"
.asciz "remprop"
.asciz "nwritn"
.asciz "tab"
.asciz "listp"
.asciz "patom"
.asciz "flatc"
.asciz "lessp"
.asciz "wide-print-list"
.ascii "(setq fcn-in-common3.l \"common3.l compiled by Liszt 68000 ve"
.asciz "rsion 8.39a on Fri Dec 15 18:50:52 1989\")"
.ascii "(setq rcs-common2- \"$Header: common3.l,v 1.4 84/02/29 23:23:"
.asciz "35 layer Exp $\")"
.asciz "litatom"
.ascii "(putprop (quote litatom) (list (quote nil) fcn-in-common3.l)"
.asciz " (quote fcn-info))"
.asciz "nequal"
.ascii "(putprop (quote nequal) (list (quote (2 . 2)) fcn-in-common3"
.asciz ".l) (quote fcn-info))"
.asciz "lineread"
.ascii "(putprop (quote lineread) (list (quote (0)) fcn-in-common3.l"
.asciz ") (quote fcn-info))"
.asciz "defv"
.ascii "(putprop (quote defv) (list (quote nil) fcn-in-common3.l) (q"
.asciz "uote fcn-info))"
.asciz "initsym"
.ascii "(putprop (quote initsym) (list (quote (0)) fcn-in-common3.l)"
.asciz " (quote fcn-info))"
.asciz "initsym1"
.ascii "(putprop (quote initsym1) (list (quote (1 . 1)) fcn-in-commo"
.asciz "n3.l) (quote fcn-info))"
.asciz "newsym"
.ascii "(putprop (quote newsym) (list (quote (1 . 1)) fcn-in-common3"
.asciz ".l) (quote fcn-info))"
.asciz "oldsym"
.ascii "(putprop (quote oldsym) (list (quote (1 . 1)) fcn-in-common3"
.asciz ".l) (quote fcn-info))"
.asciz "allsym"
.ascii "(putprop (quote allsym) (list (quote (1 . 1)) fcn-in-common3"
.asciz ".l) (quote fcn-info))"
.asciz "remsym"
.ascii "(putprop (quote remsym) (list (quote (0)) fcn-in-common3.l) "
.asciz "(quote fcn-info))"
.asciz "remsym1"
.ascii "(putprop (quote remsym1) (list (quote (1 . 1)) fcn-in-common"
.asciz "3.l) (quote fcn-info))"
.asciz "symstat"
.ascii "(putprop (quote symstat) (list (quote (0)) fcn-in-common3.l)"
.asciz " (quote fcn-info))"
.asciz "wide-print-list"
.ascii "(putprop (quote wide-print-list) (list (quote (1 . 2)) fcn-i"
.asciz "n-common3.l) (quote fcn-info))"
lit_end:
.data | this is just for documentation 
.asciz "@(#)Compiled by Liszt 68000 version 8.39a on Fri Dec 15 18:51:01 1989"
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
