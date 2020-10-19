	.globl	F00083	|(fcn lambda back-quote-ch-macro)
F00083:
	link	a6,#-L00086
	tstb	sp@(-132)
	moveml	#L00087,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00084:
	movl	a3@,a5	|(calling back=quotify)
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00088
	movl	a3@,a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	d0,a2@+
	jra	L00089
L00088:
	movl	a3@,a5
	movl	a5@,d0
	addql	#4,d0
	movl	d0,a2@+
L00089:
	movl	_bnp,a1
	movl	a3@,a5
	movl	a5@,a1@+
	movl	a3@,a1@+
	movl	a3@,a5
	movl	a4@,a5@
	movl	a1,_bnp
	lea	a2@,a5	|(calling read)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@,a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subql	#4,a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	moveml	a6@(-20),#L00087
	unlk	a6
	rts
L00087 = 15488
L00086 = 20
	.globl	F00090	|(fcn lambda back-quote-comma-macro)
F00090:
	link	a6,#-L00093
	tstb	sp@(-132)
	moveml	#L00094,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00091:
	movl	a3@,a5
	cmpl	#_nilatom+0x1400-4096,a5@
	jle	L00095
	movl	a3@,a5
	cmpl	#_nilatom+0x1400+4092,a5@
	jle	L00096
L00095:
	movl	a3@,a5
	movl	a5@,a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00097
L00096:
	movl	a3@,a5
	movl	a5@,d0
	subql	#4,d0
	movl	d0,a2@+
L00097:
	movl	_bnp,a1
	movl	a3@,a5
	movl	a5@,a1@+
	movl	a3@,a1@+
	movl	a3@,a5
	movl	a4@,a5@
	movl	a1,_bnp
	movl	#_nilatom+0x1400+0,d6
	movl	a3@,a5
	cmpl	a5@,d6
	jne	L00099
	movl	a3@,a5
	movl	a5@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L00099
	movl	a3@(4),a2@+	|(calling error)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00098
L00099:
	lea	a2@,a5	|(calling tyipeek)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@,a2
	cmpl	#_nilatom+0x1400+256,d0
	jne	L00101
	lea	a2@,a5	|(calling tyi)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(8),a5
	movl	a5@,a2@+
	lea	a2@,a5	|(calling read)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00098
L00101:
	lea	a2@,a5	|(calling tyipeek)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@,a2
	cmpl	#_nilatom+0x1400+184,d0
	jne	L00102
	lea	a2@,a5	|(calling tyi)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@,a5	|(calling read)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00098
L00102:
	movl	a3@(16),a5
	movl	a5@,a2@+
	lea	a2@,a5	|(calling read)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	jbsr	_qcons
L00098:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subql	#4,a2
	moveml	a6@(-24),#L00094
	unlk	a6
	rts
L00094 = 15552
L00093 = 24
	.globl	F00103	|(fcn lambda back=quotify)
F00103:
	link	a6,#-L00106
	tstb	sp@(-132)
	moveml	#L00107,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00104:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
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
	jeq	L00109
	movl	a3@(20),a2@+
	movl	a4@,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00108
L00109:
	movl	a4@,a1
	movl	a1@(4),d0
	movl	a3@(16),a5
	cmpl	a5@,d0
	jne	L00112
	movl	a4@,a5
	movl	a5@,d0
	jra	L00108
L00112:
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
	jne	L00114
	movl	a4@,a1
	movl	a1@(4),a0
	movl	a0@(4),d0
	movl	a3@(8),a5
	cmpl	a5@,d0
	jeq	L00113
	movl	a4@,a1
	movl	a1@(4),a0
	movl	a0@(4),d0
	movl	a3@(12),a5
	cmpl	a5@,d0
	jeq	L00113
L00114:
	movl	a4@,a1	|(calling back=quotify)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(4)
	movl	a4@,a5	|(calling back=quotify)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(8)
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
	jne	L00120
	movl	d7,a4@(16)
	jra	L00121
L00120:
	movl	a3@(24),a4@(16)
L00121:
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
	jne	L00124
	movl	d7,a4@(12)
	jra	L00125
L00124:
	movl	a3@(24),a4@(12)
L00125:
	cmpl	a4@(16),d7
	jne	L00126
	movl	a4@(8),a1
	movl	a1@(4),d0
	cmpl	a3@(20),d0
	jeq	L00127
	movl	d7,a4@(20)
	jra	L00128
L00127:
	movl	a3@(24),a4@(20)
L00128:
	jra	L00129
L00126:
	movl	d7,a4@(20)
L00129:
	cmpl	a4@(20),d7
	jeq	L00131
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
	jne	L00131
	movl	a4@(4),a1
	movl	a1@(4),d0
	cmpl	a3@(20),d0
	jne	L00131
	movl	a3@(20),a2@+
	movl	a4@(4),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@(8),a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00130
L00131:
	cmpl	a4@(20),d7
	jeq	L00135
	movl	a4@(8),a5
	movl	a5@,a1
	cmpl	a1@(4),d7
	jne	L00135
	movl	a3@(28),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00130
L00135:
	cmpl	a4@(16),d7
	jne	L00137
	movl	a4@(8),a1
	movl	a1@(4),d0
	cmpl	a3@(28),d0
	jne	L00137
	movl	a3@(28),a2@+
	movl	a4@(4),a2@+
	movl	a4@(8),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00130
L00137:
	movl	a3@(32),a2@+
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
L00130:
	jra	L00108
L00113:
	movl	a4@,a1
	movl	a1@(4),a0
	movl	a0@(4),d0
	movl	a3@(8),a5
	cmpl	a5@,d0
	jne	L00139
	movl	a3@(36),a2@+
	movl	a4@,a1
	movl	a1@(4),a5
	movl	a5@,a2@+
	movl	a4@,a5	|(calling back=quotify)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00108
L00139:
	movl	a4@,a1
	movl	a1@(4),a0
	movl	a0@(4),d0
	movl	a3@(12),a5
	cmpl	a5@,d0
	jne	L00140
	movl	a3@(40),a2@+
	movl	a4@,a1
	movl	a1@(4),a5
	movl	a5@,a2@+
	movl	a4@,a5	|(calling back=quotify)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00108
L00140:
	movl	d7,d0
L00108:
	subl	#24,a2
	moveml	a6@(-20),#L00107
	unlk	a6
	rts
L00107 = 15488
L00106 = 20
	.globl	F00141	|(fcn lambda new-sharp-sign-macro)
F00141:
	link	a6,#-L00144
	tstb	sp@(-132)
	moveml	#L00145,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00142:
	lea	a2@,a5	|(calling tyi)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	movl	d7,a2@+
	movl	a4@,a2@+	|(beginning do)
	movl	a3@(44),a5
	movl	a5@,a2@+
L00148:
	cmpl	a4@(12),d7
	jne	L00149
	movl	d7,d0
	jra	L00150
L00149:
	movl	a4@(8),a2@+
	movl	a4@(12),a1
	movl	a1@(4),a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00152
	movl	a4@(12),a1
	movl	a1@(4),d0
	jra	L00150
|	jra	L00151
L00152:
	movl	d7,d0
L00151:
	movl	a4@(12),a5
	movl	a5@,a4@(12)
	jra	L00148
L00150:
	subql	#8,a2
	movl	d0,a4@(4)
	cmpl	d0,d7
	jeq	L00147
	movl	a4@(4),a5
	movl	a5@,a2@+
	movl	a4@,a2@+
	movl	a4@(8),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00154
	movl	a4@(8),a1
	cmpl	a1@(8),d7
	jeq	L00154
	movl	a4@(8),a1
	movl	a1@(8),a4@(8)
	cmpl	a1@(8),d7
	jra	L00153
L00154:
	movl	d7,d0
L00153:
	movl	a4@(8),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00157
	movl	a3@(48),a2@+
	movl	a4@(8),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00157
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-8),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00156
L00157:
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00156:
	jra	L00146
L00147:
	movl	a3@(52),a2@+	|(calling error)
	movl	a4@,a2@+	|(calling ascii)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00146:
	subql	#8,a2
	moveml	a6@(-24),#L00145
	unlk	a6
	rts
L00145 = 15552
L00144 = 24
	.globl	F00159	|(fcn macro defsharp)
F00159:
	link	a6,#-L00162
	tstb	sp@(-132)
	moveml	#L00163,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00160:
	movl	d7,a2@+
	movl	a3@(56),a2@+	|(calling concat)
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00166
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@(4),a1
	movl	a1@(4),d0
	jra	L00165
L00166:
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@(4),d0
L00165:
	movl	d0,a2@+
	lea	a2@,a5	|(calling gensym)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a4@(4)
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00168
	movl	a3@(60),a2@+
	movl	a3@(64),a2@+
	movl	d7,a2@+	|(calling append)
	movl	a4@,a5	|(beginning do)
	movl	a5@,a1
	movl	a1@(4),a2@+
L00171:
	cmpl	a4@(20),d7
	jne	L00172
	movl	d7,d0
	jra	L00173
L00172:
	movl	a4@(20),a1
	movl	a1@(4),a2@+
	movl	a4@(24),a2@+	|(calling defsharp-expand)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#4,a2
	movl	d0,a2@+
	movl	a4@(16),a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	movl	a4@(20),a5
	movl	a5@,a4@(20)
	jra	L00171
L00173:
	subql	#4,a2	|(calling nreverse)
	movl	a4@(16),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	movl	d0,a2@+
	movl	a3@(68),a2@+
	movl	a4@(4),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),a2@+
	movl	a4@,a5	|(calling append)
	movl	a5@,a1
	movl	a1@,a5
	movl	a5@,a2@+
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
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
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00164
|	jra	L00167
L00168:
	movl	a3@(60),a2@+
	movl	a3@(72),a2@+
	movl	a4@,a5	|(calling defsharp-expand)
	movl	a5@,a0
	movl	a0@(4),a2@+
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a3@(68),a2@+
	movl	a4@(4),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),a2@+
	movl	a4@,a5	|(calling append)
	movl	a5@,a1
	movl	a1@,a5
	movl	a5@,a2@+
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
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
	jra	L00164
L00167:
	movl	d7,d0
L00164:
	subql	#8,a2
	moveml	a6@(-20),#L00163
	unlk	a6
	rts
L00163 = 15488
L00162 = 20
	.globl	F00174	|(fcn lambda defsharp-expand)
F00174:
	link	a6,#-L00177
	tstb	sp@(-132)
	moveml	#L00178,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00175:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00180
	movl	a4@,a2@+	|(calling aexploden)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a0
	movl	a0@(4),a4@
	jra	L00179
L00180:
	movl	d7,d0
L00179:
	movl	a3@(48),a2@+
	movl	a3@(76),a2@+
	movl	a3@(80),a2@+
	movl	a3@(84),a2@+
	movl	a3@(88),a2@+
	movl	a3@(92),a2@+
	movl	a4@,a2@+
	movl	a3@(96),a2@+
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
	movl	a3@(88),a2@+
	movl	a3@(20),a2@+
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
	movl	a3@(24),a2@+
	movl	a3@(84),a2@+
	movl	a3@(44),a2@+
	movl	a3@(32),a2@+
	movl	a3@(20),a2@+
	movl	a4@,a2@+
	movl	a4@(4),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(104),a2@+
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
	movl	a3@(108),a2@+
	jbsr	_qcons
	subql	#8,a2
	moveml	a6@(-20),#L00178
	unlk	a6
	rts
L00178 = 15488
L00177 = 20
	.globl	F00182	|(fcn lambda Sharpmog00181)
F00182:
	link	a6,#-L00185
	tstb	sp@(-132)
	moveml	#L00186,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00183:
	movl	#_nilatom+0x1400+32,a2@+
	movl	_bnp,a1
	movl	a3@(112),a5
	movl	a5@,a1@+
	movl	a3@(112),a1@+
	movl	a3@(112),a5
	movl	a4@(4),a5@
	movl	a1,_bnp
	lea	a2@,a5	|(calling read)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subql	#8,a2
	moveml	a6@(-20),#L00186
	unlk	a6
	rts
L00186 = 15488
L00185 = 20
	.globl	F00188	|(fcn lambda Sharpmxg00187)
F00188:
	link	a6,#-L00191
	tstb	sp@(-132)
	moveml	#L00192,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00189:
	movl	#_nilatom+0x1400+0,a2@+	|(beginning do)
	lea	a2@,a5	|(calling tyi)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	movl	a3@(24),a5
	movl	a5@,a2@+
	movl	#_nilatom+0x1400+4,a2@+
L00193:
	cmpl	d7,d7
	jeq	L00194
	movl	d7,d0
	jra	L00195
L00194:
	movl	a4@(8),a5
	cmpl	#57,a5@
	jgt	L00197
	movl	a4@(8),a5
	cmpl	#48,a5@
	jmi	L00197
	movl	a4@(4),a2@+	|(calling *)
	movl	#_nilatom+0x1400+64,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a0
	movl	a0@,d2
	movl	d2,sp@-
	movl	a4@(8),a5
	movl	a5@,d0
	subl	#48,d0
	movl	d0,d2
	movl	sp@+,d0
	addl	d2,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00199
	jbsr	_qnewint
L00199:
	movl	d0,a4@(4)
	jra	L00196
L00197:
	movl	a4@(8),a5
	cmpl	#102,a5@
	jgt	L00200
	movl	a4@(8),a5
	cmpl	#97,a5@
	jmi	L00200
	movl	a4@(4),a2@+	|(calling *)
	movl	#_nilatom+0x1400+64,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a0
	movl	a0@,d2
	movl	d2,sp@-
	movl	a4@(8),a5
	movl	a5@,sp@-
	movl	#97,d0
	subl	#10,d0
	movl	d0,d2
	movl	sp@+,d0
	subl	d2,d0
	movl	d0,d2
	movl	sp@+,d0
	addl	d2,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00202
	jbsr	_qnewint
L00202:
	movl	d0,a4@(4)
	jra	L00196
L00200:
	movl	a4@(8),a5
	cmpl	#70,a5@
	jgt	L00203
	movl	a4@(8),a5
	cmpl	#65,a5@
	jmi	L00203
	movl	a4@(4),a2@+	|(calling *)
	movl	#_nilatom+0x1400+64,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a0
	movl	a0@,d2
	movl	d2,sp@-
	movl	a4@(8),a5
	movl	a5@,sp@-
	movl	#65,d0
	subl	#10,d0
	movl	d0,d2
	movl	sp@+,d0
	subl	d2,d0
	movl	d0,d2
	movl	sp@+,d0
	addl	d2,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00205
	jbsr	_qnewint
L00205:
	movl	d0,a4@(4)
	jra	L00196
L00203:
	cmpl	a4@(12),d7
	jeq	L00206
	cmpl	#_nilatom+0x1400+172,a4@(8)
	jeq	L00196
L00206:
	cmpl	a4@(12),d7
	jeq	L00207
	cmpl	#_nilatom+0x1400+180,a4@(8)
	jne	L00207
	movl	#_nilatom+0x1400-4,a2@+	|(calling *)
	movl	a4@(16),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(16)
	jra	L00196
L00207:
	movl	a4@(8),a2@+	|(calling untyi)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(16),a2@+	|(calling *)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	jra	L00195
L00196:
	lea	a2@,a5	|(calling tyi)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	movl	d7,a4@(12)
	movl	a2@-,a4@(8)
	jra	L00193
L00195:
	subl	#20,a2
	moveml	a6@(-24),#L00192
	unlk	a6
	rts
L00192 = 15492
L00191 = 24
	.globl	F00210	|(fcn lambda Sharpm+g00209)
F00210:
	link	a6,#-L00213
	tstb	sp@(-132)
	moveml	#L00214,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00211:
	lea	a2@,a5	|(calling read)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	movl	a4@(4),a2@+	|(calling feature-present)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00216
	lea	a2@,a5	|(calling read)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00215
L00216:
	movl	d7,d0
L00215:
	movl	d7,d0
	subql	#8,a2
	moveml	a6@(-20),#L00214
	unlk	a6
	rts
L00214 = 15488
L00213 = 20
	.globl	F00218	|(fcn lambda Sharpm-g00217)
F00218:
	link	a6,#-L00221
	tstb	sp@(-132)
	moveml	#L00222,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00219:
	lea	a2@,a5	|(calling read)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	movl	a4@(4),a2@+	|(calling feature-present)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00224
	lea	a2@,a5	|(calling read)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00223
L00224:
	movl	d7,d0
L00223:
	movl	d7,d0
	subql	#8,a2
	moveml	a6@(-20),#L00222
	unlk	a6
	rts
L00222 = 15488
L00221 = 20
	.globl	F00226	|(fcn lambda Sharpm/g00225)
F00226:
	link	a6,#-L00229
	tstb	sp@(-132)
	moveml	#L00230,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00227:
	lea	a2@,a5	|(calling tyi)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	subql	#4,a2
	moveml	a6@(-20),#L00230
	unlk	a6
	rts
L00230 = 15488
L00229 = 20
	.globl	F00232	|(fcn lambda Sharpm^g00231)
F00232:
	link	a6,#-L00235
	tstb	sp@(-132)
	moveml	#L00236,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00233:
	movl	#_nilatom+0x1400+4,a2@+	|(calling boole)
	movl	#_nilatom+0x1400+124,a2@+
	lea	a2@,a5	|(calling tyi)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	subql	#4,a2
	moveml	a6@(-20),#L00236
	unlk	a6
	rts
L00236 = 15488
L00235 = 20
	.globl	F00238	|(fcn lambda Sharpm'g00237)
F00238:
	link	a6,#-L00241
	tstb	sp@(-132)
	moveml	#L00242,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00239:
	movl	a3@(116),a2@+
	lea	a2@,a5	|(calling read)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	subql	#4,a2
	moveml	a6@(-20),#L00242
	unlk	a6
	rts
L00242 = 15488
L00241 = 20
	.globl	F00244	|(fcn lambda Sharpm,g00243)
F00244:
	link	a6,#-L00247
	tstb	sp@(-132)
	moveml	#L00248,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00245:
	lea	a2@,a5	|(calling eval)
	|(calling read)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@,a2
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
	subql	#4,a2
	moveml	a6@(-20),#L00248
	unlk	a6
	rts
L00248 = 15488
L00247 = 20
	.globl	F00250	|(fcn lambda Sharpm\g00249)
F00250:
	link	a6,#-L00253
	tstb	sp@(-132)
	moveml	#L00254,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00251:
	lea	a2@,a5	|(calling read)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	movl	d7,a2@+
	movl	a4@(4),a2@+	|(beginning do)
	movl	a3@(120),a5
	movl	a5@,a2@+
L00255:
	cmpl	a4@(16),d7
	jne	L00256
	movl	d7,d0
	jra	L00257
L00256:
	movl	a4@(12),a2@+
	movl	a4@(16),a1
	movl	a1@(4),a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00259
	movl	a4@(16),a1
	movl	a1@(4),d0
	jra	L00257
|	jra	L00258
L00259:
	movl	d7,d0
L00258:
	movl	a4@(16),a5
	movl	a5@,a4@(16)
	jra	L00255
L00257:
	subql	#8,a2
	movl	d0,a0
	movl	a0@,a4@(8)
	cmpl	a4@(8),d7
	jne	L00260
	movl	a3@(124),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00260:
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	subl	#12,a2
	moveml	a6@(-24),#L00254
	unlk	a6
	rts
L00254 = 15552
L00253 = 24
	.globl	F00262	|(fcn lambda Sharpmtg00261)
F00262:
	link	a6,#-L00265
	tstb	sp@(-132)
	moveml	#L00266,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00263:
	movl	a3@(24),a5
	movl	a5@,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	subql	#4,a2
	moveml	a6@(-20),#L00266
	unlk	a6
	rts
L00266 = 15488
L00265 = 20
	.globl	F00268	|(fcn lambda SharpmMg00267)
F00268:
	link	a6,#-L00271
	tstb	sp@(-132)
	moveml	#L00272,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00269:
	movl	a4@,a2@+	|(calling feature-present)
	|(calling assoc)
	movl	a3@(128),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+144,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00274
	lea	a2@,a5	|(calling read)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00273
L00274:
	movl	d7,d0
L00273:
	movl	d7,d0
	subql	#4,a2
	moveml	a6@(-20),#L00272
	unlk	a6
	rts
L00272 = 15488
L00271 = 20
	.globl	F00275	|(fcn lambda feature-present)
F00275:
	link	a6,#-L00278
	tstb	sp@(-132)
	moveml	#L00279,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00276:
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
	jeq	L00281
	movl	a4@,a2@+
	movl	a3@(132),a2@+	|(calling status)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a2@-,d5
	cmpl	d0,d7
	jeq	L00285
	movl	d0,a0
L00286:
	cmpl	a0@(4),d5
	jeq	L00284
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00286
	movl	a0,d0
L00285:
	movl	d0,d0
	jra	L00287
L00284:
	movl	a0,d0
L00287:
	jra	L00280
L00281:
	movl	a4@,a1
	movl	a1@(4),d0
	cmpl	a3@(136),d0
	jne	L00288
	movl	a4@,a5	|(calling feature-present)
	movl	a5@,a0
	movl	a0@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00289
	movl	a3@(24),d0
	jra	L00290
L00289:
	movl	d7,d0
L00290:
	jra	L00280
L00288:
	movl	a4@,a0
	movl	a0@(4),d0
	cmpl	a3@(140),d0
	jne	L00291
	movl	a4@,a5	|(beginning do)
	movl	a5@,a2@+
L00292:
	cmpl	a4@(4),d7
	jne	L00293
	movl	a3@(24),a5
	movl	a5@,d0
	jra	L00294
L00293:
	movl	a4@(4),a1	|(calling feature-present)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00296
	movl	d7,d0
	jra	L00294
|	jra	L00295
L00296:
	movl	d7,d0
L00295:
	movl	a4@(4),a5
	movl	a5@,a4@(4)
	jra	L00292
L00294:
	subql	#4,a2
	jra	L00280
L00291:
	movl	a4@,a1
	movl	a1@(4),d0
	cmpl	a3@(144),d0
	jne	L00297
	movl	a4@,a5	|(beginning do)
	movl	a5@,a2@+
L00298:
	cmpl	a4@(4),d7
	jne	L00299
	movl	d7,d0
	jra	L00300
L00299:
	movl	a4@(4),a1	|(calling feature-present)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00302
	movl	a3@(24),a5
	movl	a5@,d0
	jra	L00300
|	jra	L00301
L00302:
	movl	d7,d0
L00301:
	movl	a4@(4),a5
	movl	a5@,a4@(4)
	jra	L00298
L00300:
	subql	#4,a2
	jra	L00280
L00297:
	movl	a3@(148),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00280:
	subql	#4,a2
	moveml	a6@(-24),#L00279
	unlk	a6
	rts
L00279 = 15520
L00278 = 24
bind_org:
	linker_size = 	38
	trans_size = 	20
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
	.long	99
	.long	99
	.long	99
	.long	0
	.long	99
	.long	99
	.long	2
	.long	99
	.long	0
	.long	99
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
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	0
	.long	99
	.long	0
	.long	99
	.long	99
	.long -1
lit_org:
.asciz "**backquote**"
.asciz "\"comma not inside a backquote.\""
.asciz "Backquote-comma-at"
.asciz "Backquote-comma-dot"
.asciz "Backquote-comma"
.asciz "quote"
.asciz "t"
.asciz "list"
.asciz "cons"
.asciz "append"
.asciz "nconc"
.asciz "sharpm-function-names"
.asciz "lambda"
.asciz "\"Unknown character after #:\""
.asciz "\"Sharpm\""
.asciz "progn"
.asciz "(quote compile)"
.asciz "defun"
.asciz "(quote compile)"
.asciz "(current)"
.asciz "cond"
.asciz "setq"
.asciz "current"
.asciz "assq"
.asciz "(sharpm-function-names)"
.asciz "rplacd"
.asciz "(sharpm-function-names)"
.asciz "(nil)"
.asciz "ibase"
.asciz "function"
.asciz "franz-symbolic-character-names"
.asciz "Illegal\\ character\\ name\\ in\\ #\\\\"
.ascii "((77 maclisp) (109 maclisp) (81 lispm) (113 lispm) (70 franz"
.asciz ") (102 franz))"
.asciz "(features)"
.asciz "not"
.asciz "and"
.asciz "or"
.asciz "Unknown\\ form\\ after\\ #+\\ or\\ #-"
.asciz "read"
.asciz "back=quotify"
.asciz "error"
.asciz "tyipeek"
.asciz "tyi"
.asciz "funcall"
.asciz "ascii"
.asciz "gensym"
.asciz "concat"
.asciz "defsharp-expand"
.asciz "nreverse"
.asciz "append"
.asciz "aexploden"
.asciz "*"
.asciz "untyi"
.asciz "feature-present"
.asciz "boole"
.asciz "eval"
.asciz "assoc"
.asciz "status"
.ascii "(setq fcn-in-charmac.l \"charmac.l compiled by Liszt 68000 ve"
.asciz "rsion 8.39a on Fri Dec 15 18:47:17 1989\")"
.ascii "(setq rcs-charmac- \"$Header: /usr/lib/lisp/charmac.l,v 1.1 8"
.asciz "3/01/29 18:33:29 jkf Exp $\")"
.asciz "(setq **backquote** 1)"
.ascii "(setq Backquote-comma (gensym) Backquote-comma-at (gensym) B"
.asciz "ackquote-comma-dot (gensym))"
.asciz "back-quote-ch-macro"
.ascii "(putprop (quote back-quote-ch-macro) (list (quote (0 . 0)) f"
.asciz "cn-in-charmac.l) (quote fcn-info))"
.asciz "back-quote-comma-macro"
.ascii "(putprop (quote back-quote-comma-macro) (list (quote (0 . 0)"
.asciz ") fcn-in-charmac.l) (quote fcn-info))"
.asciz "back=quotify"
.ascii "(putprop (quote back=quotify) (list (quote (1 . 1)) fcn-in-c"
.asciz "harmac.l) (quote fcn-info))"
.ascii "(setsyntax (quote `) (quote macro) (quote back-quote-ch-macr"
.asciz "o))"
.ascii "(setsyntax (quote ,) (quote macro) (quote back-quote-comma-m"
.asciz "acro))"
.asciz "(setq sharpm-function-names nil)"
.asciz "new-sharp-sign-macro"
.ascii "(putprop (quote new-sharp-sign-macro) (list (quote (0 . 0)) "
.asciz "fcn-in-charmac.l) (quote fcn-info))"
.ascii "(setsyntax (quote #) (quote splicing) (quote new-sharp-sign-"
.asciz "macro))"
.asciz "defsharp"
.ascii "(putprop (quote defsharp) (list (quote nil) fcn-in-charmac.l"
.asciz ") (quote fcn-info))"
.asciz "defsharp-expand"
.ascii "(putprop (quote defsharp-expand) (list (quote (2 . 2)) fcn-i"
.asciz "n-charmac.l) (quote fcn-info))"
.ascii "((lambda (current) (cond ((setq current (assq 111 sharpm-fun"
.ascii "ction-names)) (rplacd current (quote Sharpmog00181))) (t (se"
.ascii "tq sharpm-function-names (cons (quote (111 . Sharpmog00181))"
.asciz " sharpm-function-names))))) nil)"
.ascii "((lambda (current) (cond ((setq current (assq 79 sharpm-func"
.ascii "tion-names)) (rplacd current (quote Sharpmog00181))) (t (set"
.ascii "q sharpm-function-names (cons (quote (79 . Sharpmog00181)) s"
.asciz "harpm-function-names))))) nil)"
.asciz "Sharpmog00181"
.ascii "(putprop (quote Sharpmog00181) (list (quote (1 . 1)) fcn-in-"
.asciz "charmac.l) (quote fcn-info))"
.ascii "((lambda (current) (cond ((setq current (assq 120 sharpm-fun"
.ascii "ction-names)) (rplacd current (quote Sharpmxg00187))) (t (se"
.ascii "tq sharpm-function-names (cons (quote (120 . Sharpmxg00187))"
.asciz " sharpm-function-names))))) nil)"
.ascii "((lambda (current) (cond ((setq current (assq 88 sharpm-func"
.ascii "tion-names)) (rplacd current (quote Sharpmxg00187))) (t (set"
.ascii "q sharpm-function-names (cons (quote (88 . Sharpmxg00187)) s"
.asciz "harpm-function-names))))) nil)"
.asciz "Sharpmxg00187"
.ascii "(putprop (quote Sharpmxg00187) (list (quote (1 . 1)) fcn-in-"
.asciz "charmac.l) (quote fcn-info))"
.ascii "((lambda (current) (cond ((setq current (assq 43 sharpm-func"
.ascii "tion-names)) (rplacd current (quote Sharpm+g00209))) (t (set"
.ascii "q sharpm-function-names (cons (quote (43 . Sharpm+g00209)) s"
.asciz "harpm-function-names))))) nil)"
.asciz "Sharpm+g00209"
.ascii "(putprop (quote Sharpm+g00209) (list (quote (1 . 1)) fcn-in-"
.asciz "charmac.l) (quote fcn-info))"
.ascii "((lambda (current) (cond ((setq current (assq 45 sharpm-func"
.ascii "tion-names)) (rplacd current (quote Sharpm-g00217))) (t (set"
.ascii "q sharpm-function-names (cons (quote (45 . Sharpm-g00217)) s"
.asciz "harpm-function-names))))) nil)"
.asciz "Sharpm-g00217"
.ascii "(putprop (quote Sharpm-g00217) (list (quote (1 . 1)) fcn-in-"
.asciz "charmac.l) (quote fcn-info))"
.ascii "((lambda (current) (cond ((setq current (assq 47 sharpm-func"
.ascii "tion-names)) (rplacd current (quote Sharpm/g00225))) (t (set"
.ascii "q sharpm-function-names (cons (quote (47 . Sharpm/g00225)) s"
.asciz "harpm-function-names))))) nil)"
.asciz "Sharpm/g00225"
.ascii "(putprop (quote Sharpm/g00225) (list (quote (1 . 1)) fcn-in-"
.asciz "charmac.l) (quote fcn-info))"
.ascii "((lambda (current) (cond ((setq current (assq 94 sharpm-func"
.ascii "tion-names)) (rplacd current (quote Sharpm^g00231))) (t (set"
.ascii "q sharpm-function-names (cons (quote (94 . Sharpm^g00231)) s"
.asciz "harpm-function-names))))) nil)"
.asciz "Sharpm^g00231"
.ascii "(putprop (quote Sharpm^g00231) (list (quote (1 . 1)) fcn-in-"
.asciz "charmac.l) (quote fcn-info))"
.ascii "((lambda (current) (cond ((setq current (assq 39 sharpm-func"
.ascii "tion-names)) (rplacd current (quote Sharpm\\'g00237))) (t (se"
.ascii "tq sharpm-function-names (cons (quote (39 . Sharpm\\'g00237))"
.asciz " sharpm-function-names))))) nil)"
.asciz "Sharpm\\'g00237"
.ascii "(putprop (quote Sharpm\\'g00237) (list (quote (1 . 1)) fcn-in"
.asciz "-charmac.l) (quote fcn-info))"
.ascii "((lambda (current) (cond ((setq current (assq 44 sharpm-func"
.ascii "tion-names)) (rplacd current (quote Sharpm,g00243))) (t (set"
.ascii "q sharpm-function-names (cons (quote (44 . Sharpm,g00243)) s"
.asciz "harpm-function-names))))) nil)"
.ascii "((lambda (current) (cond ((setq current (assq 46 sharpm-func"
.ascii "tion-names)) (rplacd current (quote Sharpm,g00243))) (t (set"
.ascii "q sharpm-function-names (cons (quote (46 . Sharpm,g00243)) s"
.asciz "harpm-function-names))))) nil)"
.asciz "Sharpm,g00243"
.ascii "(putprop (quote Sharpm,g00243) (list (quote (1 . 1)) fcn-in-"
.asciz "charmac.l) (quote fcn-info))"
.ascii "((lambda (current) (cond ((setq current (assq 92 sharpm-func"
.ascii "tion-names)) (rplacd current (quote Sharpm\\\\g00249))) (t (se"
.ascii "tq sharpm-function-names (cons (quote (92 . Sharpm\\\\g00249))"
.asciz " sharpm-function-names))))) nil)"
.asciz "Sharpm\\\\g00249"
.ascii "(putprop (quote Sharpm\\\\g00249) (list (quote (1 . 1)) fcn-in"
.asciz "-charmac.l) (quote fcn-info))"
.ascii "((lambda (current) (cond ((setq current (assq 116 sharpm-fun"
.ascii "ction-names)) (rplacd current (quote Sharpmtg00261))) (t (se"
.ascii "tq sharpm-function-names (cons (quote (116 . Sharpmtg00261))"
.asciz " sharpm-function-names))))) nil)"
.ascii "((lambda (current) (cond ((setq current (assq 84 sharpm-func"
.ascii "tion-names)) (rplacd current (quote Sharpmtg00261))) (t (set"
.ascii "q sharpm-function-names (cons (quote (84 . Sharpmtg00261)) s"
.asciz "harpm-function-names))))) nil)"
.asciz "Sharpmtg00261"
.ascii "(putprop (quote Sharpmtg00261) (list (quote (1 . 1)) fcn-in-"
.asciz "charmac.l) (quote fcn-info))"
.ascii "((lambda (current) (cond ((setq current (assq 77 sharpm-func"
.ascii "tion-names)) (rplacd current (quote SharpmMg00267))) (t (set"
.ascii "q sharpm-function-names (cons (quote (77 . SharpmMg00267)) s"
.asciz "harpm-function-names))))) nil)"
.ascii "((lambda (current) (cond ((setq current (assq 109 sharpm-fun"
.ascii "ction-names)) (rplacd current (quote SharpmMg00267))) (t (se"
.ascii "tq sharpm-function-names (cons (quote (109 . SharpmMg00267))"
.asciz " sharpm-function-names))))) nil)"
.ascii "((lambda (current) (cond ((setq current (assq 81 sharpm-func"
.ascii "tion-names)) (rplacd current (quote SharpmMg00267))) (t (set"
.ascii "q sharpm-function-names (cons (quote (81 . SharpmMg00267)) s"
.asciz "harpm-function-names))))) nil)"
.ascii "((lambda (current) (cond ((setq current (assq 113 sharpm-fun"
.ascii "ction-names)) (rplacd current (quote SharpmMg00267))) (t (se"
.ascii "tq sharpm-function-names (cons (quote (113 . SharpmMg00267))"
.asciz " sharpm-function-names))))) nil)"
.ascii "((lambda (current) (cond ((setq current (assq 70 sharpm-func"
.ascii "tion-names)) (rplacd current (quote SharpmMg00267))) (t (set"
.ascii "q sharpm-function-names (cons (quote (70 . SharpmMg00267)) s"
.asciz "harpm-function-names))))) nil)"
.ascii "((lambda (current) (cond ((setq current (assq 102 sharpm-fun"
.ascii "ction-names)) (rplacd current (quote SharpmMg00267))) (t (se"
.ascii "tq sharpm-function-names (cons (quote (102 . SharpmMg00267))"
.asciz " sharpm-function-names))))) nil)"
.asciz "SharpmMg00267"
.ascii "(putprop (quote SharpmMg00267) (list (quote (1 . 1)) fcn-in-"
.asciz "charmac.l) (quote fcn-info))"
.asciz "feature-present"
.ascii "(putprop (quote feature-present) (list (quote (1 . 1)) fcn-i"
.asciz "n-charmac.l) (quote fcn-info))"
.ascii "(setq franz-symbolic-character-names (quote ((eof . -1) (bac"
.ascii "kspace . 8) (bs . 8) (tab . 9) (lf . 10) (linefeed . 10) (ff"
.ascii " . 12) (form . 12) (return . 13) (cr . 13) (newline . 10) (v"
.ascii "t . 11) (esc . 27) (alt . 27) (space . 32) (sp . 32) (dq . 3"
.asciz "4) (lpar . 40) (rpar . 41) (vert . 124) (rubout . 127))))"
lit_end:
.data | this is just for documentation 
.asciz "@(#)Compiled by Liszt 68000 version 8.39a on Fri Dec 15 18:47:45 1989"
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
