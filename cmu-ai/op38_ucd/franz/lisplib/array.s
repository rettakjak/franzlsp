	.globl	F00083	|(fcn macro array)
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
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(4),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@,a5	|(calling append)
	movl	a5@,a1
	movl	a1@,a5
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
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#4,a2
	moveml	a6@(-20),#L00087
	unlk	a6
	rts
L00087 = 15488
L00086 = 20
	.globl	F00088	|(fcn lexpr *array)
F00088:
	link	a6,#-L00091
	tstb	sp@(-132)
	moveml	#L00092,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00089:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a4@,a5	|(calling lessp)
	movl	a5@,d0
	subl	#2,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00096
	jbsr	_qnewint
L00096:
	movl	d0,a4@(28)
	movl	a4@(28),a2@+
	movl	#_nilatom+0x1400+4,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00095
	movl	a3@(8),a2@+	|(calling error)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00094
L00095:
	movl	d7,d0
L00094:
	movl	#_nilatom+0x1400+4,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(4)
	movl	#_nilatom+0x1400+8,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(8)
	movl	a4@(8),d5
	movl	a3@(12),d0
	cmpl	d0,d7
	jeq	L00102
	movl	d0,a0
L00104:
	cmpl	a0@(4),d5
	jeq	L00103
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00104
	movl	a0,d0
	jra	L00102
L00103:
	movl	a3@(16),d0
	jra	L00101
L00102:
	movl	a4@(8),d6
	cmpl	a3@(20),d6
	jne	L00105
	movl	a3@(24),d0
	jra	L00101
L00105:
	movl	a4@(8),d6
	cmpl	a3@(28),d6
	jne	L00106
	movl	a3@(32),d0
	jra	L00101
L00106:
	movl	a3@(36),a2@+	|(calling error)
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00101:
	movl	d0,a4@(12)
	movl	a4@,a2@+	|(beginning do)
	movl	d7,a2@+
L00107:
	cmpl	#_nilatom+0x1400+8,a4@(32)
	jne	L00108
	movl	a4@(36),d0
	jra	L00109
L00108:
	cmpl	#_nilatom+0x1400-4096,a4@(32)
	jle	L00110
	cmpl	#_nilatom+0x1400+4092,a4@(32)
	jle	L00111
L00110:
	movl	a4@(32),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00112
L00111:
	movl	a4@(32),d0
	subql	#4,d0
	movl	d0,a2@+
L00112:
	movl	a4@(32),d0
	cmpl	a4@(32),d7
	jeq	L00113
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00113
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00114
L00113:
	movl	a4@(-4),a2@+
L00114:
	movl	a4@(36),a2@+
	jbsr	_qcons
	movl	d0,a4@(36)
	movl	a2@-,a4@(32)
	jra	L00107
L00109:
	subql	#8,a2
	movl	d0,a4@(16)
	movl	a3@(40),a2@+	|(calling apply)
	movl	a4@(16),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(20)
	cmpl	a4@(8),d7
	jne	L00116
	movl	a3@(44),a4@(8)
	jra	L00115
L00116:
	movl	d7,d0
L00115:
	movl	a3@(48),a5
	movl	a5@,a2@+
	movl	_bnp,a1
	movl	a3@(52),a5
	movl	a5@,a1@+
	movl	a3@(52),a1@+
	movl	a3@(52),a5
	movl	a4@(32),a5@
	movl	a1,_bnp
	movl	a4@(12),a2@+	|(calling marray)
	|(calling small-segment)
	movl	a4@(20),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@(12),d6
	cmpl	a3@(16),d6
	jne	L00118
	cmpl	#_nilatom+0x1400+4,a4@(28)
	jne	L00120
	movl	a3@(56),a0
	movl	a0@(8),d0
	cmpl	a0@(8),d7
	jra	L00119
L00120:
	cmpl	#_nilatom+0x1400+8,a4@(28)
	jne	L00121
	movl	a3@(60),a0
	movl	a0@(8),d0
	cmpl	a0@(8),d7
	jra	L00119
L00121:
	movl	a3@(64),a0
	movl	a0@(8),d0
	cmpl	a0@(8),d7
L00119:
	jra	L00117
L00118:
	movl	a3@(64),a0
	movl	a0@(8),d0
	cmpl	a0@(8),d7
L00117:
	movl	d0,a2@+
	movl	a4@(8),a2@+
	movl	a4@(16),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(20),a2@+
	movl	a4@(12),a2@+	|(calling sizeof)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-20),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-20),a2
	movl	d0,a4@(24)
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subql	#4,a2
	movl	a3@(24),d6
	cmpl	a4@(8),d6
	jeq	L00126
	movl	a3@(20),d6
	cmpl	a4@(8),d6
	jne	L00125
L00126:
	movl	#_nilatom+0x1400+0,a4@(12)
	cmpl	#_nilatom+0x1400+0,d7
	jne	L00124
L00125:
	movl	a3@(32),d6
	cmpl	a4@(8),d6
	jeq	L00128
	movl	a3@(28),d6
	cmpl	a4@(8),d6
	jne	L00127
L00128:
	movl	a3@(68),a4@(12)
	cmpl	a3@(68),d7
	jne	L00124
L00127:
	movl	a3@(72),a2@+	|(calling status)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00130
	movl	a3@(76),a2@+	|(calling status)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00123
L00130:
	movl	d7,a4@(12)
	movl	a3@(48),a5
	movl	a5@,d0
	cmpl	d0,d7
	jeq	L00123
L00124:
	movl	a4@(20),a2@+	|(beginning do)
L00131:
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@(32),d6
	jne	L00132
	movl	a4@(32),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L00132
	movl	d7,d0
	jra	L00133
L00132:
	movl	a4@(24),a2@+	|(calling set)
	|(calling arrayref)
	cmpl	#_nilatom+0x1400-4096,a4@(32)
	jle	L00135
	cmpl	#_nilatom+0x1400+4092,a4@(32)
	jle	L00136
L00135:
	movl	a4@(32),a0
	jbsr	_qoneminus
	movl	d0,a4@(32)
	jra	L00137
L00136:
	movl	a4@(32),d0
	subql	#4,d0
	movl	d0,a4@(32)
L00137:
	movl	a4@(32),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00131
L00133:
	subql	#4,a2
	jra	L00122
L00123:
	movl	d7,d0
L00122:
	cmpl	a4@(4),d7
	jeq	L00139
	movl	a4@(4),a2@+	|(calling putd)
	movl	a4@(24),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00138
L00139:
	movl	d7,d0
L00138:
	movl	a4@(24),d0
	jra	L00093
|	movl	d7,d0
L00093:
	subl	#32,a2
	moveml	a6@(-32),#L00092
	unlk	a6
	rts
L00092 = 15588
L00091 = 32
	.globl	F00140	|(fcn macro arraycall)
F00140:
	link	a6,#-L00143
	tstb	sp@(-132)
	moveml	#L00144,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00141:
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
	movl	a3@(80),a2@+
	movl	a4@(8),a2@+
	movl	a4@(12),a2@+	|(calling append)
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
	subl	#16,a2
	moveml	a6@(-20),#L00144
	unlk	a6
	rts
L00144 = 15488
L00143 = 20
	.globl	F00145	|(fcn lambda array-type)
F00145:
	link	a6,#-L00148
	tstb	sp@(-132)
	moveml	#L00149,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00146:
	movl	a4@,a2@+	|(calling arrayp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00151
	movl	a3@(84),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00150
L00151:
	movl	a4@,a1
	movl	a1@(4),a0
	movl	a0@(4),d0
L00150:
	subql	#4,a2
	moveml	a6@(-20),#L00149
	unlk	a6
	rts
L00149 = 15488
L00148 = 20
	.globl	F00152	|(fcn lambda ev-arraycall)
F00152:
	link	a6,#-L00155
	tstb	sp@(-132)
	moveml	#L00156,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00153:
	movl	a4@(4),a2@+	|(calling apply)
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subl	#12,a2
	moveml	a6@(-20),#L00156
	unlk	a6
	rts
L00156 = 15488
L00155 = 20
	.globl	F00157	|(fcn lexpr arrac-oneD)
F00157:
	link	a6,#-L00160
	tstb	sp@(-132)
	moveml	#L00161,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00158:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	cmpl	#_nilatom+0x1400+8,a4@
	jne	L00163
	movl	#_nilatom+0x1400+4,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a0
	movl	a0@,d2
	movl	d2,sp@-
	movl	#_nilatom+0x1400+8,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a0
	movl	a0@(8),a0
	cmpl	a0@(8),d7
	movl	sp@+,d2
	movl	d2,d6
	asll	#2,d6
	lea	a0@(0,d6:L),a5
	movl	a5,a0
	cmpl	a0@(0,d6:L),d7
	movl	a0@,d0
	jra	L00162
L00163:
	cmpl	#_nilatom+0x1400+12,a4@
	jne	L00168
	movl	#_nilatom+0x1400+8,d0	|(calling set)
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a0
	movl	a0@,d2
	movl	d2,sp@-
	movl	#_nilatom+0x1400+12,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a0
	movl	a0@(8),a0
	cmpl	a0@(8),d7
	movl	sp@+,d2
	movl	d2,d6
	asll	#2,d6
	lea	a0@(0,d6:L),a5
	movl	a5,a2@+
	cmpl	a0@(0,d6:L),d7
	movl	#_nilatom+0x1400+4,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00162
L00168:
	movl	a3@(88),a2@+	|(calling error)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00162:
	subql	#4,a2
	moveml	a6@(-28),#L00161
	unlk	a6
	rts
L00161 = 15556
L00160 = 28
	.globl	F00175	|(fcn lexpr arrac-twoD)
F00175:
	link	a6,#-L00178
	tstb	sp@(-132)
	moveml	#L00179,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00176:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	a4@,d0
	cmpl	a4@,d7
	jeq	L00180
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00180
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a0
	jra	L00181
L00180:
	movl	a4@(-4),a0
L00181:
	movl	a0@(4),a2@+
	cmpl	#_nilatom+0x1400+12,a4@
	jne	L00183
	movl	#_nilatom+0x1400+4,d0	|(calling *)
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	movl	a4@(4),a5
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a0
	movl	a0@,d2
	movl	d2,sp@-
	movl	#_nilatom+0x1400+8,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a0
	movl	a0@,d2
	movl	sp@+,d0
	addl	d2,d0
	movl	d0,d2
	movl	d2,sp@-
	movl	a4@,d0
	cmpl	a4@,d7
	jeq	L00188
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00188
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a0
	jra	L00189
L00188:
	movl	a4@(-4),a0
L00189:
	movl	a0@(8),a0
	cmpl	a0@(8),d7
	movl	sp@+,d2
	movl	d2,d6
	asll	#2,d6
	lea	a0@(0,d6:L),a5
	movl	a5,a0
	cmpl	a0@(0,d6:L),d7
	movl	a0@,d0
	jra	L00182
L00183:
	cmpl	#_nilatom+0x1400+16,a4@
	jne	L00190
	movl	#_nilatom+0x1400+8,d0	|(calling set)
	|(calling *)
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	movl	a4@(4),a5
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a0
	movl	a0@,d2
	movl	d2,sp@-
	movl	#_nilatom+0x1400+12,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a0
	movl	a0@,d2
	movl	sp@+,d0
	addl	d2,d0
	movl	d0,d2
	movl	d2,sp@-
	movl	a4@,d0
	cmpl	a4@,d7
	jeq	L00195
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00195
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a0
	jra	L00196
L00195:
	movl	a4@(-4),a0
L00196:
	movl	a0@(8),a0
	cmpl	a0@(8),d7
	movl	sp@+,d2
	movl	d2,d6
	asll	#2,d6
	lea	a0@(0,d6:L),a5
	movl	a5,a2@+
	cmpl	a0@(0,d6:L),d7
	movl	#_nilatom+0x1400+4,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00182
L00190:
	movl	a3@(92),a2@+	|(calling error)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00182:
	subql	#8,a2
	moveml	a6@(-28),#L00179
	unlk	a6
	rts
L00179 = 15556
L00178 = 28
	.globl	F00199	|(fcn lexpr arrac-nD)
F00199:
	link	a6,#-L00202
	tstb	sp@(-132)
	moveml	#L00203,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00200:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	a4@,d0
	cmpl	a4@,d7
	jeq	L00204
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00204
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a0
	jra	L00205
L00204:
	movl	a4@(-4),a0
L00205:
	movl	a0@(4),a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	#_nilatom+0x1400+0,a2@+
	movl	a4@(4),a5	|(calling length)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(12)
	movl	a4@,a2@+
	cmpl	#_nilatom+0x1400+4088,a4@(12)
	jle	L00208
	movl	a4@(12),a0
	jbsr	_qoneplus
	jra	L00209
L00208:
	movl	a4@(12),d0
	addql	#4,d0
L00209:
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00207
	movl	#_nilatom+0x1400+4,a4@(8)
	jra	L00206
L00207:
	movl	a4@,a2@+
	movl	a4@(12),a5
	movl	a5@,d0
	addl	#2,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00211
	jbsr	_qnewint
L00211:
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00210
	movl	#_nilatom+0x1400+8,a4@(8)
	movl	a3@(48),a5
	movl	a5@,a4@(16)
	jra	L00206
L00210:
	movl	a3@(96),a2@+	|(calling error)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00206:
	movl	a4@(8),d0
	cmpl	a4@(8),d7
	jeq	L00212
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00212
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(20)
	jra	L00213
L00212:
	movl	a4@(-4),a4@(20)
L00213:
	movl	a4@(4),a5	|(beginning do)
	movl	a5@,a1
	movl	a1@,a2@+
	movl	a4@(8),a2@+
L00214:
	cmpl	a4@(24),d7
	jne	L00215
	movl	d7,d0
	jra	L00216
L00215:
	movl	a4@(20),a2@+	|(calling *)
	movl	a4@(24),a1
	movl	a1@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a0
	movl	a0@,d2
	movl	d2,sp@-
	cmpl	#_nilatom+0x1400+4088,a4@(28)
	jle	L00219
	movl	a4@(28),a0
	jbsr	_qoneplus
	movl	d0,a4@(28)
	jra	L00220
L00219:
	movl	a4@(28),d0
	addql	#4,d0
	movl	d0,a4@(28)
L00220:
	movl	a4@(28),d0
	cmpl	a4@(28),d7
	jeq	L00217
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00217
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a0
	jra	L00218
L00217:
	movl	a4@(-4),a0
L00218:
	movl	a0@,d2
	movl	sp@+,d0
	addl	d2,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00221
	jbsr	_qnewint
L00221:
	movl	d0,a4@(20)
	movl	a4@(24),a5
	movl	a5@,a4@(24)
	jra	L00214
L00216:
	subql	#8,a2	|(calling arrayref)
	movl	a4@,d0
	cmpl	a4@,d7
	jeq	L00222
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00222
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00223
L00222:
	movl	a4@(-4),a2@+
L00223:
	movl	a4@(20),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(12)
	movl	a4@(4),a1
	movl	a1@(4),d5
	movl	a3@(100),d0
	cmpl	d0,d7
	jeq	L00225
	movl	d0,a0
L00227:
	cmpl	a0@(4),d5
	jeq	L00226
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00227
	movl	a0,d0
	jra	L00225
L00226:
	cmpl	a4@(16),d7
	jeq	L00229
	movl	a4@(12),a2@+	|(calling replace)
	movl	#_nilatom+0x1400+4,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00228
L00229:
	movl	a4@(12),a2@+	|(calling cpy1)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00228:
	jra	L00224
L00225:
	cmpl	a4@(16),d7
	jeq	L00233
	movl	a4@(12),a2@+	|(calling set)
	movl	#_nilatom+0x1400+4,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00232
L00233:
	movl	a4@(12),a5
	movl	a5@,d0
L00232:
L00224:
	subl	#24,a2
	moveml	a6@(-32),#L00203
	unlk	a6
	rts
L00203 = 15588
L00202 = 32
	.globl	F00236	|(fcn macro store)
F00236:
	link	a6,#-L00239
	tstb	sp@(-132)
	moveml	#L00240,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00237:
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a0
	movl	a0@(4),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a5
	movl	a5@,a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+	|(beginning do)
L00241:
	cmpl	d7,d7
	jeq	L00242
	movl	d7,d0
	jra	L00243
L00242:
	movl	a3@(80),d6
	cmpl	a4@(4),d6
	jne	L00245
	movl	a3@(80),a2@+
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	a4@(12),a2@+
	movl	a4@(8),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00243
|	jra	L00244
L00245:
	movl	a3@(104),d6
	cmpl	a4@(4),d6
	jne	L00246
	movl	a3@(104),a2@+
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	a3@(108),a2@+
	movl	a4@(12),a2@+
	movl	a4@(8),a5	|(calling append)
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
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00243
|	jra	L00244
L00246:
	movl	a3@(112),d6
	cmpl	a4@(4),d6
	jne	L00247
	movl	a3@(80),a2@+
	movl	a4@(8),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@(12),a2@+
	movl	a4@(8),a5	|(calling append)
	movl	a5@,a0
	movl	a0@,a2@+
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
	jbsr	_qcons
	jra	L00243
|	jra	L00244
L00247:
	movl	a4@(4),a2@+	|(calling arrayp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00248
	movl	a3@(80),a2@+
	movl	a3@(4),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(12),a2@+
	movl	a4@(8),a2@+	|(calling append)
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
	jbsr	_qcons
	jra	L00243
|	jra	L00244
L00248:
	movl	d7,d0
L00244:
	movl	a4@(4),a1
	movl	a1@(8),a4@(16)
	cmpl	a1@(8),d7
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00252
	movl	a3@(116),a2@+
	movl	a4@(16),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jeq	L00251
L00252:
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00250
	movl	a3@(116),a2@+
	movl	a4@(16),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00250
L00251:
	movl	a4@(4),a2@+	|(calling apply)
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(16)
	movl	a4@(16),a1
	movl	a1@(4),a4@(4)
	movl	a4@(16),a5
	movl	a5@,a4@(8)
	jra	L00249
L00250:
	movl	a4@(4),a2@+
	movl	a4@(12),a2@+
	movl	a4@(8),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00243
L00249:
	jra	L00241
L00243:
	subl	#20,a2
	moveml	a6@(-24),#L00240
	unlk	a6
	rts
L00240 = 15552
L00239 = 24
	.globl	F00254	|(fcn lambda storeintern)
F00254:
	link	a6,#-L00257
	tstb	sp@(-132)
	moveml	#L00258,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00255:
	movl	a4@,a2@+	|(calling apply)
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subl	#12,a2
	moveml	a6@(-20),#L00258
	unlk	a6
	rts
L00258 = 15488
L00257 = 20
	.globl	F00259	|(fcn lambda small-segment)
F00259:
	link	a6,#-L00262
	tstb	sp@(-132)
	moveml	#L00263,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00260:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	_bnp,a1
	movl	a3@(52),a5
	movl	a5@,a1@+
	movl	a3@(52),a1@+
	movl	a3@(52),a5
	movl	d7,a5@
	movl	a1,_bnp
	movl	a3@(48),a5
	movl	a5@,d6
	movl	a3@(52),a5
	movl	d6,a5@
	movl	a3@(120),a2@+
	movl	a4@,a2@+
	jbsr	_qget
	movl	d0,a2@+
	movl	a4@(28),a1
	movl	a1@(4),a4@(16)
	movl	a4@(28),a5
	movl	a5@,a4@(20)
	subql	#4,a2
	cmpl	a4@(16),d7
	jne	L00267
	movl	a3@(124),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00266
L00267:
	movl	d7,d0
L00266:
	movl	a3@(128),a2@+
	movl	a4@,a2@+
	jbsr	_qget
	movl	d0,a4@(8)
	cmpl	a4@(8),d7
	jeq	L00269
	movl	a4@(8),a1	|(calling lessp)
	movl	a1@(4),a2@+
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00268
L00269:
	movl	#_nilatom+0x1400+16,a2@+	|(calling boole)
	movl	a4@(4),a5
	movl	a5@,d0
	movl	a4@(20),a5
	addl	a5@,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00270
	jbsr	_qnewint
L00270:
	movl	d0,a2@+
	movl	a4@(20),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a4@(12)
	movl	a4@(12),a2@+
	movl	a4@,a2@+	|(calling maknum)
	|(calling segment)
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+136,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+144,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(8)
L00268:
	movl	a4@(8),a5
	movl	a5@,a4@(12)
	movl	a4@(8),a2@+
	movl	a4@(8),a1
	movl	a1@(4),a0
	movl	a0@,d2
	movl	d2,d0
	movl	a4@(4),a5
	subl	a5@,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00271
	jbsr	_qnewint
L00271:
	movl	d0,d1
	movl	a2@-,a0
	movl	d1,a0@(4)
	movl	a0,d0
	movl	a4@(8),a2@+
	movl	a4@(8),a5
	movl	a5@,a0
	movl	a0@,d2
	movl	d2,sp@-
	movl	a4@(16),a2@+	|(calling *)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
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
	jcs	L00272
	jbsr	_qnewint
L00272:
	movl	d0,d1
	movl	a2@-,a0
	movl	d1,a0@
	movl	a0,d0
	movl	a4@(8),a1	|(calling greaterp)
	movl	a1@(4),a2@+
	movl	#_nilatom+0x1400+0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00274
	movl	a3@(128),a2@+	|(calling putprop)
	movl	a4@(8),a2@+
	movl	a4@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+160,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	a3@(132),a2@+
	movl	a4@,a2@+
	jbsr	_qget
	movl	d0,a4@(24)
	cmpl	d0,d7
	jne	L00276
	movl	a3@(132),a2@+	|(calling putprop)
	movl	d7,a2@+	|(calling marray)
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	lea	a2@(-20),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-20),a2
	movl	d0,a4@(24)
	movl	a4@(24),a2@+
	movl	a4@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+160,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00275
L00276:
	movl	d7,d0
L00275:
	movl	a4@(24),a2@+	|(calling putdata)
	movl	a4@(8),a5	|(calling fake)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+176,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@(24),a2@+	|(calling putlength)
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+184,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@(24),a2@+	|(calling putdelta)
	movl	a4@(16),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+192,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00273
L00274:
	movl	a3@(128),a2@+	|(calling remprop)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(132),a2@+	|(calling remprop)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00273:
	movl	a4@(12),a2@+	|(calling fake)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00264
|	movl	d7,d0
L00264:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subl	#28,a2
	moveml	a6@(-28),#L00263
	unlk	a6
	rts
L00263 = 15556
L00262 = 28
	.globl	F00277	|(fcn lambda arraydims)
F00277:
	link	a6,#-L00280
	tstb	sp@(-132)
	moveml	#L00281,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00278:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00283
	movl	a4@,a1
	movl	a1@(8),a0
	cmpl	a1@(8),d7
	movl	a0@(4),d0
	jra	L00282
L00283:
	movl	a4@,a2@+	|(calling arrayp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00284
	movl	a4@,a1
	movl	a1@(4),d0
	jra	L00282
L00284:
	movl	a3@(48),a5	|(calling *break)
	movl	a5@,a2@+
	movl	a3@(136),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00282:
	subql	#4,a2
	moveml	a6@(-20),#L00281
	unlk	a6
	rts
L00281 = 15488
L00280 = 20
	.globl	F00285	|(fcn lambda fillarray)
F00285:
	link	a6,#-L00288
	tstb	sp@(-132)
	moveml	#L00289,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00286:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00292
	movl	a4@,a1
	movl	a1@(8),a4@
	cmpl	a1@(8),d7
	jra	L00291
L00292:
	movl	d7,d0
L00291:
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00294
	movl	a4@(4),a1
	movl	a1@(8),a4@(4)
	cmpl	a1@(8),d7
	movl	a4@,a2@+	|(calling fillarrayarray)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+216,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00290
|	jra	L00293
L00294:
	movl	a4@(4),a2@+	|(calling arrayp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00295
	movl	a4@,a2@+	|(calling fillarrayarray)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+216,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00290
|	jra	L00293
L00295:
	movl	d7,d0
L00293:
	movl	a4@,a2@+	|(calling getlength)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a0
	cmpl	#_nilatom+0x1400-4096,a0
	jle	L00296
	cmpl	#_nilatom+0x1400+4092,a0
	jle	L00297
L00296:
	jbsr	_qoneminus
	movl	d0,a4@(8)
	jra	L00298
L00297:
	movl	a0,d0
	subql	#4,d0
	movl	d0,a4@(8)
L00298:
	movl	a4@,a1
	movl	a1@(4),a0
	movl	a0@(4),d5
	movl	a3@(140),d0
	cmpl	d0,d7
	jeq	L00300
	movl	d0,a0
L00302:
	cmpl	a0@(4),d5
	jeq	L00301
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00302
	movl	a0,d0
	jra	L00300
L00301:
	movl	a3@(48),a5
	movl	a5@,d0
	jra	L00299
L00300:
	movl	d7,d0
L00299:
	movl	d0,a4@(12)
	movl	a4@(4),a2@+	|(beginning do)
	movl	#_nilatom+0x1400+0,a2@+
L00303:
	movl	a4@(20),a5
	movl	a5@,d6
	movl	a4@(8),a5
	cmpl	a5@,d6
	jle	L00304
	movl	d7,d0
	jra	L00305
L00304:
	cmpl	a4@(12),d7
	jeq	L00307
	movl	a4@,a2@+	|(calling set)
	|(calling arrayref)
	movl	a4@(20),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@(16),a1
	movl	a1@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00306
L00307:
	movl	a4@,a2@+	|(calling replace)
	|(calling arrayref)
	movl	a4@(20),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@(16),a1
	movl	a1@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00306:
	movl	a4@(16),a5
	cmpl	a5@,d7
	jeq	L00309
	movl	a4@(16),a5
	movl	a5@,a4@(16)
	jra	L00308
L00309:
	movl	d7,d0
L00308:
	cmpl	#_nilatom+0x1400+4088,a4@(20)
	jle	L00310
	movl	a4@(20),a0
	jbsr	_qoneplus
	movl	d0,a4@(20)
	jra	L00311
L00310:
	movl	a4@(20),d0
	addql	#4,d0
	movl	d0,a4@(20)
L00311:
	jra	L00303
L00305:
	subql	#8,a2
	movl	d7,d0
L00290:
	subl	#16,a2
	moveml	a6@(-28),#L00289
	unlk	a6
	rts
L00289 = 15584
L00288 = 28
	.globl	F00312	|(fcn lambda fillarrayarray)
F00312:
	link	a6,#-L00315
	tstb	sp@(-132)
	moveml	#L00316,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00313:
	movl	d7,a2@+
	movl	a4@,a2@+	|(calling min)
	|(calling getlength)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(4),a2@+	|(calling getlength)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+232,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a0
	cmpl	#_nilatom+0x1400-4096,a0
	jle	L00318
	cmpl	#_nilatom+0x1400+4092,a0
	jle	L00319
L00318:
	jbsr	_qoneminus
	movl	d0,a4@(8)
	jra	L00320
L00319:
	movl	a0,d0
	subql	#4,d0
	movl	d0,a4@(8)
L00320:
	movl	#_nilatom+0x1400+0,a2@+	|(beginning do)
L00321:
	movl	a4@(12),a5
	movl	a5@,d6
	movl	a4@(8),a5
	cmpl	a5@,d6
	jle	L00322
	movl	d7,d0
	jra	L00323
L00322:
	movl	a4@,a2@+	|(calling replace)
	|(calling arrayref)
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@(4),a2@+	|(calling arrayref)
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	#_nilatom+0x1400+4088,a4@(12)
	jle	L00324
	movl	a4@(12),a0
	jbsr	_qoneplus
	movl	d0,a4@(12)
	jra	L00325
L00324:
	movl	a4@(12),d0
	addql	#4,d0
	movl	d0,a4@(12)
L00325:
	jra	L00321
L00323:
	subql	#4,a2
	movl	d7,d0
L00317:
	subl	#12,a2
	moveml	a6@(-24),#L00316
	unlk	a6
	rts
L00316 = 15552
L00315 = 24
	.globl	F00326	|(fcn lexpr listarray)
F00326:
	link	a6,#-L00329
	tstb	sp@(-132)
	moveml	#L00330,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00327:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	#_nilatom+0x1400+4,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(4)
	movl	a4@(4),a2@+	|(calling arrayp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00334
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00335
	movl	a4@(4),a1	|(calling arrayp)
	movl	a1@(8),a4@(4)
	cmpl	a1@(8),d7
	movl	a4@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00334
L00335:
	movl	a3@(144),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00334:
	cmpl	#_nilatom+0x1400+8,a4@
	jne	L00337
	movl	#_nilatom+0x1400+8,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),d0
	jra	L00336
L00337:
	movl	a3@(148),a2@+	|(calling apply)
	movl	a4@(4),a2@+	|(calling arraydims)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a0
	movl	a0@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00336:
	movl	d0,a4@(8)
	movl	a4@(4),a1
	movl	a1@(4),a0
	movl	a0@(4),a4@(12)
	movl	a4@(12),d5
	movl	a3@(152),d0
	cmpl	d0,d7
	jeq	L00341
	movl	d0,a0
L00343:
	cmpl	a0@(4),d5
	jeq	L00342
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00343
	movl	a0,d0
	jra	L00341
L00342:
	movl	a3@(48),a5
	movl	a5@,a4@(12)
	jra	L00340
L00341:
	movl	d7,a4@(12)
L00340:
	cmpl	#_nilatom+0x1400-4096,a4@(8)	|(beginning do)
	jle	L00346
	cmpl	#_nilatom+0x1400+4092,a4@(8)
	jle	L00347
L00346:
	movl	a4@(8),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00348
L00347:
	movl	a4@(8),d0
	subql	#4,d0
	movl	d0,a2@+
L00348:
L00344:
	movl	a4@(24),a2@+	|(calling lessp)
	movl	#_nilatom+0x1400+0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00345
	movl	d7,d0
	jra	L00349
L00345:
	movl	a4@(4),a2@+	|(calling arrayref)
	movl	a4@(24),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(20)
	cmpl	a4@(12),d7
	jeq	L00351
	movl	a4@(20),a2@+	|(calling eval)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+248,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00350
L00351:
	movl	a4@(20),a2@+	|(calling cpy1)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00350:
	movl	d0,a2@+
	movl	a4@(16),a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	cmpl	#_nilatom+0x1400-4096,a4@(24)
	jle	L00352
	cmpl	#_nilatom+0x1400+4092,a4@(24)
	jle	L00353
L00352:
	movl	a4@(24),a0
	jbsr	_qoneminus
	movl	d0,a4@(24)
	jra	L00354
L00353:
	movl	a4@(24),d0
	subql	#4,d0
	movl	d0,a4@(24)
L00354:
	jra	L00344
L00349:
	subql	#4,a2
	movl	a4@(16),d0
	jra	L00331
|	movl	d7,d0
L00331:
	subl	#24,a2
	moveml	a6@(-24),#L00330
	unlk	a6
	rts
L00330 = 15520
L00329 = 24
bind_org:
	linker_size = 	39
	trans_size = 	32
	.long	99
	.long	99
	.long	2
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
	.long	0
	.long	99
	.long	0
	.long	99
	.long	2
	.long	99
	.long	0
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
	.long	0
	.long	99
	.long	0
	.long	99
	.long -1
lit_org:
.asciz "*array"
.asciz "quote"
.asciz "\"no bounds to array declaration \""
.asciz "(t nil fixnum flonum)"
.asciz "value"
.asciz "fixnum-block"
.asciz "fixnum"
.asciz "flonum-block"
.asciz "flonum"
.asciz "\"array: bad type: \""
.asciz "times"
.asciz "unmarked_array"
.asciz "t"
.asciz "gcdisable"
.asciz "arrac-oneD"
.asciz "arrac-twoD"
.asciz "arrac-nD"
.asciz "0.0"
.asciz "(feature \\68k)"
.asciz "(feature for-68k)"
.asciz "funcall"
.asciz "\"array-type: non array passed \""
.asciz "\" wrong number of subscripts to array\""
.asciz "\" wrong number of subscripts to array\""
.asciz "\"wrong number of subscripts to array\""
.asciz "(fixnum-block flonum-block)"
.asciz "apply"
.asciz "cons"
.asciz "arraycall"
.asciz "macro"
.asciz "segment-sizes"
.asciz "\"small-segment: bad type \""
.asciz "segment-types"
.asciz "segment-arrays"
.asciz "(quote \"non array arg to arraydims\")"
.asciz "(t fixnum flonum unmarked_array)"
.asciz "\"Non array to listarray \""
.asciz "*"
.asciz "(t fixnum flonum unmarked_array)"
.asciz "append"
.asciz "lessp"
.asciz "error"
.asciz "apply"
.asciz "small-segment"
.asciz "sizeof"
.asciz "marray"
.asciz "status"
.asciz "arrayref"
.asciz "set"
.asciz "putd"
.asciz "arrayp"
.asciz "*"
.asciz "length"
.asciz "replace"
.asciz "cpy1"
.asciz "boole"
.asciz "segment"
.asciz "maknum"
.asciz "greaterp"
.asciz "putprop"
.asciz "fake"
.asciz "putdata"
.asciz "putlength"
.asciz "putdelta"
.asciz "remprop"
.asciz "*break"
.asciz "fillarrayarray"
.asciz "getlength"
.asciz "min"
.asciz "arraydims"
.asciz "eval"
.ascii "(setq fcn-in-array.l \"array.l compiled by Liszt 68000 versio"
.asciz "n 8.39a on Fri Dec 15 18:53:19 1989\")"
.ascii "(setq rcs-array- \"$Header: array.l 1.5 83/07/05 23:51:58 lay"
.asciz "er Exp $\")"
.asciz "array"
.ascii "(putprop (quote array) (list (quote nil) fcn-in-array.l) (qu"
.asciz "ote fcn-info))"
.asciz "*array"
.ascii "(putprop (quote *array) (list (quote nil) fcn-in-array.l) (q"
.asciz "uote fcn-info))"
.asciz "arraycall"
.ascii "(putprop (quote arraycall) (list (quote nil) fcn-in-array.l)"
.asciz " (quote fcn-info))"
.asciz "array-type"
.ascii "(putprop (quote array-type) (list (quote (1 . 1)) fcn-in-arr"
.asciz "ay.l) (quote fcn-info))"
.asciz "ev-arraycall"
.ascii "(putprop (quote ev-arraycall) (list (quote (3 . 3)) fcn-in-a"
.asciz "rray.l) (quote fcn-info))"
.asciz "arrac-oneD"
.ascii "(putprop (quote arrac-oneD) (list (quote nil) fcn-in-array.l"
.asciz ") (quote fcn-info))"
.asciz "arrac-twoD"
.ascii "(putprop (quote arrac-twoD) (list (quote nil) fcn-in-array.l"
.asciz ") (quote fcn-info))"
.asciz "arrac-nD"
.ascii "(putprop (quote arrac-nD) (list (quote nil) fcn-in-array.l) "
.asciz "(quote fcn-info))"
.asciz "store"
.ascii "(putprop (quote store) (list (quote nil) fcn-in-array.l) (qu"
.asciz "ote fcn-info))"
.asciz "storeintern"
.ascii "(putprop (quote storeintern) (list (quote (3 . 3)) fcn-in-ar"
.asciz "ray.l) (quote fcn-info))"
.asciz "small-segment"
.ascii "(putprop (quote small-segment) (list (quote (2 . 2)) fcn-in-"
.asciz "array.l) (quote fcn-info))"
.ascii "(putprop (quote segment-sizes) (quote (4 . 127)) (quote valu"
.asciz "e))"
.ascii "(putprop (quote segment-sizes) (quote (4 . 127)) (quote fixn"
.asciz "um))"
.ascii "(putprop (quote segment-sizes) (quote (8 . 63)) (quote flonu"
.asciz "m))"
.asciz "arraydims"
.ascii "(putprop (quote arraydims) (list (quote (1 . 1)) fcn-in-arra"
.asciz "y.l) (quote fcn-info))"
.asciz "fillarray"
.ascii "(putprop (quote fillarray) (list (quote (2 . 2)) fcn-in-arra"
.asciz "y.l) (quote fcn-info))"
.asciz "fillarrayarray"
.ascii "(putprop (quote fillarrayarray) (list (quote (2 . 2)) fcn-in"
.asciz "-array.l) (quote fcn-info))"
.asciz "listarray"
.ascii "(putprop (quote listarray) (list (quote nil) fcn-in-array.l)"
.asciz " (quote fcn-info))"
lit_end:
.data | this is just for documentation 
.asciz "@(#)Compiled by Liszt 68000 version 8.39a on Fri Dec 15 18:53:33 1989"
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
