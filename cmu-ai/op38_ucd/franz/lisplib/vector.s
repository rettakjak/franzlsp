	.globl	F00084	|(fcn lexpr vector)
F00084:
	link	a6,#-L00087
	tstb	sp@(-132)
	moveml	#L00088,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00085:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	a4@,a2@+	|(calling new-vector)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@,a2@+	|(beginning do)
	cmpl	#_nilatom+0x1400-4096,a4@
	jle	L00091
	cmpl	#_nilatom+0x1400+4092,a4@
	jle	L00092
L00091:
	movl	a4@,a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00093
L00092:
	movl	a4@,d0
	subql	#4,d0
	movl	d0,a2@+
L00093:
L00089:
	movl	a4@(12),a5
	cmpl	#0,a5@
	jpl	L00090
	movl	d7,d0
	jra	L00094
L00090:
	movl	a4@(4),a2@+	|(calling int:vset)
	movl	a4@(12),a2@+
	movl	a4@(8),d0
	cmpl	a4@(8),d7
	jeq	L00095
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00095
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00096
L00095:
	movl	a4@(-4),a2@+
L00096:
	movl	#_nilatom+0x1400+12,a2@+
	lea	a2@(-16),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-16),a2
	movl	a4@(12),a2@+
	cmpl	#_nilatom+0x1400-4096,a4@(12)
	jle	L00097
	cmpl	#_nilatom+0x1400+4092,a4@(12)
	jle	L00098
L00097:
	movl	a4@(12),a0
	jbsr	_qoneminus
	movl	d0,a4@(12)
	jra	L00099
L00098:
	movl	a4@(12),d0
	subql	#4,d0
	movl	d0,a4@(12)
L00099:
	movl	a2@-,a4@(8)
	jra	L00089
L00094:
	subql	#8,a2
	movl	a4@(4),d0
	subql	#8,a2
	moveml	a6@(-20),#L00088
	unlk	a6
	rts
L00088 = 15488
L00087 = 20
	.globl	F00100	|(fcn lexpr vectori-byte)
F00100:
	link	a6,#-L00103
	tstb	sp@(-132)
	moveml	#L00104,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00101:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	a4@,a2@+	|(calling new-vectori-byte)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@,a2@+	|(beginning do)
	cmpl	#_nilatom+0x1400-4096,a4@
	jle	L00107
	cmpl	#_nilatom+0x1400+4092,a4@
	jle	L00108
L00107:
	movl	a4@,a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00109
L00108:
	movl	a4@,d0
	subql	#4,d0
	movl	d0,a2@+
L00109:
L00105:
	movl	a4@(12),a5
	cmpl	#0,a5@
	jpl	L00106
	movl	d7,d0
	jra	L00110
L00106:
	movl	a4@(4),a2@+	|(calling int:vset)
	movl	a4@(12),a2@+
	movl	a4@(8),d0
	cmpl	a4@(8),d7
	jeq	L00111
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00111
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00112
L00111:
	movl	a4@(-4),a2@+
L00112:
	movl	#_nilatom+0x1400+0,a2@+
	lea	a2@(-16),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-16),a2
	movl	a4@(12),a2@+
	cmpl	#_nilatom+0x1400-4096,a4@(12)
	jle	L00113
	cmpl	#_nilatom+0x1400+4092,a4@(12)
	jle	L00114
L00113:
	movl	a4@(12),a0
	jbsr	_qoneminus
	movl	d0,a4@(12)
	jra	L00115
L00114:
	movl	a4@(12),d0
	subql	#4,d0
	movl	d0,a4@(12)
L00115:
	movl	a2@-,a4@(8)
	jra	L00105
L00110:
	subql	#8,a2
	movl	a4@(4),d0
	subql	#8,a2
	moveml	a6@(-20),#L00104
	unlk	a6
	rts
L00104 = 15488
L00103 = 20
	.globl	F00116	|(fcn lexpr vectori-word)
F00116:
	link	a6,#-L00119
	tstb	sp@(-132)
	moveml	#L00120,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00117:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	a4@,a2@+	|(calling new-vectori-word)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@,a2@+	|(beginning do)
	cmpl	#_nilatom+0x1400-4096,a4@
	jle	L00123
	cmpl	#_nilatom+0x1400+4092,a4@
	jle	L00124
L00123:
	movl	a4@,a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00125
L00124:
	movl	a4@,d0
	subql	#4,d0
	movl	d0,a2@+
L00125:
L00121:
	movl	a4@(12),a5
	cmpl	#0,a5@
	jpl	L00122
	movl	d7,d0
	jra	L00126
L00122:
	movl	a4@(4),a2@+	|(calling int:vset)
	movl	a4@(12),a2@+
	movl	a4@(8),d0
	cmpl	a4@(8),d7
	jeq	L00127
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00127
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00128
L00127:
	movl	a4@(-4),a2@+
L00128:
	movl	#_nilatom+0x1400+4,a2@+
	lea	a2@(-16),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-16),a2
	movl	a4@(12),a2@+
	cmpl	#_nilatom+0x1400-4096,a4@(12)
	jle	L00129
	cmpl	#_nilatom+0x1400+4092,a4@(12)
	jle	L00130
L00129:
	movl	a4@(12),a0
	jbsr	_qoneminus
	movl	d0,a4@(12)
	jra	L00131
L00130:
	movl	a4@(12),d0
	subql	#4,d0
	movl	d0,a4@(12)
L00131:
	movl	a2@-,a4@(8)
	jra	L00121
L00126:
	subql	#8,a2
	movl	a4@(4),d0
	subql	#8,a2
	moveml	a6@(-20),#L00120
	unlk	a6
	rts
L00120 = 15488
L00119 = 20
	.globl	F00132	|(fcn lexpr vectori-long)
F00132:
	link	a6,#-L00135
	tstb	sp@(-132)
	moveml	#L00136,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00133:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	a4@,a2@+	|(calling new-vectori-long)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@,a2@+	|(beginning do)
	cmpl	#_nilatom+0x1400-4096,a4@
	jle	L00139
	cmpl	#_nilatom+0x1400+4092,a4@
	jle	L00140
L00139:
	movl	a4@,a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00141
L00140:
	movl	a4@,d0
	subql	#4,d0
	movl	d0,a2@+
L00141:
L00137:
	movl	a4@(12),a5
	cmpl	#0,a5@
	jpl	L00138
	movl	d7,d0
	jra	L00142
L00138:
	movl	a4@(4),a2@+	|(calling int:vset)
	movl	a4@(12),a2@+
	movl	a4@(8),d0
	cmpl	a4@(8),d7
	jeq	L00143
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00143
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00144
L00143:
	movl	a4@(-4),a2@+
L00144:
	movl	#_nilatom+0x1400+8,a2@+
	lea	a2@(-16),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-16),a2
	movl	a4@(12),a2@+
	cmpl	#_nilatom+0x1400-4096,a4@(12)
	jle	L00145
	cmpl	#_nilatom+0x1400+4092,a4@(12)
	jle	L00146
L00145:
	movl	a4@(12),a0
	jbsr	_qoneminus
	movl	d0,a4@(12)
	jra	L00147
L00146:
	movl	a4@(12),d0
	subql	#4,d0
	movl	d0,a4@(12)
L00147:
	movl	a2@-,a4@(8)
	jra	L00137
L00142:
	subql	#8,a2
	movl	a4@(4),d0
	subql	#8,a2
	moveml	a6@(-20),#L00136
	unlk	a6
	rts
L00136 = 15488
L00135 = 20
	.globl	F00149	|(fcn lambda vref)
F00149:
	link	a6,#-L00152
	tstb	sp@(-132)
	moveml	#L00153,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00150:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jeq	L00155
	movl	a3@,a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00154
L00155:
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
	jne	L00156
	movl	a3@(4),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00154
L00156:
	movl	a4@(4),a5
	cmpl	#0,a5@
	jmi	L00160
	movl	a4@(4),a2@+	|(calling lessp)
	movl	a4@,a0
	movl	a0@(-8),d2
	asrl	#2,d2
	jbsr	_qnewint
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00159
L00160:
	movl	a3@(8),a2@+	|(calling error)
	movl	a4@(4),a2@+
	movl	a4@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00154
L00159:
	movl	a4@,a2@+	|(calling int:vref)
	movl	a4@(4),a2@+
	movl	#_nilatom+0x1400+12,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00154:
	subql	#8,a2
	moveml	a6@(-20),#L00153
	unlk	a6
	rts
L00153 = 15488
L00152 = 20
	.globl	F00161	|(fcn lambda vrefi-byte)
F00161:
	link	a6,#-L00164
	tstb	sp@(-132)
	moveml	#L00165,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00162:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#19,a5@(0,d0:L)
	jeq	L00167
	movl	a3@,a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00166
L00167:
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
	jne	L00168
	movl	a3@(4),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00166
L00168:
	movl	a4@(4),a5
	cmpl	#0,a5@
	jmi	L00172
	movl	a4@(4),a2@+	|(calling lessp)
	movl	a4@,a0
	movl	a0@(-8),d2
	jbsr	_qnewint
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00171
L00172:
	movl	a3@(8),a2@+	|(calling error)
	movl	a4@(4),a2@+
	movl	a4@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00166
L00171:
	movl	a4@,a2@+	|(calling int:vref)
	movl	a4@(4),a2@+
	movl	#_nilatom+0x1400+0,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00166:
	subql	#8,a2
	moveml	a6@(-20),#L00165
	unlk	a6
	rts
L00165 = 15488
L00164 = 20
	.globl	F00173	|(fcn lambda vrefi-word)
F00173:
	link	a6,#-L00176
	tstb	sp@(-132)
	moveml	#L00177,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00174:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#19,a5@(0,d0:L)
	jeq	L00179
	movl	a3@,a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00178
L00179:
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
	jne	L00180
	movl	a3@(4),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00178
L00180:
	movl	a4@(4),a5
	cmpl	#0,a5@
	jmi	L00184
	movl	a4@(4),a2@+	|(calling lessp)
	movl	a4@,a0
	movl	a0@(-8),d2
	asrl	#1,d2
	jbsr	_qnewint
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00183
L00184:
	movl	a3@(8),a2@+	|(calling error)
	movl	a4@(4),a2@+
	movl	a4@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00178
L00183:
	movl	a4@,a2@+	|(calling int:vref)
	movl	a4@(4),a2@+
	movl	#_nilatom+0x1400+4,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00178:
	subql	#8,a2
	moveml	a6@(-20),#L00177
	unlk	a6
	rts
L00177 = 15488
L00176 = 20
	.globl	F00185	|(fcn lambda vrefi-long)
F00185:
	link	a6,#-L00188
	tstb	sp@(-132)
	moveml	#L00189,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00186:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#19,a5@(0,d0:L)
	jeq	L00191
	movl	a3@,a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00190
L00191:
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
	jne	L00192
	movl	a3@(4),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00190
L00192:
	movl	a4@(4),a5
	cmpl	#0,a5@
	jmi	L00196
	movl	a4@(4),a2@+	|(calling lessp)
	movl	a4@,a0
	movl	a0@(-8),d2
	asrl	#2,d2
	jbsr	_qnewint
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00195
L00196:
	movl	a3@(8),a2@+	|(calling error)
	movl	a4@(4),a2@+
	movl	a4@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00190
L00195:
	movl	a4@,a2@+	|(calling int:vref)
	movl	a4@(4),a2@+
	movl	#_nilatom+0x1400+8,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00190:
	subql	#8,a2
	moveml	a6@(-20),#L00189
	unlk	a6
	rts
L00189 = 15488
L00188 = 20
	.globl	F00198	|(fcn lambda vset)
F00198:
	link	a6,#-L00201
	tstb	sp@(-132)
	moveml	#L00202,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00199:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jeq	L00204
	movl	a3@(12),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00203
L00204:
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
	jne	L00205
	movl	a3@(16),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00203
L00205:
	movl	a4@(4),a5
	cmpl	#0,a5@
	jmi	L00209
	movl	a4@(4),a5
	movl	a5@,a2@+
	movl	a4@,a0
	movl	a0@(-8),d2
	asrl	#2,d2
	jbsr	_qnewint
	movl	d0,a0
	movl	a0@,d0
	movl	a2@-,d6
	cmpl	d0,d6
	jmi	L00208
L00209:
	movl	a3@(20),a2@+	|(calling error)
	movl	a4@(4),a2@+
	movl	a4@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00203
L00208:
	movl	a4@,a2@+	|(calling int:vset)
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	movl	#_nilatom+0x1400+12,a2@+
	lea	a2@(-16),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-16),a2
L00203:
	subl	#12,a2
	moveml	a6@(-24),#L00202
	unlk	a6
	rts
L00202 = 15552
L00201 = 24
	.globl	F00210	|(fcn lambda vseti-byte)
F00210:
	link	a6,#-L00213
	tstb	sp@(-132)
	moveml	#L00214,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00211:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#19,a5@(0,d0:L)
	jeq	L00216
	movl	a3@(12),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00215
L00216:
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
	jne	L00217
	movl	a3@(16),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00215
L00217:
	movl	a4@(4),a5
	cmpl	#0,a5@
	jmi	L00221
	movl	a4@(4),a5
	movl	a5@,a2@+
	movl	a4@,a0
	movl	a0@(-8),d2
	jbsr	_qnewint
	movl	d0,a0
	movl	a0@,d0
	movl	a2@-,d6
	cmpl	d0,d6
	jmi	L00220
L00221:
	movl	a3@(20),a2@+	|(calling error)
	movl	a4@(4),a2@+
	movl	a4@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00215
L00220:
	movl	a4@,a2@+	|(calling int:vset)
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	movl	#_nilatom+0x1400+0,a2@+
	lea	a2@(-16),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-16),a2
L00215:
	subl	#12,a2
	moveml	a6@(-24),#L00214
	unlk	a6
	rts
L00214 = 15552
L00213 = 24
	.globl	F00222	|(fcn lambda vseti-word)
F00222:
	link	a6,#-L00225
	tstb	sp@(-132)
	moveml	#L00226,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00223:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#19,a5@(0,d0:L)
	jeq	L00228
	movl	a3@(12),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00227
L00228:
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
	jne	L00229
	movl	a3@(16),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00227
L00229:
	movl	a4@(4),a5
	cmpl	#0,a5@
	jmi	L00233
	movl	a4@(4),a5
	movl	a5@,a2@+
	movl	a4@,a0
	movl	a0@(-8),d2
	asrl	#1,d2
	jbsr	_qnewint
	movl	d0,a0
	movl	a0@,d0
	movl	a2@-,d6
	cmpl	d0,d6
	jmi	L00232
L00233:
	movl	a3@(20),a2@+	|(calling error)
	movl	a4@(4),a2@+
	movl	a4@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00227
L00232:
	movl	a4@,a2@+	|(calling int:vset)
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	movl	#_nilatom+0x1400+4,a2@+
	lea	a2@(-16),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-16),a2
L00227:
	subl	#12,a2
	moveml	a6@(-24),#L00226
	unlk	a6
	rts
L00226 = 15552
L00225 = 24
	.globl	F00234	|(fcn lambda vseti-long)
F00234:
	link	a6,#-L00237
	tstb	sp@(-132)
	moveml	#L00238,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00235:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#19,a5@(0,d0:L)
	jeq	L00240
	movl	a3@(12),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
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
	andw	#516,d0
	jne	L00241
	movl	a3@(16),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00239
L00241:
	movl	a4@(4),a5
	cmpl	#0,a5@
	jmi	L00245
	movl	a4@(4),a5
	movl	a5@,a2@+
	movl	a4@,a0
	movl	a0@(-8),d2
	asrl	#2,d2
	jbsr	_qnewint
	movl	d0,a0
	movl	a0@,d0
	movl	a2@-,d6
	cmpl	d0,d6
	jmi	L00244
L00245:
	movl	a3@(20),a2@+	|(calling error)
	movl	a4@(4),a2@+
	movl	a4@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00239
L00244:
	movl	a4@,a2@+	|(calling int:vset)
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	movl	#_nilatom+0x1400+8,a2@+
	lea	a2@(-16),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-16),a2
L00239:
	subl	#12,a2
	moveml	a6@(-24),#L00238
	unlk	a6
	rts
L00238 = 15552
L00237 = 24
	.globl	F00246	|(fcn lambda vsize)
F00246:
	link	a6,#-L00249
	tstb	sp@(-132)
	moveml	#L00250,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00247:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jeq	L00253
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#19,a5@(0,d0:L)
	jne	L00252
L00253:
	movl	a4@,a2@+	|(calling int:vsize)
	movl	#_nilatom+0x1400+8,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00251
L00252:
	movl	a3@(24),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00251:
	subql	#4,a2
	moveml	a6@(-20),#L00250
	unlk	a6
	rts
L00250 = 15488
L00249 = 20
	.globl	F00254	|(fcn lambda vsize-word)
F00254:
	link	a6,#-L00257
	tstb	sp@(-132)
	moveml	#L00258,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00255:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#19,a5@(0,d0:L)
	jne	L00260
	movl	a4@,a2@+	|(calling int:vsize)
	movl	#_nilatom+0x1400+4,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00259
L00260:
	movl	a3@(28),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00259:
	subql	#4,a2
	moveml	a6@(-20),#L00258
	unlk	a6
	rts
L00258 = 15488
L00257 = 20
	.globl	F00261	|(fcn lambda vsize-byte)
F00261:
	link	a6,#-L00264
	tstb	sp@(-132)
	moveml	#L00265,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00262:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#19,a5@(0,d0:L)
	jne	L00267
	movl	a4@,a2@+	|(calling int:vsize)
	movl	#_nilatom+0x1400+0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00266
L00267:
	movl	a3@(32),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00266:
	subql	#4,a2
	moveml	a6@(-20),#L00265
	unlk	a6
	rts
L00265 = 15488
L00264 = 20
	.globl	F00268	|(fcn lambda vget)
F00268:
	link	a6,#-L00271
	tstb	sp@(-132)
	moveml	#L00272,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00269:
	movl	a4@,a2@+	|(calling vprop)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(8),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00274
	movl	a4@(8),a2@+
	movl	a4@(4),a2@+
	jbsr	_qget
	jra	L00273
L00274:
	movl	d7,d0
L00273:
	subl	#12,a2
	moveml	a6@(-20),#L00272
	unlk	a6
	rts
L00272 = 15488
L00271 = 20
	.globl	F00275	|(fcn lambda vputprop)
F00275:
	link	a6,#-L00278
	tstb	sp@(-132)
	moveml	#L00279,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00276:
	movl	a4@,a2@+	|(calling vprop)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(12),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jeq	L00281
	movl	a4@(12),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	movl	a4@,a2@+	|(calling vsetprop)
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00280
L00281:
	movl	d7,d0
L00280:
	movl	a4@(12),a2@+	|(calling putprop)
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-12),a2
	subl	#16,a2
	moveml	a6@(-20),#L00279
	unlk	a6
	rts
L00279 = 15488
L00278 = 20
	.globl	F00282	|(fcn lambda make-fclosure-with-alist)
F00282:
	link	a6,#-L00285
	tstb	sp@(-132)
	moveml	#L00286,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00283:
	cmpl	a4@,d7
	jeq	L00288
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jeq	L00288
	movl	a3@(36),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00287
L00288:
	movl	d7,d0
L00287:
	movl	a4@,a2@+	|(calling new-vector)
	|(calling length)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a0
	cmpl	#_nilatom+0x1400+4088,a0
	jle	L00290
	jbsr	_qoneplus
	movl	d0,a2@+
	jra	L00291
L00290:
	movl	a0,d0
	addql	#4,d0
	movl	d0,a2@+
L00291:
	movl	d7,a2@+
	movl	a3@(40),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	movl	a4@,a2@+	|(beginning do)
	movl	d7,a2@+
	movl	d7,a2@+
	movl	#_nilatom+0x1400+4,a2@+
L00292:
	cmpl	a4@(16),d7
	jne	L00293
	movl	a4@(12),a0
	moveq	#0,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00295
	jmp	vecindexerr
L00295:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a4@(4),a1@
	jra	L00296
vecindexerr:
	movl	a0,a2@+
	jbsr	_qnewint
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00296:
	movl	a4@(12),d0
	jra	L00294
L00293:
	movl	a4@(16),a1
	movl	a1@(4),a4@(24)
	movl	a4@(24),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00298
	movl	a3@(44),a2@+	|(calling error)
	movl	a4@(24),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00297
L00298:
	movl	d7,d0
L00297:
	cmpl	a4@(24),d7
	jne	L00300
	movl	a3@(48),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00299
L00300:
	movl	d7,d0
L00299:
	movl	a4@(24),a2@+	|(beginning do)
	movl	a4@(8),a2@+
L00303:
	cmpl	a4@(36),d7
	jne	L00304
	movl	d7,d0
	jra	L00305
L00304:
	movl	a4@(32),a2@+
	movl	a4@(36),a1
	movl	a1@(4),a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00307
	movl	a4@(36),a1
	movl	a1@(4),d0
	jra	L00305
|	jra	L00306
L00307:
	movl	d7,d0
L00306:
	movl	a4@(36),a5
	movl	a5@,a4@(36)
	jra	L00303
L00305:
	subql	#8,a2
	movl	d0,a4@(20)
	cmpl	d0,d7
	jne	L00302
	movl	a4@(24),a2@+	|(calling boundp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(20)
	cmpl	d0,d7
	jeq	L00309
	movl	a4@(20),a5
	movl	a5@,a4@(20)
	jra	L00308
L00309:
	movl	d7,d0
L00308:
	movl	a4@(24),a2@+
	movl	a4@(20),a2@+
	movl	#_nilatom+0x1400+0,a2@+	|(calling copyint*)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(20)
	movl	a4@(8),a2@+	|(calling nconc)
	movl	a4@(20),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00301
L00302:
	movl	d7,d0
L00301:
	movl	a4@(12),a0
	movl	a4@(28),a5
	movl	a5@,d2
	jpl	L00310
	jmp	vecindexerr
L00310:
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00311
	jmp	vecindexerr
L00311:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a4@(20),a1@
	movl	a4@(16),a5
	movl	a5@,a2@+
	cmpl	#_nilatom+0x1400+4088,a4@(28)
	jle	L00312
	movl	a4@(28),a0
	jbsr	_qoneplus
	movl	d0,a4@(28)
	jra	L00313
L00312:
	movl	a4@(28),d0
	addql	#4,d0
	movl	d0,a4@(28)
L00313:
	movl	a2@-,a4@(16)
	jra	L00292
L00294:
	subl	#32,a2
	moveml	a6@(-28),#L00286
	unlk	a6
	rts
L00286 = 15556
L00285 = 28
	.globl	F00314	|(fcn lambda fclosure)
F00314:
	link	a6,#-L00317
	tstb	sp@(-132)
	moveml	#L00318,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00315:
	movl	a4@,a2@+	|(calling make-fclosure-with-alist)
	movl	a4@(4),a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+136,a5
	jbsr	a5@
	lea	a2@(-12),a2
	subql	#8,a2
	moveml	a6@(-20),#L00318
	unlk	a6
	rts
L00318 = 15488
L00317 = 20
	.globl	F00319	|(fcn lexpr fclosure-list)
F00319:
	link	a6,#-L00322
	tstb	sp@(-132)
	moveml	#L00323,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00320:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	a4@,a2@+	|(calling evenp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+144,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00325
	movl	a3@(52),a2@+	|(calling error)
	movl	a4@,a2@+
	cmpl	#_nilatom+0x1400+0,a4@(8)
	jne	L00327
	movl	d7,d0
	jra	L00326
L00327:
	movl	a4@(8),a2@+	|(calling minusp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00328
	movl	a4@(-4),a2@+	|(beginning do)
	movl	d7,a2@+
L00329:
	movl	a4@(12),a5
	movl	a5@,a2@+
	movl	a4@(-4),a0
	movl	a0@,d2
	movl	d2,d0
	movl	a4@(8),a5
	addl	a5@,d0
	movl	d0,sp@-
	movl	sp@+,d0
	addl	#1,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00336
	jbsr	_qnewint
L00336:
	movl	d0,a0
	movl	a0@,d0
	movl	a2@-,d6
	cmpl	d0,d6
	jpl	L00330
	movl	a4@(16),d0
	jra	L00333
L00330:
	cmpl	#_nilatom+0x1400-4096,a4@(12)
	jle	L00337
	cmpl	#_nilatom+0x1400+4092,a4@(12)
	jle	L00338
L00337:
	movl	a4@(12),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00339
L00338:
	movl	a4@(12),d0
	subql	#4,d0
	movl	d0,a2@+
L00339:
	movl	a4@(12),d0
	cmpl	a4@(12),d7
	jeq	L00340
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00340
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00341
L00340:
	movl	a4@(-4),a2@+
L00341:
	movl	a4@(16),a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	movl	a2@-,a4@(12)
	jra	L00329
L00333:
	subql	#8,a2
	jra	L00326
L00328:
	movl	a4@(8),a2@+	|(beginning do)
	movl	d7,a2@+
L00342:
	movl	a4@(12),a5
	cmpl	#1,a5@
	jpl	L00343
	movl	a4@(16),d0
	jra	L00344
L00343:
	cmpl	#_nilatom+0x1400-4096,a4@(12)
	jle	L00345
	cmpl	#_nilatom+0x1400+4092,a4@(12)
	jle	L00346
L00345:
	movl	a4@(12),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00347
L00346:
	movl	a4@(12),d0
	subql	#4,d0
	movl	d0,a2@+
L00347:
	movl	a4@(12),d0
	cmpl	a4@(12),d7
	jeq	L00348
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00348
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00349
L00348:
	movl	a4@(-4),a2@+
L00349:
	movl	a4@(16),a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	movl	a2@-,a4@(12)
	jra	L00342
L00344:
	subql	#8,a2
L00326:
	subql	#4,a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00324
L00325:
	movl	d7,d0
L00324:
	movl	#_nilatom+0x1400+4,a2@+	|(beginning do)
	movl	d7,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
L00350:
	movl	a4@(4),a2@+	|(calling greaterp)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+160,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00351
	movl	a4@(12),a2@+	|(calling nreverse)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00352
L00351:
	movl	a4@(4),d0	|(calling make-fclosure-with-alist)
	cmpl	a4@(4),d7
	jeq	L00353
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00353
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00354
L00353:
	movl	a4@(-4),a2@+
L00354:
	cmpl	#_nilatom+0x1400+4088,a4@(4)
	jle	L00357
	movl	a4@(4),a0
	jbsr	_qoneplus
	jra	L00358
L00357:
	movl	a4@(4),d0
	addql	#4,d0
L00358:
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00355
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00356
L00355:
	movl	a4@(-4),a2@+
L00356:
	movl	a4@(8),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+136,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	movl	a4@(4),a5
	movl	a5@,d0
	addl	#2,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00359
	jbsr	_qnewint
L00359:
	movl	d0,a4@(4)
	jra	L00350
L00352:
	subl	#16,a2
	moveml	a6@(-28),#L00323
	unlk	a6
	rts
L00323 = 15556
L00322 = 28
	.globl	F00360	|(fcn lambda fclosurep)
F00360:
	link	a6,#-L00363
	tstb	sp@(-132)
	moveml	#L00364,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00361:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00365
	movl	a3@(40),a2@+
	movl	a4@,a2@+	|(calling vprop)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a2@-,d6
	cmpl	d0,d6
	jeq	L00366
	movl	d7,d0
	jra	L00367
L00366:
	movl	a3@(56),d0
L00367:
	jra	L00368
L00365:
	movl	d7,d0
L00368:
	subql	#4,a2
	moveml	a6@(-24),#L00364
	unlk	a6
	rts
L00364 = 15552
L00363 = 24
	.globl	F00369	|(fcn lambda fclosure-alist)
F00369:
	link	a6,#-L00372
	tstb	sp@(-132)
	moveml	#L00373,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00370:
	movl	a4@,a2@+	|(calling fclosurep)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+176,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00375
	movl	#_nilatom+0x1400+4,a2@+	|(beginning do)
	movl	a4@,a0
	movl	a0@(-8),d2
	asrl	#2,d2
	jbsr	_qnewint
	movl	d0,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
L00376:
	movl	a4@(4),a2@+	|(calling lessp)
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00377
	movl	a4@(16),d0
	jra	L00378
L00377:
	movl	a4@,a0
	movl	a4@(4),a5
	movl	a5@,d2
	jpl	L00379
	jmp	vecindexerr
L00379:
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00380
	jmp	vecindexerr
L00380:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,a4@(12)
	movl	a4@(12),a1
	movl	a1@(4),a2@+
	movl	a4@(12),a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(16),a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	cmpl	#_nilatom+0x1400+4088,a4@(4)
	jle	L00381
	movl	a4@(4),a0
	jbsr	_qoneplus
	movl	d0,a4@(4)
	jra	L00382
L00381:
	movl	a4@(4),d0
	addql	#4,d0
	movl	d0,a4@(4)
L00382:
	jra	L00376
L00378:
	subl	#16,a2
	jra	L00374
L00375:
	movl	a3@(60),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00374:
	subql	#4,a2
	moveml	a6@(-24),#L00373
	unlk	a6
	rts
L00373 = 15492
L00372 = 24
	.globl	F00383	|(fcn lambda fclosure-function)
F00383:
	link	a6,#-L00386
	tstb	sp@(-132)
	moveml	#L00387,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00384:
	movl	a4@,a2@+	|(calling fclosurep)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+176,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00388
	movl	a4@,a0
	moveq	#0,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00389
	jmp	vecindexerr
L00389:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,d0
	jra	L00390
L00388:
	movl	d7,d0
L00390:
	subql	#4,a2
	moveml	a6@(-24),#L00387
	unlk	a6
	rts
L00387 = 15492
L00386 = 24
	.globl	F00391	|(fcn lambda vector-dump)
F00391:
	link	a6,#-L00394
	tstb	sp@(-132)
	moveml	#L00395,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00392:
	movl	d7,a2@+
	movl	a3@(64),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+184,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@,a0	|(calling msg-print)
	movl	a0@(-8),d2
	asrl	#2,d2
	jbsr	_qnewint
	movl	d0,a4@(4)
	movl	a4@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+184,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(68),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+184,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@,a2@+	|(calling msg-print)
	|(calling vprop)
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
	movl	trantb+184,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+192,a5
	jbsr	a5@
	lea	a2@,a2
	movl	#_nilatom+0x1400+0,a2@+	|(beginning do)
L00396:
	movl	a4@(8),a2@+	|(calling lessp)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00397
	movl	d7,d0
	jra	L00398
L00397:
	movl	a4@(8),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+184,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(72),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+184,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@,a0	|(calling msg-print)
	movl	a4@(8),a5
	movl	a5@,d2
	jpl	L00399
	jmp	vecindexerr
L00399:
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00400
	jmp	vecindexerr
L00400:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+184,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+192,a5
	jbsr	a5@
	lea	a2@,a2
	cmpl	#_nilatom+0x1400+4088,a4@(8)
	jle	L00401
	movl	a4@(8),a0
	jbsr	_qoneplus
	movl	d0,a4@(8)
	jra	L00402
L00401:
	movl	a4@(8),d0
	addql	#4,d0
	movl	d0,a4@(8)
L00402:
	jra	L00396
L00398:
	subl	#12,a2
	moveml	a6@(-24),#L00395
	unlk	a6
	rts
L00395 = 15492
L00394 = 24
	.globl	F00403	|(fcn lambda symeval-in-fclosure)
F00403:
	link	a6,#-L00406
	tstb	sp@(-132)
	moveml	#L00407,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00404:
	movl	a4@,a2@+	|(calling fclosurep)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+176,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00409
	movl	a3@(76),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00408
L00409:
	movl	#_nilatom+0x1400+4,a2@+	|(beginning do)
	movl	d7,a2@+
	movl	a4@,a0
	movl	a0@(-8),d2
	asrl	#2,d2
	jbsr	_qnewint
	movl	d0,a2@+
L00410:
	movl	a4@(8),a2@+	|(calling lessp)
	movl	a4@(16),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00411
	movl	a3@(80),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00412
L00411:
	movl	a4@,a0
	movl	a4@(8),a5
	movl	a5@,d2
	jpl	L00413
	jmp	vecindexerr
L00413:
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00414
	jmp	vecindexerr
L00414:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,a4@(12)
	movl	a4@(4),a2@+
	movl	a4@(12),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00416
	movl	a4@(12),a2@+	|(calling int:fclosure-stack-stuff)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00412
|	jra	L00415
L00416:
	movl	d7,d0
L00415:
	cmpl	#_nilatom+0x1400+4088,a4@(8)
	jle	L00417
	movl	a4@(8),a0
	jbsr	_qoneplus
	movl	d0,a4@(8)
	jra	L00418
L00417:
	movl	a4@(8),d0
	addql	#4,d0
	movl	d0,a4@(8)
L00418:
	jra	L00410
L00412:
	subl	#12,a2
L00408:
	subql	#8,a2
	moveml	a6@(-28),#L00407
	unlk	a6
	rts
L00407 = 15556
L00406 = 28
	.globl	F00419	|(fcn lambda set-in-fclosure)
F00419:
	link	a6,#-L00422
	tstb	sp@(-132)
	moveml	#L00423,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00420:
	movl	a4@,a2@+	|(calling fclosurep)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+176,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00425
	movl	a3@(84),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00424
L00425:
	movl	#_nilatom+0x1400+4,a2@+	|(beginning do)
	movl	d7,a2@+
	movl	a4@,a0
	movl	a0@(-8),d2
	asrl	#2,d2
	jbsr	_qnewint
	movl	d0,a2@+
L00426:
	movl	a4@(12),a2@+	|(calling lessp)
	movl	a4@(20),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00427
	movl	a3@(88),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00428
L00427:
	movl	a4@,a0
	movl	a4@(12),a5
	movl	a5@,d2
	jpl	L00429
	jmp	vecindexerr
L00429:
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00430
	jmp	vecindexerr
L00430:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,a4@(16)
	movl	a4@(4),a2@+
	movl	a4@(16),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00432
	movl	a4@(16),a2@+	|(calling int:fclosure-stack-stuff)
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00428
|	jra	L00431
L00432:
	movl	d7,d0
L00431:
	cmpl	#_nilatom+0x1400+4088,a4@(12)
	jle	L00433
	movl	a4@(12),a0
	jbsr	_qoneplus
	movl	d0,a4@(12)
	jra	L00434
L00433:
	movl	a4@(12),d0
	addql	#4,d0
	movl	d0,a4@(12)
L00434:
	jra	L00426
L00428:
	subl	#12,a2
L00424:
	subl	#12,a2
	moveml	a6@(-28),#L00423
	unlk	a6
	rts
L00423 = 15556
L00422 = 28
bind_org:
	linker_size = 	23
	trans_size = 	26
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
.asciz "\"vref: non vectori argument \""
.asciz "\"vref: non fixnum index \""
.asciz "\"vref: index out of range \""
.asciz "\"vset: non vectori argument \""
.asciz "\"vset: non fixnum index \""
.asciz "\"vset: index out of range \""
.asciz "\"vsize: non vector argument \""
.asciz "\"vsize-word: non vectori argument \""
.asciz "\"vsize-byte: non vectori argument \""
.asciz "\"fclosure: vars list has a bad form \""
.asciz "fclosure"
.asciz "\"fclosure: non symbol in var list \""
.asciz "\"fclosure: you can't close over nil \""
.asciz "\"fclosure-alist: not given an even number of arguments: \""
.asciz "t"
.asciz "\"fclosure-alist: non fclosure argument: \""
.asciz "\"size = \""
.asciz "\", prop= \""
.asciz "\": \""
.asciz "\"set-in-fclosure: non fclosure first argument: \""
.asciz "\"symeval-in-fclosure: variable not found\""
.asciz "\"set-in-fclosure: non fclosure first argument: \""
.asciz "\"set-in-fclosure: variable not found\""
.asciz "new-vector"
.asciz "int:vset"
.asciz "new-vectori-byte"
.asciz "new-vectori-word"
.asciz "new-vectori-long"
.asciz "error"
.asciz "lessp"
.asciz "int:vref"
.asciz "int:vsize"
.asciz "vprop"
.asciz "vsetprop"
.asciz "putprop"
.asciz "length"
.asciz "int:vector-range-error"
.asciz "boundp"
.asciz "copyint*"
.asciz "nconc"
.asciz "make-fclosure-with-alist"
.asciz "evenp"
.asciz "minusp"
.asciz "greaterp"
.asciz "nreverse"
.asciz "fclosurep"
.asciz "msg-print"
.asciz "terpr"
.asciz "int:fclosure-stack-stuff"
.ascii "(setq fcn-in-vector.l \"vector.l compiled by Liszt 68000 vers"
.asciz "ion 8.39a on Fri Dec 15 18:52:53 1989\")"
.ascii "(setq rcs-vector- \"$Header: vector.l 1.5 83/07/30 15:35:51 l"
.asciz "ayer Exp $\")"
.asciz "vector"
.ascii "(putprop (quote vector) (list (quote nil) fcn-in-vector.l) ("
.asciz "quote fcn-info))"
.asciz "vectori-byte"
.ascii "(putprop (quote vectori-byte) (list (quote nil) fcn-in-vecto"
.asciz "r.l) (quote fcn-info))"
.asciz "vectori-word"
.ascii "(putprop (quote vectori-word) (list (quote nil) fcn-in-vecto"
.asciz "r.l) (quote fcn-info))"
.asciz "vectori-long"
.ascii "(putprop (quote vectori-long) (list (quote nil) fcn-in-vecto"
.asciz "r.l) (quote fcn-info))"
.asciz "vref"
.ascii "(putprop (quote vref) (list (quote (2 . 2)) fcn-in-vector.l)"
.asciz " (quote fcn-info))"
.asciz "vrefi-byte"
.ascii "(putprop (quote vrefi-byte) (list (quote (2 . 2)) fcn-in-vec"
.asciz "tor.l) (quote fcn-info))"
.asciz "vrefi-word"
.ascii "(putprop (quote vrefi-word) (list (quote (2 . 2)) fcn-in-vec"
.asciz "tor.l) (quote fcn-info))"
.asciz "vrefi-long"
.ascii "(putprop (quote vrefi-long) (list (quote (2 . 2)) fcn-in-vec"
.asciz "tor.l) (quote fcn-info))"
.asciz "vset"
.ascii "(putprop (quote vset) (list (quote (3 . 3)) fcn-in-vector.l)"
.asciz " (quote fcn-info))"
.asciz "vseti-byte"
.ascii "(putprop (quote vseti-byte) (list (quote (3 . 3)) fcn-in-vec"
.asciz "tor.l) (quote fcn-info))"
.asciz "vseti-word"
.ascii "(putprop (quote vseti-word) (list (quote (3 . 3)) fcn-in-vec"
.asciz "tor.l) (quote fcn-info))"
.asciz "vseti-long"
.ascii "(putprop (quote vseti-long) (list (quote (3 . 3)) fcn-in-vec"
.asciz "tor.l) (quote fcn-info))"
.asciz "vsize"
.ascii "(putprop (quote vsize) (list (quote (1 . 1)) fcn-in-vector.l"
.asciz ") (quote fcn-info))"
.asciz "vsize-word"
.ascii "(putprop (quote vsize-word) (list (quote (1 . 1)) fcn-in-vec"
.asciz "tor.l) (quote fcn-info))"
.asciz "vsize-byte"
.ascii "(putprop (quote vsize-byte) (list (quote (1 . 1)) fcn-in-vec"
.asciz "tor.l) (quote fcn-info))"
.asciz "vget"
.ascii "(putprop (quote vget) (list (quote (2 . 2)) fcn-in-vector.l)"
.asciz " (quote fcn-info))"
.asciz "vputprop"
.ascii "(putprop (quote vputprop) (list (quote (3 . 3)) fcn-in-vecto"
.asciz "r.l) (quote fcn-info))"
.asciz "make-fclosure-with-alist"
.ascii "(putprop (quote make-fclosure-with-alist) (list (quote (3 . "
.asciz "3)) fcn-in-vector.l) (quote fcn-info))"
.asciz "fclosure"
.ascii "(putprop (quote fclosure) (list (quote (2 . 2)) fcn-in-vecto"
.asciz "r.l) (quote fcn-info))"
.asciz "fclosure-list"
.ascii "(putprop (quote fclosure-list) (list (quote nil) fcn-in-vect"
.asciz "or.l) (quote fcn-info))"
.asciz "fclosurep"
.ascii "(putprop (quote fclosurep) (list (quote (1 . 1)) fcn-in-vect"
.asciz "or.l) (quote fcn-info))"
.asciz "fclosure-alist"
.ascii "(putprop (quote fclosure-alist) (list (quote (1 . 1)) fcn-in"
.asciz "-vector.l) (quote fcn-info))"
.asciz "fclosure-function"
.ascii "(putprop (quote fclosure-function) (list (quote (1 . 1)) fcn"
.asciz "-in-vector.l) (quote fcn-info))"
.asciz "vector-dump"
.ascii "(putprop (quote vector-dump) (list (quote (1 . 1)) fcn-in-ve"
.asciz "ctor.l) (quote fcn-info))"
.asciz "symeval-in-fclosure"
.ascii "(putprop (quote symeval-in-fclosure) (list (quote (2 . 2)) f"
.asciz "cn-in-vector.l) (quote fcn-info))"
.asciz "set-in-fclosure"
.ascii "(putprop (quote set-in-fclosure) (list (quote (3 . 3)) fcn-i"
.asciz "n-vector.l) (quote fcn-info))"
lit_end:
.data | this is just for documentation 
.asciz "@(#)Compiled by Liszt 68000 version 8.39a on Fri Dec 15 18:53:13 1989"
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
