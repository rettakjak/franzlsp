	.globl	F00083	|(fcn macro make-equivalent)
F00083:
	link	a6,#-L00086
	tstb	sp@(-132)
	moveml	#L00087,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00084:
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a3@,a2@+
	movl	a3@(4),a2@+
	movl	a3@(8),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(12),a2@+
	movl	a3@(8),a2@+
	movl	a4@(8),a2@+
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
	movl	a3@(16),a2@+
	movl	a3@(8),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(20),a2@+
	movl	a3@(8),a2@+
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(24),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(28),a2@+
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
	moveml	a6@(-20),#L00087
	unlk	a6
	rts
L00087 = 15488
L00086 = 20
	.globl	F00088	|(fcn lexpr max)
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
	movl	a4@,a2@+	|(beginning do)
	movl	#_nilatom+0x1400+4,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
L00093:
	movl	a4@(4),a5
	cmpl	#2,a5@
	jpl	L00094
	movl	a4@(8),d0
	jra	L00097
L00094:
	movl	a4@(4),d0	|(calling greaterp)
	cmpl	a4@(4),d7
	jeq	L00100
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00100
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00101
L00100:
	movl	a4@(-4),a2@+
L00101:
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00099
	movl	a4@(4),d0
	cmpl	a4@(4),d7
	jeq	L00102
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00102
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(8)
	jra	L00103
L00102:
	movl	a4@(-4),a4@(8)
L00103:
	jra	L00098
L00099:
	movl	d7,d0
L00098:
	cmpl	#_nilatom+0x1400-4096,a4@(4)
	jle	L00104
	cmpl	#_nilatom+0x1400+4092,a4@(4)
	jle	L00105
L00104:
	movl	a4@(4),a0
	jbsr	_qoneminus
	movl	d0,a4@(4)
	jra	L00106
L00105:
	movl	a4@(4),d0
	subql	#4,d0
	movl	d0,a4@(4)
L00106:
	jra	L00093
L00097:
	subl	#12,a2
	moveml	a6@(-20),#L00092
	unlk	a6
	rts
L00092 = 15488
L00091 = 20
	.globl	F00107	|(fcn macro catch)
F00107:
	link	a6,#-L00110
	tstb	sp@(-132)
	moveml	#L00111,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00108:
	movl	a3@(32),a2@+
	movl	a3@(8),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
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
	moveml	a6@(-20),#L00111
	unlk	a6
	rts
L00111 = 15488
L00110 = 20
	.globl	F00112	|(fcn macro throw)
F00112:
	link	a6,#-L00115
	tstb	sp@(-132)
	moveml	#L00116,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00113:
	movl	a3@(36),a2@+
	movl	a3@(8),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
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
	moveml	a6@(-20),#L00116
	unlk	a6
	rts
L00116 = 15488
L00115 = 20
	.globl	F00117	|(fcn macro desetq)
F00117:
	link	a6,#-L00120
	tstb	sp@(-132)
	moveml	#L00121,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00118:
	movl	a4@,a5
	movl	a5@,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a4@(4),a2@+	|(beginning do)
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
L00122:
	cmpl	a4@(16),d7
	jne	L00123
	movl	a4@(20),a5
	cmpl	a5@,d7
	jne	L00126
	movl	a4@(20),a1
	movl	a1@(4),d0
	jra	L00125
L00126:
	movl	a3@,a2@+
	movl	a4@(20),a2@+	|(calling nreverse)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	jbsr	_qcons
L00125:
	jra	L00124
L00123:
	movl	a4@(16),a1
	movl	a1@(4),a4@(24)
	movl	a4@(16),a5
	movl	a5@,a0
	movl	a0@(4),a4@(28)
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
	jeq	L00128
	movl	a3@(40),a2@+
	movl	a4@(24),a2@+
	movl	a4@(28),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00127
L00128:
	lea	a2@,a5	|(calling gensym)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a4@(8)
	movl	a4@(24),a2@+	|(calling de-compose)
	movl	a3@(44),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(12)
	movl	a3@(48),a2@+
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+	|(calling append)
	movl	a4@(12),a2@+	|(beginning do)
L00133:
	cmpl	a4@(44),d7
	jne	L00134
	movl	d7,d0
	jra	L00135
L00134:
	movl	a4@(44),a1
	movl	a1@(4),a2@+
	movl	a3@(40),a2@+
	movl	a4@(48),a5
	movl	a5@,a2@+
	movl	a4@(48),a1
	movl	a1@(4),a2@+
	movl	a4@(8),a2@+
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
	movl	a4@(40),a2@+
	jbsr	_qcons
	movl	d0,a4@(40)
	movl	a4@(44),a5
	movl	a5@,a4@(44)
	jra	L00133
L00135:
	subql	#4,a2	|(calling nreverse)
	movl	a4@(40),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	movl	d0,a2@+
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(28),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
L00127:
	movl	d0,a2@+
	movl	a4@(20),a2@+
	jbsr	_qcons
	movl	d0,a4@(20)
	movl	a4@(16),a5
	movl	a5@,a1
	movl	a1@,a4@(16)
	jra	L00122
L00124:
	subl	#32,a2
	moveml	a6@(-20),#L00121
	unlk	a6
	rts
L00121 = 15488
L00120 = 20
	.globl	F00136	|(fcn macro sassoc)
F00136:
	link	a6,#-L00139
	tstb	sp@(-132)
	moveml	#L00140,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00137:
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
	movl	a5@,a1
	movl	a1@(4),a2@+
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
	jne	L00143
	movl	a3@(8),a2@+
	movl	a4@(12),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jeq	L00142
L00143:
	movl	a3@(52),a2@+
	movl	a3@(56),a2@+
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(60),a2@+
	movl	a4@(12),a2@+
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
	jra	L00141
L00142:
	movl	a3@(52),a2@+
	movl	a3@(56),a2@+
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(12),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
L00141:
	subl	#16,a2
	moveml	a6@(-24),#L00140
	unlk	a6
	rts
L00140 = 15552
L00139 = 24
	.globl	F00146	|(fcn macro sassq)
F00146:
	link	a6,#-L00149
	tstb	sp@(-132)
	moveml	#L00150,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00147:
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
	movl	a5@,a1
	movl	a1@(4),a2@+
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
	jne	L00153
	movl	a3@(8),a2@+
	movl	a4@(12),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jeq	L00152
L00153:
	movl	a3@(52),a2@+
	movl	a3@(64),a2@+
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(60),a2@+
	movl	a4@(12),a2@+
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
	jra	L00151
L00152:
	movl	a3@(52),a2@+
	movl	a3@(64),a2@+
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(12),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
L00151:
	subl	#16,a2
	moveml	a6@(-24),#L00150
	unlk	a6
	rts
L00150 = 15552
L00149 = 24
	.globl	F00156	|(fcn macro signp)
F00156:
	link	a6,#-L00159
	tstb	sp@(-132)
	moveml	#L00160,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00157:
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a3@(68),d6
	cmpl	a4@(4),d6
	jne	L00162
	movl	a3@(72),d0
	jra	L00161
L00162:
	movl	a3@(76),d6
	cmpl	a4@(4),d6
	jne	L00163
	movl	a3@(80),d0
	jra	L00161
L00163:
	movl	a3@(84),d6
	cmpl	a4@(4),d6
	jne	L00164
	movl	a3@(88),d0
	jra	L00161
L00164:
	movl	a3@(92),d6
	cmpl	a4@(4),d6
	jne	L00165
	movl	a3@(96),d0
	jra	L00161
L00165:
	movl	a3@(100),d6
	cmpl	a4@(4),d6
	jne	L00166
	movl	a3@(104),d0
	jra	L00161
L00166:
	movl	a3@(108),d6
	cmpl	a4@(4),d6
	jne	L00167
	movl	a3@(112),d0
	jra	L00161
L00167:
	movl	a3@(116),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00161:
	movl	d0,a4@(4)
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
	jeq	L00169
	movl	a3@(120),a2@+
	movl	a3@(124),a2@+
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(8),a2@+	|(calling subst)
	movl	a3@(128),a2@+
	movl	a4@(4),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00168
L00169:
	movl	a3@(48),a2@+
	movl	a3@(132),a2@+
	movl	a3@(120),a2@+
	movl	a3@(136),a2@+
	movl	a4@(4),a2@+
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
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
L00168:
	subl	#12,a2
	moveml	a6@(-24),#L00160
	unlk	a6
	rts
L00160 = 15552
L00159 = 24
	.globl	F00172	|(fcn macro unwind-protect)
F00172:
	link	a6,#-L00175
	tstb	sp@(-132)
	moveml	#L00176,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00173:
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a2@+
	movl	a3@(140),a2@+	|(calling gensym)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(48),a2@+
	movl	a4@(12),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(40),a2@+
	movl	a4@(12),a2@+
	movl	a3@(32),a2@+
	movl	a3@(144),a2@+
	movl	a4@(4),a2@+
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
	movl	a4@(8),a2@+	|(calling append)
	movl	a3@(148),a2@+
	movl	a3@(120),a2@+
	movl	a3@(152),a2@+
	movl	a4@(12),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(156),a2@+
	movl	a3@(160),a2@+
	movl	a3@(164),a2@+
	movl	a4@(12),a2@+
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
	movl	a3@(168),a2@+
	movl	a3@(172),a2@+
	movl	a4@(12),a2@+
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
	movl	a3@(176),a2@+
	movl	a4@(12),a2@+
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
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(180),a2@+
	jbsr	_qcons
	subl	#16,a2
	moveml	a6@(-20),#L00176
	unlk	a6
	rts
L00176 = 15488
L00175 = 20
	.globl	F00177	|(fcn lambda sys:fpeint-serv)
F00177:
	link	a6,#-L00180
	tstb	sp@(-132)
	moveml	#L00181,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00178:
	movl	a3@(184),a2@+	|(calling error)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	moveml	a6@(-20),#L00181
	unlk	a6
	rts
L00181 = 15488
L00180 = 20
	.globl	F00182	|(fcn lambda sys:int-serv)
F00182:
	link	a6,#-L00185
	tstb	sp@(-132)
	moveml	#L00186,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00183:
	movl	a3@(188),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling drain)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(176),a5	|(calling *break)
	movl	a5@,a2@+
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#4,a2
	moveml	a6@(-20),#L00186
	unlk	a6
	rts
L00186 = 15488
L00185 = 20
	.globl	F00187	|(fcn lambda prtpagesused)
F00187:
	link	a6,#-L00190
	tstb	sp@(-132)
	moveml	#L00191,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00188:
	movl	a3@(192),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@,d5	|(beginning do)
	movl	a3@(196),d0
	cmpl	d0,d7
	jeq	L00195
	movl	d0,a0
L00197:
	cmpl	a0@(4),d5
	jeq	L00196
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00197
	movl	a0,d0
	jra	L00195
L00196:
	movl	a3@(200),d0
	jra	L00194
L00195:
	movl	a4@,a2@+
	movl	a3@(204),a2@+
	jbsr	_qcons
L00194:
	movl	d0,a2@+
	movl	d7,a2@+
L00192:
	cmpl	a4@(12),d7
	jne	L00193
	movl	a3@(208),a2@+	|(calling print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	#_nilatom+0x1400+0,a2@+	|(calling print)
	|(calling max)
	movl	#_nilatom+0x1400+400,a2@+	|(calling quotient)
	|(calling times)
	movl	a4@(4),a2@+	|(calling difference)
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(212),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00198
L00193:
	movl	a4@(12),a1
	movl	a1@(4),a4@(16)
	movl	a4@(16),a2@+	|(calling greaterp)
	|(calling opval)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	#_nilatom+0x1400+0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00200
	movl	a4@,d6
	cmpl	a4@(16),d6
	jne	L00202
	movl	a3@(216),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00201
L00202:
	movl	d7,d0
L00201:
	movl	a4@(16),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(220),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(16),a2@+	|(calling print)
	|(calling opval)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(224),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(228),a2@+	|(calling print)
	|(calling fix)
	|(calling quotient)
	|(calling times)
	movl	a4@(16),a2@+	|(calling opval)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a0
	movl	a0@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@(16),a2@+	|(calling *)
	|(calling opval)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a4@(16),a2@+	|(calling opval)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a0
	movl	a0@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+136,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
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
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(232),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(236),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00199
L00200:
	movl	d7,d0
L00199:
	movl	a4@(12),a5
	movl	a5@,a4@(12)
	jra	L00192
L00198:
	subl	#20,a2
	moveml	a6@(-28),#L00191
	unlk	a6
	rts
L00191 = 15584
L00190 = 28
	.globl	F00203	|(fcn nlambda gcafter)
F00203:
	link	a6,#-L00206
	tstb	sp@(-132)
	moveml	#L00207,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00204:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	cmpl	a4@,d7
	jne	L00210
	movl	d7,d0
	jra	L00208
|	jra	L00209
L00210:
	movl	d7,d0
L00209:
	movl	a3@(240),a2@+	|(calling boundp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00212
	movl	a3@(240),a5
	movl	#_nilatom+0x1400+0,a5@
	jra	L00211
L00212:
	movl	d7,d0
L00211:
	movl	a3@(240),a5
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00213
	movl	a3@(240),a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	a3@(240),a5
	movl	d0,a5@
	jra	L00214
L00213:
	movl	a3@(240),a5
	movl	a5@,d0
	addql	#4,d0
	movl	a3@(240),a5
	movl	d0,a5@
L00214:
	movl	a4@,a1	|(calling opval)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(4)
	lea	a2@,a5	|(calling ptime)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+160,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a4@(16)
	movl	a4@(16),a1	|(calling max)
	|(calling difference)
	movl	a1@(4),a2@+
	movl	a3@(244),a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	#_nilatom+0x1400+4,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(24)
	movl	a4@(16),a5	|(calling difference)
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a3@(244),a5
	movl	a5@,a0
	movl	a0@,a0
	movl	a0@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(28)
	movl	a3@(244),a5
	movl	a4@(16),a5@
	movl	#_nilatom+0x1400+400,a2@+	|(calling quotient)
	|(calling times)
	movl	a4@(4),a1
	movl	a1@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	#_nilatom+0x1400+4,a2@+	|(calling max)
	movl	a4@(4),a5	|(calling times)
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@(4),a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(8)
	movl	a3@(248),a5
	cmpl	a5@,d7
	jeq	L00216
	movl	a4@(8),a2@+	|(calling greaterp)
	movl	#_nilatom+0x1400+380,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00218
	movl	a3@(252),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(256),a2@+	|(calling error)
	movl	a4@,a1
	movl	a1@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00217
L00218:
	movl	#_nilatom+0x1400+0,d0
L00217:
	jra	L00215
L00216:
	movl	a4@(8),a2@+	|(calling greaterp)
	movl	a3@(260),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00219
	movl	a3@(264),a5	|(calling max)
	movl	a5@,a2@+
	movl	a3@(268),a5	|(calling fix)
	|(calling times)
	movl	a5@,a2@+
	movl	a4@(4),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
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
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00215
L00219:
	movl	a4@(8),a2@+	|(calling greaterp)
	movl	a3@(272),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00220
	movl	a3@(264),a5
	movl	a5@,d0
	jra	L00215
L00220:
	movl	a4@(4),a5	|(calling lessp)
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	#_nilatom+0x1400+400,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00221
	movl	a3@(264),a5
	movl	a5@,d0
	jra	L00215
L00221:
	movl	#_nilatom+0x1400+0,d0
L00215:
	movl	d0,a4@(12)
	movl	a3@(248),a5
	cmpl	a5@,d7
	jne	L00223
	movl	a4@(12),a2@+	|(calling greaterp)
	movl	#_nilatom+0x1400+0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00223
	movl	a3@(176),a5
	movl	a5@,d0
	movl	d0,sp@-
	movl	a3@(276),sp@-
	movl	#2,sp@-
	movl	a2,_np
	movl	a2,_lbot
	jbsr	_qpushframe
	movl	d0,_errp
	tstl	_retval
	jeq	L00230
	movl	_lispretval,d0
	jra	L00229
L00230:
	movl	a4@,a1	|(calling allocate)
	movl	a1@(4),a2@+
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+176,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
L00229:
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
	jeq	L00226
	movl	a3@(280),a5
	cmpl	a5@,d7
	jeq	L00232
	movl	a3@(284),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00231
L00232:
	movl	d7,d0
L00231:
	movl	a3@(176),a5
	movl	a5@,d6
	movl	a3@(248),a5
	movl	d6,a5@
	jra	L00225
L00226:
	movl	d7,d0
L00225:
	jra	L00222
L00223:
	movl	d7,d0
L00222:
	movl	a3@(280),a5
	cmpl	a5@,d7
	jeq	L00234
	movl	a4@,a1	|(calling prtpagesused)
	movl	a1@(4),a2@+
	movl	a4@(24),a2@+
	movl	a4@(28),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+184,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00233
L00234:
	movl	d7,d0
L00233:
	movl	d7,d0
L00208:
	subl	#32,a2
	moveml	a6@(-24),#L00207
	unlk	a6
	rts
L00207 = 15552
L00206 = 24
	.globl	F00235	|(fcn lambda bigp)
F00235:
	link	a6,#-L00238
	tstb	sp@(-132)
	moveml	#L00239,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00236:
	movl	a4@,a2@+	|(calling type)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+192,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(288),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00240
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00241
	movl	d7,d0
	jra	L00242
L00240:
	subql	#8,a2
L00241:
	movl	a3@(176),d0
L00242:
	subql	#4,a2
	moveml	a6@(-24),#L00239
	unlk	a6
	rts
L00239 = 15552
L00238 = 24
	.globl	F00243	|(fcn nlambda comment)
F00243:
	link	a6,#-L00246
	tstb	sp@(-132)
	moveml	#L00247,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00244:
	movl	a3@(292),d0
	subql	#4,a2
	moveml	a6@(-20),#L00247
	unlk	a6
	rts
L00247 = 15488
L00246 = 20
	.globl	F00248	|(fcn lambda copy)
F00248:
	link	a6,#-L00251
	tstb	sp@(-132)
	moveml	#L00252,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00249:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00254
	movl	a4@,a1	|(calling copy)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@,a5	|(calling copy)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00253
L00254:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00255
	movl	a4@,a2@+	|(calling vget)
	movl	a3@(296),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+216,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00257
	movl	a4@,d0
	jra	L00256
L00257:
	movl	a4@,a0
	movl	a0@(-8),d2
	asrl	#2,d2
	jbsr	_qnewint
	movl	d0,a2@+
	movl	a4@(4),a2@+	|(beginning do)
	|(calling new-vector)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	#_nilatom+0x1400+0,a2@+
L00258:
	movl	a4@(12),a5
	movl	a5@,d6
	movl	a4@(4),a5
	cmpl	a5@,d6
	jmi	L00259
	movl	a4@(8),a2@+	|(calling vsetprop)
	movl	a4@,a2@+	|(calling copy)
	|(calling vprop)
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
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@(8),d0
	jra	L00260
L00259:
	movl	a4@,a0	|(calling copy)
	movl	a4@(12),a5
	movl	a5@,d2
	jpl	L00262
	jmp	vecindexerr
L00262:
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00263
	jmp	vecindexerr
L00263:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,a2@+
	jra	L00264
vecindexerr:
	movl	a0,a2@+
	jbsr	_qnewint
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+248,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00264:
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,d1
	movl	a4@(8),a0
	movl	a4@(12),a5
	movl	a5@,d2
	jpl	L00261
	jmp	vecindexerr
L00261:
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00265
	jmp	vecindexerr
L00265:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	d1,a1@
	cmpl	#_nilatom+0x1400+4088,a4@(12)
	jle	L00266
	movl	a4@(12),a0
	jbsr	_qoneplus
	movl	d0,a4@(12)
	jra	L00267
L00266:
	movl	a4@(12),d0
	addql	#4,d0
	movl	d0,a4@(12)
L00267:
	jra	L00258
L00260:
	subl	#12,a2
L00256:
	jra	L00253
L00255:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#19,a5@(0,d0:L)
	jne	L00268
	movl	a4@,a2@+	|(calling vget)
	movl	a3@(296),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+216,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00270
	movl	a4@,d0
	jra	L00269
L00270:
	movl	a4@,a0
	movl	a0@(-8),d2
	jbsr	_qnewint
	movl	d0,a2@+
	movl	a4@(4),a2@+	|(beginning do)
	|(calling new-vectori-byte)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+256,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	#_nilatom+0x1400+0,a2@+
L00271:
	movl	a4@(12),a5
	movl	a5@,d6
	movl	a4@(4),a5
	cmpl	a5@,d6
	jmi	L00272
	movl	a4@(8),a2@+	|(calling vsetprop)
	movl	a4@,a2@+	|(calling copy)
	|(calling vprop)
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
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@(8),d0
	jra	L00273
L00272:
	movl	a4@,a0
	movl	a4@(12),a5
	movl	a5@,d2
	jpl	L00275
	jmp	vecindexerr
L00275:
	cmpl	a0@(-8),d2
	jmi	L00276
	jmp	vecindexerr
L00276:
	lea	a0@(0,d2:L),a1
	clrl	d2
	movb	a1@,d2
	asll	#2,d2
	movl	d2,a1
	movl	#_nilatom+0x1400,d0
	lea	a1@(0,d0:L),a1
	movl	a1,a0
	movl	a0@,d1
	movl	a4@(8),a0
	movl	a4@(12),a5
	movl	a5@,d2
	jpl	L00274
	jmp	vecindexerr
L00274:
	cmpl	a0@(-8),d2
	jmi	L00277
	jmp	vecindexerr
L00277:
	movl	d2,d0
	lea	a0@(0,d0:L),a1
	movl	d1,d1
	movb	d1,a1@
	cmpl	#_nilatom+0x1400+4088,a4@(12)
	jle	L00278
	movl	a4@(12),a0
	jbsr	_qoneplus
	movl	d0,a4@(12)
	jra	L00279
L00278:
	movl	a4@(12),d0
	addql	#4,d0
	movl	d0,a4@(12)
L00279:
	jra	L00271
L00273:
	subl	#12,a2
L00269:
	jra	L00253
L00268:
	movl	a4@,d0
L00253:
	subql	#4,a2
	moveml	a6@(-28),#L00252
	unlk	a6
	rts
L00252 = 15556
L00251 = 28
	.globl	F00280	|(fcn lambda copysymbol)
F00280:
	link	a6,#-L00283
	tstb	sp@(-132)
	moveml	#L00284,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00281:
	movl	a4@,a2@+	|(calling uconcat)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+264,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	cmpl	a4@(4),d7
	jeq	L00286
	movl	a4@,a2@+	|(calling boundp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00288
	movl	a4@(8),a2@+	|(calling set)
	movl	a4@,a2@+	|(calling eval)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+272,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+280,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00287
L00288:
	movl	d7,d0
L00287:
	movl	a4@(8),a2@+	|(calling putd)
	movl	a4@,a1
	movl	a1@(8),a2@+
	cmpl	a1@(8),d7
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+288,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@(8),a2@+	|(calling setplist)
	movl	a4@,a2@+	|(calling plist)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+296,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+304,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00285
L00286:
	movl	d7,d0
L00285:
	movl	a4@(8),d0
	subl	#12,a2
	moveml	a6@(-20),#L00284
	unlk	a6
	rts
L00284 = 15488
L00283 = 20
	.globl	F00289	|(fcn lambda cvttointlisp)
F00289:
	link	a6,#-L00292
	tstb	sp@(-132)
	moveml	#L00293,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00290:
	movl	a3@(300),a2@+	|(calling setsyntax)
	movl	a3@(304),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(308),a2@+	|(calling setsyntax)
	movl	a3@(312),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(316),a2@+	|(calling setsyntax)
	movl	a3@(312),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(320),a2@+	|(calling setsyntax)
	movl	a3@(312),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(324),a2@+	|(calling sstatus)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+320,a5
	jbsr	a5@
	lea	a2@(-4),a2
	moveml	a6@(-20),#L00293
	unlk	a6
	rts
L00293 = 15488
L00292 = 20
	.globl	F00294	|(fcn lambda cvttomaclisp)
F00294:
	link	a6,#-L00297
	tstb	sp@(-132)
	moveml	#L00298,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00295:
	movl	a3@(328),a2@+	|(calling setsyntax)
	movl	a3@(304),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(308),a2@+	|(calling setsyntax)
	movl	a3@(312),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(332),a2@+	|(calling setsyntax)
	movl	a3@(312),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(336),a2@+	|(calling setsyntax)
	movl	a3@(312),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(340),a2@+	|(calling sstatus)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+320,a5
	jbsr	a5@
	lea	a2@(-4),a2
	moveml	a6@(-20),#L00298
	unlk	a6
	rts
L00298 = 15488
L00297 = 20
	.globl	F00299	|(fcn lambda cvttoucilisp)
F00299:
	link	a6,#-L00302
	tstb	sp@(-132)
	moveml	#L00303,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00300:
	movl	a3@(344),a2@+	|(calling sstatus)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+320,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(348),a2@+	|(calling setsyntax)
	movl	a3@(352),a2@+
	movl	a3@(320),a2@+
	movl	a3@(356),a5
	movl	a5@,a2@+
	jbsr	_qget
	movl	d0,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	a3@(320),a2@+	|(calling setsyntax)
	movl	a3@(312),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(360),a2@+	|(calling setsyntax)
	movl	a3@(352),a2@+
	movl	a3@(364),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	a3@(368),a2@+	|(calling setsyntax)
	movl	a3@(312),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(328),a2@+	|(calling setsyntax)
	movl	a3@(304),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(308),a2@+	|(calling setsyntax)
	movl	a3@(312),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@(-8),a2
	moveml	a6@(-20),#L00303
	unlk	a6
	rts
L00303 = 15488
L00302 = 20
	.globl	F00304	|(fcn lambda cvttofranzlisp)
F00304:
	link	a6,#-L00307
	tstb	sp@(-132)
	moveml	#L00308,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00305:
	movl	a3@(328),a2@+	|(calling setsyntax)
	movl	a3@(312),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(308),a2@+	|(calling setsyntax)
	movl	a3@(304),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(332),a2@+	|(calling setsyntax)
	movl	a3@(372),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(336),a2@+	|(calling setsyntax)
	movl	a3@(376),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(380),a2@+	|(calling sstatus)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+320,a5
	jbsr	a5@
	lea	a2@(-4),a2
	moveml	a6@(-20),#L00308
	unlk	a6
	rts
L00308 = 15488
L00307 = 20
	.globl	F00309	|(fcn nlambda defprop)
F00309:
	link	a6,#-L00312
	tstb	sp@(-132)
	moveml	#L00313,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00310:
	movl	a4@,a1	|(calling putprop)
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+328,a5
	jbsr	a5@
	lea	a2@(-12),a2
	subql	#4,a2
	moveml	a6@(-20),#L00313
	unlk	a6
	rts
L00313 = 15488
L00312 = 20
	.globl	F00314	|(fcn lexpr delete)
F00314:
	link	a6,#-L00317
	tstb	sp@(-132)
	moveml	#L00318,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00315:
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
	cmpl	#_nilatom+0x1400+8,a4@
	jne	L00322
	movl	#_nilatom+0x1400-4,a4@(20)
	jra	L00321
L00322:
	cmpl	#_nilatom+0x1400+12,a4@
	jne	L00323
	movl	#_nilatom+0x1400+12,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(20)
	jra	L00321
L00323:
	movl	a3@(384),a2@+	|(calling error)
	movl	a3@(388),a2@+
	movl	a4@,a2@+
	cmpl	#_nilatom+0x1400+0,a4@(32)
	jne	L00327
	movl	d7,d0
	jra	L00326
L00327:
	movl	a4@(32),a2@+	|(calling minusp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+336,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00328
	movl	a4@(-4),a2@+	|(beginning do)
	movl	d7,a2@+
L00329:
	movl	a4@(36),a5
	movl	a5@,a2@+
	movl	a4@(-4),a0
	movl	a0@,d2
	movl	d2,d0
	movl	a4@(32),a5
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
	movl	a4@(40),d0
	jra	L00333
L00330:
	cmpl	#_nilatom+0x1400-4096,a4@(36)
	jle	L00337
	cmpl	#_nilatom+0x1400+4092,a4@(36)
	jle	L00338
L00337:
	movl	a4@(36),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00339
L00338:
	movl	a4@(36),d0
	subql	#4,d0
	movl	d0,a2@+
L00339:
	movl	a4@(36),d0
	cmpl	a4@(36),d7
	jeq	L00340
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00340
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00341
L00340:
	movl	a4@(-4),a2@+
L00341:
	movl	a4@(40),a2@+
	jbsr	_qcons
	movl	d0,a4@(40)
	movl	a2@-,a4@(36)
	jra	L00329
L00333:
	subql	#8,a2
	jra	L00326
L00328:
	movl	a4@(32),a2@+	|(beginning do)
	movl	d7,a2@+
L00342:
	movl	a4@(36),a5
	cmpl	#1,a5@
	jpl	L00343
	movl	a4@(40),d0
	jra	L00344
L00343:
	cmpl	#_nilatom+0x1400-4096,a4@(36)
	jle	L00345
	cmpl	#_nilatom+0x1400+4092,a4@(36)
	jle	L00346
L00345:
	movl	a4@(36),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00347
L00346:
	movl	a4@(36),d0
	subql	#4,d0
	movl	d0,a2@+
L00347:
	movl	a4@(36),d0
	cmpl	a4@(36),d7
	jeq	L00348
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00348
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00349
L00348:
	movl	a4@(-4),a2@+
L00349:
	movl	a4@(40),a2@+
	jbsr	_qcons
	movl	d0,a4@(40)
	movl	a2@-,a4@(36)
	jra	L00342
L00344:
	subql	#8,a2
L00326:
	subql	#4,a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00321:
	movl	#_nilatom+0x1400+4,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(4)
	movl	#_nilatom+0x1400+8,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(8)
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
	jeq	L00355
	cmpl	a4@(8),d7
	jeq	L00355
	movl	a3@(392),a2@+	|(calling error)
	movl	a3@(388),a2@+
	movl	a4@,a2@+
	cmpl	#_nilatom+0x1400+0,a4@(32)
	jne	L00360
	movl	d7,d0
	jra	L00359
L00360:
	movl	a4@(32),a2@+	|(calling minusp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+336,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00361
	movl	a4@(-4),a2@+	|(beginning do)
	movl	d7,a2@+
L00362:
	movl	a4@(36),a5
	movl	a5@,a2@+
	movl	a4@(-4),a0
	movl	a0@,d2
	movl	d2,d0
	movl	a4@(32),a5
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
	jcs	L00369
	jbsr	_qnewint
L00369:
	movl	d0,a0
	movl	a0@,d0
	movl	a2@-,d6
	cmpl	d0,d6
	jpl	L00363
	movl	a4@(40),d0
	jra	L00366
L00363:
	cmpl	#_nilatom+0x1400-4096,a4@(36)
	jle	L00370
	cmpl	#_nilatom+0x1400+4092,a4@(36)
	jle	L00371
L00370:
	movl	a4@(36),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00372
L00371:
	movl	a4@(36),d0
	subql	#4,d0
	movl	d0,a2@+
L00372:
	movl	a4@(36),d0
	cmpl	a4@(36),d7
	jeq	L00373
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00373
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00374
L00373:
	movl	a4@(-4),a2@+
L00374:
	movl	a4@(40),a2@+
	jbsr	_qcons
	movl	d0,a4@(40)
	movl	a2@-,a4@(36)
	jra	L00362
L00366:
	subql	#8,a2
	jra	L00359
L00361:
	movl	a4@(32),a2@+	|(beginning do)
	movl	d7,a2@+
L00375:
	movl	a4@(36),a5
	cmpl	#1,a5@
	jpl	L00376
	movl	a4@(40),d0
	jra	L00377
L00376:
	cmpl	#_nilatom+0x1400-4096,a4@(36)
	jle	L00378
	cmpl	#_nilatom+0x1400+4092,a4@(36)
	jle	L00379
L00378:
	movl	a4@(36),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00380
L00379:
	movl	a4@(36),d0
	subql	#4,d0
	movl	d0,a2@+
L00380:
	movl	a4@(36),d0
	cmpl	a4@(36),d7
	jeq	L00381
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00381
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00382
L00381:
	movl	a4@(-4),a2@+
L00382:
	movl	a4@(40),a2@+
	jbsr	_qcons
	movl	d0,a4@(40)
	movl	a2@-,a4@(36)
	jra	L00375
L00377:
	subql	#8,a2
L00359:
	subql	#4,a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00354
L00355:
	movl	d7,d0
L00354:
	movl	d7,a2@+
	movl	a4@(8),a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	movl	a4@(12),a4@(16)
L00319:
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
	jne	L00385
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@(20),d6
	jne	L00384
	movl	a4@(20),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L00384
L00385:
	movl	a4@(16),a5
	movl	a5@,d0
	jra	L00320
|	jra	L00383
L00384:
	movl	a4@(4),a2@+
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00390
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00391
	jra	L00389
L00390:
	subql	#8,a2
L00391:
	movl	a4@(12),a0
	movl	a4@(8),a5
	movl	a5@,a0@
	movl	a0,d0
	cmpl	#_nilatom+0x1400-4096,a4@(20)
	jle	L00392
	cmpl	#_nilatom+0x1400+4092,a4@(20)
	jle	L00393
L00392:
	movl	a4@(20),a0
	jbsr	_qoneminus
	movl	d0,a4@(20)
	jra	L00394
L00393:
	movl	a4@(20),d0
	subql	#4,d0
	movl	d0,a4@(20)
L00394:
	jra	L00383
L00389:
	movl	a4@(12),a5
	movl	a5@,a4@(12)
L00383:
	movl	a4@(8),a5
	movl	a5@,a4@(8)
	jra	L00319
|	movl	d7,d0
L00320:
	subl	#24,a2
	moveml	a6@(-28),#L00318
	unlk	a6
	rts
L00318 = 15556
L00317 = 28
	.globl	F00395	|(fcn lexpr delq)
F00395:
	link	a6,#-L00398
	tstb	sp@(-132)
	moveml	#L00399,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00396:
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
	cmpl	#_nilatom+0x1400+8,a4@
	jne	L00403
	movl	#_nilatom+0x1400-4,a4@(20)
	jra	L00402
L00403:
	cmpl	#_nilatom+0x1400+12,a4@
	jne	L00404
	movl	#_nilatom+0x1400+12,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(20)
	jra	L00402
L00404:
	movl	a3@(396),a2@+	|(calling error)
	movl	a3@(400),a2@+
	movl	a4@,a2@+
	cmpl	#_nilatom+0x1400+0,a4@(32)
	jne	L00408
	movl	d7,d0
	jra	L00407
L00408:
	movl	a4@(32),a2@+	|(calling minusp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+336,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00409
	movl	a4@(-4),a2@+	|(beginning do)
	movl	d7,a2@+
L00410:
	movl	a4@(36),a5
	movl	a5@,a2@+
	movl	a4@(-4),a0
	movl	a0@,d2
	movl	d2,d0
	movl	a4@(32),a5
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
	jcs	L00417
	jbsr	_qnewint
L00417:
	movl	d0,a0
	movl	a0@,d0
	movl	a2@-,d6
	cmpl	d0,d6
	jpl	L00411
	movl	a4@(40),d0
	jra	L00414
L00411:
	cmpl	#_nilatom+0x1400-4096,a4@(36)
	jle	L00418
	cmpl	#_nilatom+0x1400+4092,a4@(36)
	jle	L00419
L00418:
	movl	a4@(36),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00420
L00419:
	movl	a4@(36),d0
	subql	#4,d0
	movl	d0,a2@+
L00420:
	movl	a4@(36),d0
	cmpl	a4@(36),d7
	jeq	L00421
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00421
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00422
L00421:
	movl	a4@(-4),a2@+
L00422:
	movl	a4@(40),a2@+
	jbsr	_qcons
	movl	d0,a4@(40)
	movl	a2@-,a4@(36)
	jra	L00410
L00414:
	subql	#8,a2
	jra	L00407
L00409:
	movl	a4@(32),a2@+	|(beginning do)
	movl	d7,a2@+
L00423:
	movl	a4@(36),a5
	cmpl	#1,a5@
	jpl	L00424
	movl	a4@(40),d0
	jra	L00425
L00424:
	cmpl	#_nilatom+0x1400-4096,a4@(36)
	jle	L00426
	cmpl	#_nilatom+0x1400+4092,a4@(36)
	jle	L00427
L00426:
	movl	a4@(36),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00428
L00427:
	movl	a4@(36),d0
	subql	#4,d0
	movl	d0,a2@+
L00428:
	movl	a4@(36),d0
	cmpl	a4@(36),d7
	jeq	L00429
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00429
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00430
L00429:
	movl	a4@(-4),a2@+
L00430:
	movl	a4@(40),a2@+
	jbsr	_qcons
	movl	d0,a4@(40)
	movl	a2@-,a4@(36)
	jra	L00423
L00425:
	subql	#8,a2
L00407:
	subql	#4,a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00402:
	movl	#_nilatom+0x1400+4,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(4)
	movl	#_nilatom+0x1400+8,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(8)
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
	jeq	L00436
	cmpl	a4@(8),d7
	jeq	L00436
	movl	a3@(404),a2@+	|(calling error)
	movl	a3@(400),a2@+
	movl	a4@,a2@+
	cmpl	#_nilatom+0x1400+0,a4@(32)
	jne	L00441
	movl	d7,d0
	jra	L00440
L00441:
	movl	a4@(32),a2@+	|(calling minusp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+336,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00442
	movl	a4@(-4),a2@+	|(beginning do)
	movl	d7,a2@+
L00443:
	movl	a4@(36),a5
	movl	a5@,a2@+
	movl	a4@(-4),a0
	movl	a0@,d2
	movl	d2,d0
	movl	a4@(32),a5
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
	jcs	L00450
	jbsr	_qnewint
L00450:
	movl	d0,a0
	movl	a0@,d0
	movl	a2@-,d6
	cmpl	d0,d6
	jpl	L00444
	movl	a4@(40),d0
	jra	L00447
L00444:
	cmpl	#_nilatom+0x1400-4096,a4@(36)
	jle	L00451
	cmpl	#_nilatom+0x1400+4092,a4@(36)
	jle	L00452
L00451:
	movl	a4@(36),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00453
L00452:
	movl	a4@(36),d0
	subql	#4,d0
	movl	d0,a2@+
L00453:
	movl	a4@(36),d0
	cmpl	a4@(36),d7
	jeq	L00454
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00454
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00455
L00454:
	movl	a4@(-4),a2@+
L00455:
	movl	a4@(40),a2@+
	jbsr	_qcons
	movl	d0,a4@(40)
	movl	a2@-,a4@(36)
	jra	L00443
L00447:
	subql	#8,a2
	jra	L00440
L00442:
	movl	a4@(32),a2@+	|(beginning do)
	movl	d7,a2@+
L00456:
	movl	a4@(36),a5
	cmpl	#1,a5@
	jpl	L00457
	movl	a4@(40),d0
	jra	L00458
L00457:
	cmpl	#_nilatom+0x1400-4096,a4@(36)
	jle	L00459
	cmpl	#_nilatom+0x1400+4092,a4@(36)
	jle	L00460
L00459:
	movl	a4@(36),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00461
L00460:
	movl	a4@(36),d0
	subql	#4,d0
	movl	d0,a2@+
L00461:
	movl	a4@(36),d0
	cmpl	a4@(36),d7
	jeq	L00462
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00462
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00463
L00462:
	movl	a4@(-4),a2@+
L00463:
	movl	a4@(40),a2@+
	jbsr	_qcons
	movl	d0,a4@(40)
	movl	a2@-,a4@(36)
	jra	L00456
L00458:
	subql	#8,a2
L00440:
	subql	#4,a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00435
L00436:
	movl	d7,d0
L00435:
	movl	d7,a2@+
	movl	a4@(8),a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	movl	a4@(12),a4@(16)
L00400:
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
	jne	L00466
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@(20),d6
	jne	L00465
	movl	a4@(20),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L00465
L00466:
	movl	a4@(16),a5
	movl	a5@,d0
	jra	L00401
|	jra	L00464
L00465:
	movl	a4@(4),a2@+
	movl	a4@(8),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00470
	movl	a4@(12),a0
	movl	a4@(8),a5
	movl	a5@,a0@
	movl	a0,d0
	cmpl	#_nilatom+0x1400-4096,a4@(20)
	jle	L00471
	cmpl	#_nilatom+0x1400+4092,a4@(20)
	jle	L00472
L00471:
	movl	a4@(20),a0
	jbsr	_qoneminus
	movl	d0,a4@(20)
	jra	L00473
L00472:
	movl	a4@(20),d0
	subql	#4,d0
	movl	d0,a4@(20)
L00473:
	jra	L00464
L00470:
	movl	a4@(12),a5
	movl	a5@,a4@(12)
L00464:
	movl	a4@(8),a5
	movl	a5@,a4@(8)
	jra	L00400
|	movl	d7,d0
L00401:
	subl	#24,a2
	moveml	a6@(-28),#L00399
	unlk	a6
	rts
L00399 = 15556
L00398 = 28
	.globl	F00474	|(fcn lambda evenp)
F00474:
	link	a6,#-L00477
	tstb	sp@(-132)
	moveml	#L00478,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00475:
	movl	#_nilatom+0x1400+16,a2@+	|(calling boole)
	movl	#_nilatom+0x1400+4,a2@+
	movl	a4@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@(4),d6
	jne	L00482
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L00483
	movl	a3@(176),d0
	jra	L00484
L00483:
	movl	d7,d0
L00484:
	jra	L00485
L00482:
	movl	d7,d0
L00485:
	subql	#4,a2
	cmpl	d0,d7
	jne	L00480
	movl	a3@(176),a5
	movl	a5@,d0
	jra	L00479
L00480:
	movl	d7,d0
L00479:
	subql	#4,a2
	moveml	a6@(-24),#L00478
	unlk	a6
	rts
L00478 = 15552
L00477 = 24
	.globl	F00486	|(fcn nlambda ex)
F00486:
	link	a6,#-L00489
	tstb	sp@(-132)
	moveml	#L00490,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00487:
	movl	a3@(408),a2@+	|(calling exvi)
	movl	a4@,a2@+
	movl	d7,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+352,a5
	jbsr	a5@
	lea	a2@(-12),a2
	subql	#4,a2
	moveml	a6@(-20),#L00490
	unlk	a6
	rts
L00490 = 15488
L00489 = 20
	.globl	F00491	|(fcn lambda exvi)
F00491:
	link	a6,#-L00494
	tstb	sp@(-132)
	moveml	#L00495,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00492:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	cmpl	a4@(4),d7
	jne	L00498
	movl	a3@(412),a5
	movl	a5@,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a4@(4)
	jra	L00497
L00498:
	movl	a4@(4),a1
	movl	a3@(412),a5
	movl	a1@(4),a5@
L00497:
	movl	a4@(4),a1	|(calling concat)
	movl	a1@(4),a2@+
	movl	a3@(416),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(20)
	movl	d7,d0
	movl	d0,sp@-
	movl	a3@(276),sp@-
	movl	#2,sp@-
	movl	a2,_np
	movl	a2,_lbot
	jbsr	_qpushframe
	movl	d0,_errp
	tstl	_retval
	jeq	L00502
	movl	_lispretval,d0
	jra	L00501
L00502:
	movl	a4@(20),a2@+	|(calling infile)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+368,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
L00501:
	movl	_errp,a5
	movl	a5@(12),_errp
	movl	a5,sp
	addl	#32,sp
	movl	d0,a0
	movl	a0@(4),a4@(16)
	cmpl	a0@(4),d7
	jeq	L00500
	movl	a4@(16),a2@+	|(calling close)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+376,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(20),a4@(12)
	jra	L00499
L00500:
	movl	a4@(4),a1
	movl	a1@(4),a4@(12)
L00499:
	movl	a4@,a2@+	|(calling concat)
	movl	a3@(420),a2@+
	movl	a4@(12),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a4@(12)
	movl	a3@(424),a2@+
	movl	a4@(12),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	movl	a4@(12),a2@+	|(calling eval)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+272,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	a4@(8),d7
	jeq	L00504
	movl	a3@(412),a5	|(calling load)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+384,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00503
L00504:
	movl	d7,d0
L00503:
	movl	d7,d0
L00496:
	subl	#24,a2
	moveml	a6@(-20),#L00495
	unlk	a6
	rts
L00495 = 15488
L00494 = 20
	.globl	F00505	|(fcn nlambda exec)
F00505:
	link	a6,#-L00508
	tstb	sp@(-132)
	moveml	#L00509,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00506:
	movl	a4@,a2@+	|(beginning do)
	movl	a3@(428),a2@+
L00510:
	cmpl	a4@(4),d7
	jne	L00511
	movl	a4@(8),a2@+	|(calling *process)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+392,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00512
L00511:
	movl	a4@(4),a5
	movl	a5@,a2@+
	movl	a4@(8),a2@+	|(calling concat)
	movl	a3@(432),a2@+
	movl	a4@(4),a1
	movl	a1@(4),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a4@(8)
	movl	a2@-,a4@(4)
	jra	L00510
L00512:
	subl	#12,a2
	moveml	a6@(-20),#L00509
	unlk	a6
	rts
L00509 = 15488
L00508 = 20
	.globl	F00513	|(fcn nlambda exl)
F00513:
	link	a6,#-L00516
	tstb	sp@(-132)
	moveml	#L00517,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00514:
	movl	a3@(408),a2@+	|(calling exvi)
	movl	a4@,a2@+
	movl	a3@(176),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+352,a5
	jbsr	a5@
	lea	a2@(-12),a2
	subql	#4,a2
	moveml	a6@(-20),#L00517
	unlk	a6
	rts
L00517 = 15488
L00516 = 20
	.globl	F00518	|(fcn lambda explode)
F00518:
	link	a6,#-L00521
	tstb	sp@(-132)
	moveml	#L00522,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00519:
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
	jeq	L00524
	movl	a4@,a2@+	|(calling aexplode)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+400,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00523
L00524:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00527
	movl	a3@(436),a2@+	|(calling aexplode)
	|(calling concat)
	movl	a4@,a0
	movl	a0@(-8),d2
	asrl	#2,d2
	jbsr	_qnewint
	movl	d0,a2@+
	movl	a3@(440),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+400,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00523
L00527:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#19,a5@(0,d0:L)
	jne	L00528
	movl	a3@(444),a2@+	|(calling aexplode)
	|(calling concat)
	movl	a4@,a0
	movl	a0@(-8),d2
	jbsr	_qnewint
	movl	d0,a2@+
	movl	a3@(448),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+400,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00523
L00528:
	movl	a4@,a5	|(beginning do)
	movl	a5@,a2@+
	movl	a3@(452),a2@+
	movl	a4@,a1	|(calling explode)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+408,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@
	movl	a4@,a2@+
	movl	d7,a2@+
L00529:
	cmpl	a4@(4),d7
	jne	L00533
	movl	a4@(8),a2@+	|(calling last)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+416,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(456),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,d1
	movl	a2@-,a0
	movl	d1,a0@
	movl	a0,d0
	movl	a3@(176),a5
	movl	a5@,d0
	jra	L00532
L00533:
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
	jeq	L00534
	movl	a4@(8),a2@+	|(calling last)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+416,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(460),a2@+
	movl	a3@(464),a2@+
	movl	a3@(460),a2@+
	movl	a4@(4),a2@+	|(calling append)
	|(calling explode)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+408,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(456),a2@+	|(calling append)
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,d1
	movl	a2@-,a0
	movl	d1,a0@
	movl	a0,d0
	movl	a3@(176),a5
	movl	a5@,d0
	jra	L00532
L00534:
	movl	d7,d0
L00532:
	cmpl	d0,d7
	jeq	L00530
	movl	a4@,d0
	jra	L00531
L00530:
	movl	a4@(8),a2@+	|(calling last)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+416,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(12)
	movl	a3@(460),a2@+
	movl	a4@(4),a1	|(calling explode)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+408,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(8)
	movl	a4@(12),a0
	movl	a4@(8),a0@
	movl	a0,d0
	movl	a4@(4),a5
	movl	a5@,a4@(4)
	jra	L00529
L00531:
	subl	#12,a2
L00523:
	subql	#4,a2
	moveml	a6@(-20),#L00522
	unlk	a6
	rts
L00522 = 15488
L00521 = 20
	.globl	F00537	|(fcn lambda explodec)
F00537:
	link	a6,#-L00540
	tstb	sp@(-132)
	moveml	#L00541,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00538:
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
	jeq	L00543
	movl	a4@,a2@+	|(calling aexplodec)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+424,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00542
L00543:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00546
	movl	a3@(468),a2@+	|(calling aexplodec)
	|(calling concat)
	movl	a4@,a0
	movl	a0@(-8),d2
	asrl	#2,d2
	jbsr	_qnewint
	movl	d0,a2@+
	movl	a3@(472),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+424,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00542
L00546:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#19,a5@(0,d0:L)
	jne	L00547
	movl	a3@(476),a2@+	|(calling aexplodec)
	|(calling concat)
	movl	a4@,a0
	movl	a0@(-8),d2
	jbsr	_qnewint
	movl	d0,a2@+
	movl	a3@(480),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+424,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00542
L00547:
	movl	a4@,a5	|(beginning do)
	movl	a5@,a2@+
	movl	a3@(452),a2@+
	movl	a4@,a1	|(calling explodec)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+432,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@
	movl	a4@,a2@+
	movl	d7,a2@+
L00548:
	cmpl	a4@(4),d7
	jne	L00552
	movl	a4@(8),a2@+	|(calling last)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+416,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(456),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,d1
	movl	a2@-,a0
	movl	d1,a0@
	movl	a0,d0
	movl	a3@(176),a5
	movl	a5@,d0
	jra	L00551
L00552:
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
	jeq	L00553
	movl	a4@(8),a2@+	|(calling last)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+416,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(460),a2@+
	movl	a3@(464),a2@+
	movl	a3@(460),a2@+
	movl	a4@(4),a2@+	|(calling append)
	|(calling explodec)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+432,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(456),a2@+	|(calling append)
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,d1
	movl	a2@-,a0
	movl	d1,a0@
	movl	a0,d0
	movl	a3@(176),a5
	movl	a5@,d0
	jra	L00551
L00553:
	movl	d7,d0
L00551:
	cmpl	d0,d7
	jeq	L00549
	movl	a4@,d0
	jra	L00550
L00549:
	movl	a4@(8),a2@+	|(calling last)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+416,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(12)
	movl	a3@(460),a2@+
	movl	a4@(4),a1	|(calling explodec)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+432,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(8)
	movl	a4@(12),a0
	movl	a4@(8),a0@
	movl	a0,d0
	movl	a4@(4),a5
	movl	a5@,a4@(4)
	jra	L00548
L00550:
	subl	#12,a2
L00542:
	subql	#4,a2
	moveml	a6@(-20),#L00541
	unlk	a6
	rts
L00541 = 15488
L00540 = 20
	.globl	F00556	|(fcn lambda exploden)
F00556:
	link	a6,#-L00559
	tstb	sp@(-132)
	moveml	#L00560,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00557:
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
	jeq	L00562
	movl	a4@,a2@+	|(calling aexploden)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+440,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00561
L00562:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00565
	movl	a3@(484),a2@+	|(calling aexploden)
	|(calling concat)
	movl	a4@,a0
	movl	a0@(-8),d2
	asrl	#2,d2
	jbsr	_qnewint
	movl	d0,a2@+
	movl	a3@(488),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+440,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00561
L00565:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#19,a5@(0,d0:L)
	jne	L00566
	movl	a3@(492),a2@+	|(calling aexploden)
	|(calling concat)
	movl	a4@,a0
	movl	a0@(-8),d2
	jbsr	_qnewint
	movl	d0,a2@+
	movl	a3@(496),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+440,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00561
L00566:
	movl	a4@,a5	|(beginning do)
	movl	a5@,a2@+
	movl	#_nilatom+0x1400+160,a2@+
	movl	a4@,a1	|(calling exploden)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+448,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@
	movl	a4@,a2@+
	movl	d7,a2@+
L00567:
	cmpl	a4@(4),d7
	jne	L00571
	movl	a4@(8),a2@+	|(calling last)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+416,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	#_nilatom+0x1400+164,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,d1
	movl	a2@-,a0
	movl	d1,a0@
	movl	a0,d0
	movl	a3@(176),a5
	movl	a5@,d0
	jra	L00570
L00571:
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
	jeq	L00572
	movl	a4@(8),a2@+	|(calling last)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+416,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(500),a2@+
	movl	a3@(504),a2@+
	movl	a3@(500),a2@+
	movl	a4@(4),a2@+	|(calling append)
	|(calling exploden)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+448,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	#_nilatom+0x1400+164,a2@+	|(calling append)
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,d1
	movl	a2@-,a0
	movl	d1,a0@
	movl	a0,d0
	movl	a3@(176),a5
	movl	a5@,d0
	jra	L00570
L00572:
	movl	d7,d0
L00570:
	cmpl	d0,d7
	jeq	L00568
	movl	a4@,d0
	jra	L00569
L00568:
	movl	a4@(8),a2@+	|(calling last)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+416,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(12)
	movl	#_nilatom+0x1400+128,a2@+
	movl	a4@(4),a1	|(calling exploden)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+448,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(8)
	movl	a4@(12),a0
	movl	a4@(8),a0@
	movl	a0,d0
	movl	a4@(4),a5
	movl	a5@,a4@(4)
	jra	L00567
L00569:
	subl	#12,a2
L00561:
	subql	#4,a2
	moveml	a6@(-20),#L00560
	unlk	a6
	rts
L00560 = 15488
L00559 = 20
	.globl	F00575	|(fcn lambda expt)
F00575:
	link	a6,#-L00578
	tstb	sp@(-132)
	moveml	#L00579,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00576:
	movl	a4@,a2@+
	movl	#_nilatom+0x1400+4,a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00582
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00583
	jra	L00581
L00582:
	subql	#8,a2
L00583:
	movl	a4@,d0
	jra	L00580
L00581:
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@,d6
	jne	L00584
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L00584
	movl	a4@,d0
	jra	L00580
L00584:
	movl	a4@(4),a2@+	|(calling lessp)
	movl	#_nilatom+0x1400+0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00586
	movl	a3@(508),a2@+	|(calling quotient)
	movl	a4@,a2@+	|(calling expt)
	movl	#_nilatom+0x1400-4,a2@+	|(calling times)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+456,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00580
L00586:
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#4,a5@(0,d0:L)
	jne	L00587
	movl	a4@(4),a2@+	|(calling exp)
	|(calling times)
	movl	a4@,a2@+	|(calling log)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+464,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+472,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00580
L00587:
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jne	L00588
	movl	a3@(512),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00580
L00588:
	movl	d7,a2@+
	movl	#_nilatom+0x1400+4,a4@(8)
L00589:
	movl	a4@(4),a2@+
	movl	#_nilatom+0x1400+0,a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00593
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00594
	jra	L00592
L00593:
	subql	#8,a2
L00594:
	movl	a4@(8),d0
	jra	L00590
|	jra	L00591
L00592:
	movl	a4@(4),a2@+	|(calling oddp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+480,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00595
	movl	a4@(8),a2@+	|(calling times)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(8)
	cmpl	#_nilatom+0x1400-4096,a4@(4)
	jle	L00596
	cmpl	#_nilatom+0x1400+4092,a4@(4)
	jle	L00597
L00596:
	movl	a4@(4),a0
	jbsr	_qoneminus
	movl	d0,a4@(4)
	jra	L00598
L00597:
	movl	a4@(4),d0
	subql	#4,d0
	movl	d0,a4@(4)
L00598:
	jra	L00591
L00595:
	movl	a4@,a2@+	|(calling times)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@
	movl	a4@(4),a2@+	|(calling /)
	movl	#_nilatom+0x1400+8,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+488,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(4)
L00591:
	jra	L00589
|	movl	d7,d0
L00590:
	subql	#4,a2
L00580:
	subql	#8,a2
	moveml	a6@(-24),#L00579
	unlk	a6
	rts
L00579 = 15552
L00578 = 24
	.globl	F00601	|(fcn lexpr ffasl)
F00601:
	link	a6,#-L00604
	tstb	sp@(-132)
	moveml	#L00605,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00602:
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
	movl	#_nilatom+0x1400+12,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	#4,d6
	movl	a4@,a5
	cmpl	a5@,d6
	jle	L00613
	movl	a3@(516),a4@(16)
	jra	L00612
L00613:
	movl	#_nilatom+0x1400+16,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(16)
L00612:
	movl	#5,d6
	movl	a4@,a5
	cmpl	a5@,d6
	jle	L00617
	movl	a3@(520),a4@(20)
	jra	L00616
L00617:
	movl	#_nilatom+0x1400+20,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(20)
L00616:
	movl	a4@(4),a2@+	|(calling cfasl)
	movl	a4@(8),a2@+
	movl	a4@(12),a2@+
	movl	a4@(16),a2@+
	movl	a4@(20),a2@+	|(calling concat)
	movl	a3@(524),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	lea	a2@(-20),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+496,a5
	jbsr	a5@
	lea	a2@(-20),a2
	subl	#24,a2
	moveml	a6@(-24),#L00605
	unlk	a6
	rts
L00605 = 15552
L00604 = 24
	.globl	F00620	|(fcn lexpr filepos)
F00620:
	link	a6,#-L00623
	tstb	sp@(-132)
	moveml	#L00624,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00621:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@,d6
	jne	L00626
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L00626
	movl	d7,d0
	jra	L00625
L00626:
	movl	a4@,a2@+	|(calling onep)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+504,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00628
	movl	#_nilatom+0x1400+4,d0	|(calling fseek)
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	movl	#_nilatom+0x1400+0,a2@+
	movl	#_nilatom+0x1400+4,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+512,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00625
L00628:
	movl	a4@,a2@+
	movl	#_nilatom+0x1400+8,a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00632
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00633
	jra	L00631
L00632:
	subql	#8,a2
L00633:
	movl	#_nilatom+0x1400+4,d0	|(calling fseek)
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	movl	#_nilatom+0x1400+8,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	movl	#_nilatom+0x1400+0,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+512,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00625
L00631:
	movl	d7,d0
L00625:
	subql	#4,a2
	moveml	a6@(-24),#L00624
	unlk	a6
	rts
L00624 = 15552
L00623 = 24
	.globl	F00638	|(fcn lambda fixp)
F00638:
	link	a6,#-L00641
	tstb	sp@(-132)
	moveml	#L00642,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00639:
	movl	a4@,a2@+	|(calling type)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+192,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(528),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00644
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00645
	movl	d7,d0
	jra	L00646
L00644:
	subql	#8,a2
L00645:
	movl	a3@(176),d0
	jra	L00643
L00646:
	movl	a4@,a2@+	|(calling type)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+192,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(288),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00647
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00648
	movl	d7,d0
	jra	L00649
L00647:
	subql	#8,a2
L00648:
	movl	a3@(176),d0
L00649:
	jra	L00650
L00643:
	movl	d0,d0
L00650:
	subql	#4,a2
	moveml	a6@(-24),#L00642
	unlk	a6
	rts
L00642 = 15552
L00641 = 24
	.globl	F00651	|(fcn lexpr flatsize)
F00651:
	link	a6,#-L00654
	tstb	sp@(-132)
	moveml	#L00655,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00652:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	#_nilatom+0x1400+4,d0	|(calling length)
	|(calling explode)
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+408,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+520,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	moveml	a6@(-20),#L00655
	unlk	a6
	rts
L00655 = 15488
L00654 = 20
	.globl	F00658	|(fcn lambda floatp)
F00658:
	link	a6,#-L00661
	tstb	sp@(-132)
	moveml	#L00662,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00659:
	movl	a3@(532),a2@+
	movl	a4@,a2@+	|(calling type)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+192,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00663
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00664
	movl	d7,d0
	jra	L00665
L00663:
	subql	#8,a2
L00664:
	movl	a3@(176),d0
L00665:
	subql	#4,a2
	moveml	a6@(-24),#L00662
	unlk	a6
	rts
L00662 = 15552
L00661 = 24
	.globl	F00666	|(fcn lambda getchar)
F00666:
	link	a6,#-L00669
	tstb	sp@(-132)
	moveml	#L00670,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00667:
	movl	a4@,a2@+	|(calling concat)
	|(calling substring)
	movl	a4@(4),a2@+
	movl	#_nilatom+0x1400+4,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+528,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#8,a2
	moveml	a6@(-20),#L00670
	unlk	a6
	rts
L00670 = 15488
L00669 = 20
	.globl	F00671	|(fcn lambda getcharn)
F00671:
	link	a6,#-L00674
	tstb	sp@(-132)
	moveml	#L00675,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00672:
	movl	a4@,a2@+	|(calling substringn)
	movl	a4@(4),a2@+
	movl	#_nilatom+0x1400+0,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+536,a5
	jbsr	a5@
	lea	a2@(-12),a2
	subql	#8,a2
	moveml	a6@(-20),#L00675
	unlk	a6
	rts
L00675 = 15488
L00674 = 20
	.globl	F00676	|(fcn lambda getl)
F00676:
	link	a6,#-L00679
	tstb	sp@(-132)
	moveml	#L00680,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00677:
	movl	a4@,d0	|(beginning do)
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
	jeq	L00684
	movl	a4@,a2@+	|(calling plist)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+296,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00683
L00684:
	movl	a4@,a5
	movl	a5@,d0
L00683:
	movl	d0,a2@+
L00681:
	cmpl	a4@(8),d7
	jne	L00682
	movl	d7,d0
	jra	L00687
L00682:
	movl	a4@(8),a1
	movl	a1@(4),d5
	movl	a4@(4),d0
	cmpl	d0,d7
	jeq	L00689
	movl	d0,a0
L00691:
	cmpl	a0@(4),d5
	jeq	L00690
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00691
	movl	a0,d0
	jra	L00689
L00690:
	movl	a4@(8),d0
	jra	L00687
|	jra	L00688
L00689:
	movl	d7,d0
L00688:
	movl	a4@(8),a5
	movl	a5@,a1
	movl	a1@,a4@(8)
	jra	L00681
L00687:
	subl	#12,a2
	moveml	a6@(-24),#L00680
	unlk	a6
	rts
L00680 = 15520
L00679 = 24
	.globl	F00693	|(fcn nlambda help)
F00693:
	link	a6,#-L00696
	tstb	sp@(-132)
	moveml	#L00697,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00694:
	cmpl	a4@,d7
	jne	L00699
	movl	a3@(536),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(540),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(544),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00698
L00699:
	movl	a4@,a2@+	|(beginning do)
	movl	d7,a2@+
L00700:
	cmpl	a4@(4),d7
	jne	L00701
	movl	d7,d0
	jra	L00702
L00701:
	movl	a4@(4),a1
	movl	a1@(4),a4@(8)
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
	jne	L00704
	movl	a3@(548),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(8),a2@+	|(calling print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00703
L00704:
	movl	a4@(8),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jne	L00707
	movl	a4@(8),a2@+	|(calling concat)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(8)
	cmpl	d0,d7
	jeq	L00707
	cmpl	d7,d7
	jne	L00703
L00707:
	movl	a4@(8),d6
	cmpl	a3@(552),d6
	jne	L00708
	movl	a3@(556),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(560),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(564),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(568),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(572),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(576),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00703
L00708:
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
	andw	#532,d0
	jeq	L00711
	movl	a4@(8),a2@+	|(calling lessp)
	movl	#_nilatom+0x1400+64,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00711
	movl	a4@(8),a2@+	|(calling greaterp)
	movl	#_nilatom+0x1400-4,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00710
L00711:
	movl	a4@(8),d5
	movl	a3@(580),d0
	cmpl	d0,d7
	jeq	L00709
	movl	d0,a0
L00715:
	cmpl	a0@(4),d5
	jeq	L00714
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00715
	movl	a0,d0
	jra	L00709
L00714:
L00710:
	movl	a3@(424),a2@+	|(calling apply)
	movl	a3@(584),a2@+	|(calling concat)
	movl	a3@(588),a5
	movl	a5@,a2@+
	movl	a3@(592),a2@+
	movl	a4@(8),a2@+
	movl	a3@(596),a2@+
	lea	a2@(-20),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-20),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+544,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00703
L00709:
	movl	a4@(8),a2@+	|(calling locatefunction)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	jbsr	L00692
	cmpl	d0,d7
	jne	L00703
	movl	a3@(600),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(8),a2@+	|(calling print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@,a2
L00703:
	movl	a4@(4),a5
	movl	a5@,a4@(4)
	jra	L00700
L00702:
	subql	#8,a2
L00698:
	subql	#4,a2
	moveml	a6@(-28),#L00697
	unlk	a6
	rts
L00697 = 15584
L00696 = 28
L00692:	|(fcn lambda locatefunction)
	movl	a4,sp@-
	lea	a2@(-4),a4
L00717:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a3@(604),a2@+
	movl	a3@(608),a2@+
	jbsr	_qget
	cmpl	d0,d7
	jne	L00722
	movl	a3@(612),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling drain)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(588),a5	|(calling infile)
	|(calling concat)
	movl	a5@,a2@+
	movl	a3@(616),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+368,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(8)
	movl	a3@(176),a5	|(beginning do)
	|(calling makereadtable)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+552,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(8),a2@+	|(calling read)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+560,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	_bnp,a1
	movl	a3@(356),a5
	movl	a5@,a1@+
	movl	a3@(356),a1@+
	movl	a3@(356),a5
	movl	a4@(12),a5@
	movl	a1,_bnp
L00723:
	cmpl	a4@(16),d7
	jne	L00724
	movl	a4@(8),a2@+	|(calling close)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+376,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00725
L00724:
	movl	a4@(16),a5
	movl	a5@,a1
	cmpl	a1@,d7
	jne	L00727
	movl	a4@(16),a0	|(calling putprop)
	movl	a0@(4),a2@+
	movl	a4@(16),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a3@(608),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+328,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00726
L00727:
	movl	a4@(16),a0	|(calling putprop)
	|(calling concat)
	movl	a0@(4),a2@+
	movl	a3@(620),a2@+
	movl	a4@(16),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	movl	a4@(16),a5
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),a2@+
	movl	a3@(608),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+328,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00726:
	movl	a4@(8),a2@+	|(calling read)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+560,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(16)
	jra	L00723
L00725:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subql	#8,a2
	jra	L00721
L00722:
	movl	d7,d0
L00721:
	movl	a4@,a2@+
	movl	a3@(608),a2@+
	jbsr	_qget
	movl	d0,a4@(4)
	cmpl	d0,d7
	jeq	L00729
	movl	a3@(424),a2@+	|(calling apply)
	movl	a3@(624),a2@+	|(calling concat)
	movl	a3@(588),a5
	movl	a5@,a2@+
	movl	a3@(628),a2@+
	movl	a4@(4),a2@+
	movl	a3@(632),a2@+
	movl	a4@,a2@+
	movl	a3@(636),a2@+
	lea	a2@(-28),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-28),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+544,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(176),a5
	movl	a5@,d0
	jra	L00728
L00729:
	movl	d7,d0
L00728:
	subl	#12,a2
	movl	sp@+,a4
	rts
	.globl	F00730	|(fcn lexpr hunk)
F00730:
	link	a6,#-L00733
	tstb	sp@(-132)
	moveml	#L00734,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00731:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	d7,a2@+
	movl	#_nilatom+0x1400-4,a4@(4)
	movl	a4@,a5
	cmpl	#128,a5@
	jle	L00737
	movl	a3@(640),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00736
L00737:
	cmpl	#_nilatom+0x1400+4,a4@
	jne	L00738
	movl	#_nilatom+0x1400+0,a4@(4)
	jra	L00736
L00738:
	cmpl	#_nilatom+0x1400+0,a4@
	jne	L00739
	movl	d7,d0
	jra	L00735
|	jra	L00736
L00739:
	cmpl	#_nilatom+0x1400-4096,a4@	|(calling haulong)
	jle	L00743
	cmpl	#_nilatom+0x1400+4092,a4@
	jle	L00744
L00743:
	movl	a4@,a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00745
L00744:
	movl	a4@,d0
	subql	#4,d0
	movl	d0,a2@+
L00745:
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+568,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a0
	cmpl	#_nilatom+0x1400-4096,a0
	jle	L00740
	cmpl	#_nilatom+0x1400+4092,a0
	jle	L00741
L00740:
	jbsr	_qoneminus
	movl	d0,a4@(4)
	jra	L00742
L00741:
	movl	a0,d0
	subql	#4,d0
	movl	d0,a4@(4)
L00742:
L00736:
	movl	a4@(4),a2@+	|(calling *makhunk)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+576,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(4)
	movl	#_nilatom+0x1400+0,a2@+	|(beginning do)
L00746:
	movl	a4@(8),d6
	cmpl	a4@,d6
	jne	L00747
	movl	d7,d0
	jra	L00748
L00747:
	movl	a4@(8),a5
	movl	a5@,d2
	movl	a4@(4),a0
	movl	d2,d6
	asll	#2,d6
	movl	a0,a2@+
	lea	a0@(0,d6:L),a5
	movl	a5,sp@-
	cmpl	#_nilatom+0x1400+4088,a4@(8)
	jle	L00751
	movl	a4@(8),a0
	jbsr	_qoneplus
	jra	L00752
L00751:
	movl	a4@(8),d0
	addql	#4,d0
L00752:
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00749
	subl	a4@(-4),d0
	movl	sp@,a5
	movl	a4@(-8,d0:L),a5@
	jra	L00750
L00749:
	movl	sp@,a5
	movl	a4@(-4),a5@
L00750:
	movl	a2@-,d0
	cmpl	#_nilatom+0x1400+4088,a4@(8)
	jle	L00753
	movl	a4@(8),a0
	jbsr	_qoneplus
	movl	d0,a4@(8)
	jra	L00754
L00753:
	movl	a4@(8),d0
	addql	#4,d0
	movl	d0,a4@(8)
L00754:
	jra	L00746
L00748:
	subql	#4,a2
	movl	a4@(4),d0
	jra	L00735
|	movl	d7,d0
L00735:
	subql	#8,a2
	moveml	a6@(-28),#L00734
	unlk	a6
	rts
L00734 = 15556
L00733 = 28
	.globl	F00755	|(fcn lambda last)
F00755:
	link	a6,#-L00758
	tstb	sp@(-132)
	moveml	#L00759,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00756:
	movl	a4@,a2@+	|(beginning do)
L00760:
	movl	a4@(4),a5
	cmpl	a5@,d7
	jne	L00761
	movl	a4@(4),d0
	jra	L00762
L00761:
	movl	a4@(4),a5
	movl	a5@,a4@(4)
	jra	L00760
L00762:
	subql	#8,a2
	moveml	a6@(-20),#L00759
	unlk	a6
	rts
L00759 = 15488
L00758 = 20
	.globl	F00768	|(fcn lexpr load)
F00768:
	link	a6,#-L00771
	tstb	sp@(-132)
	moveml	#L00772,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00769:
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
L00775:
	movl	a4@(8),a5
	cmpl	#2,a5@
	jpl	L00776
	movl	a4@(12),d0
	jra	L00777
L00776:
	cmpl	#_nilatom+0x1400-4096,a4@(8)
	jle	L00778
	cmpl	#_nilatom+0x1400+4092,a4@(8)
	jle	L00779
L00778:
	movl	a4@(8),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00780
L00779:
	movl	a4@(8),d0
	subql	#4,d0
	movl	d0,a2@+
L00780:
	movl	a4@(8),d0
	cmpl	a4@(8),d7
	jeq	L00781
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00781
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00782
L00781:
	movl	a4@(-4),a2@+
L00782:
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	movl	a2@-,a4@(8)
	jra	L00775
L00777:
	subql	#8,a2
	movl	d0,a2@+
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00784
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jeq	L00784
	movl	a3@(644),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00783
L00784:
	movl	d7,d0
L00783:
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
	movl	d7,a2@+
	movl	a3@(648),a5
	cmpl	a5@,d7
	jeq	L00787
	movl	a4@(4),a2@+	|(calling tilde-expand)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+584,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(4)
	jra	L00786
L00787:
	movl	d7,d0
L00786:
	movl	a4@(4),a2@+	|(beginning do)
	|(calling nreverse)
	|(calling exploden)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+448,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(44)
	movl	a4@(44),a2@+
	movl	#_nilatom+0x1400+0,a2@+
L00788:
	cmpl	a4@(56),d7
	jne	L00789
	movl	a4@(60),d0
	jra	L00790
L00789:
	movl	#_nilatom+0x1400+188,a2@+
	movl	a4@(56),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00792
	movl	a4@(60),d0
	jra	L00790
|	jra	L00791
L00792:
	movl	d7,d0
L00791:
	movl	a4@(56),a5
	movl	a5@,a2@+
	cmpl	#_nilatom+0x1400+4088,a4@(60)
	jle	L00793
	movl	a4@(60),a0
	jbsr	_qoneplus
	movl	d0,a4@(60)
	jra	L00794
L00793:
	movl	a4@(60),d0
	addql	#4,d0
	movl	d0,a4@(60)
L00794:
	movl	a2@-,a4@(56)
	jra	L00788
L00790:
	subql	#8,a2
	movl	d0,a4@(24)
	movl	a4@(24),a5
	cmpl	#2,a5@
	jle	L00796
	movl	a4@(44),a5
	movl	a5@,a1
	movl	a1@(4),d0
	cmpl	#_nilatom+0x1400+184,d0
	jne	L00798
	movl	a4@(44),a0
	movl	a0@(4),d0
	cmpl	#_nilatom+0x1400+444,d0
	jne	L00800
	movl	a3@(176),a5
	movl	a5@,a4@(16)
	jra	L00799
L00800:
	movl	a4@(44),a1
	movl	a1@(4),d0
	cmpl	#_nilatom+0x1400+432,d0
	jne	L00801
	movl	a3@(176),a5
	movl	a5@,a4@(12)
	jra	L00799
L00801:
	movl	a3@(176),a5
	movl	a5@,a4@(20)
L00799:
	jra	L00797
L00798:
	movl	a3@(176),a5
	movl	a5@,a4@(20)
L00797:
	jra	L00795
L00796:
	movl	a3@(176),a5
	movl	a5@,a4@(20)
L00795:
	movl	a4@(24),a5
	cmpl	#13,a5@
	jmi	L00804
	movl	a3@(652),a2@+	|(calling status)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+592,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00803
L00804:
	movl	a3@(176),a5
	movl	a5@,a4@(40)
	jra	L00802
L00803:
	movl	d7,d0
L00802:
	movl	a4@(24),a5
	cmpl	#0,a5@
	jle	L00806
	movl	a4@(4),a2@+	|(calling getchar)
	movl	#_nilatom+0x1400+4,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+600,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	a3@(328),d0
	jne	L00806
	movl	a3@(656),a4@(28)
	jra	L00805
L00806:
	movl	a3@(660),a2@+	|(calling status)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+592,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(28)
L00805:
	movl	a4@(28),a2@+	|(beginning do)
L00808:
	cmpl	a4@(56),d7
	jne	L00809
	movl	a3@(664),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00810
L00809:
	movl	a4@(56),a1
	movl	a1@(4),d5
	movl	a3@(668),d0
	cmpl	d0,d7
	jeq	L00812
	movl	d0,a0
L00814:
	cmpl	a0@(4),d5
	jeq	L00813
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00814
	movl	a0,d0
	jra	L00812
L00813:
	movl	a3@(672),d0
	jra	L00811
L00812:
	movl	a4@(56),a0	|(calling concat)
	movl	a0@(4),a2@+
	movl	a3@(676),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00811:
	movl	d0,a4@(36)
	cmpl	a4@(20),d7
	jeq	L00816
	cmpl	a4@(40),d7
	jeq	L00818
	movl	a3@(680),a5
	cmpl	a5@,d7
	jeq	L00818
	movl	a4@(36),a2@+	|(calling probef)
	|(calling concat)
	movl	a4@(4),a2@+
	movl	a3@(684),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a4@(48)
	movl	a4@(48),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+608,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00818
	movl	a4@(36),a2@+	|(calling probef)
	|(calling concat)
	movl	a4@(4),a2@+
	movl	a3@(688),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a4@(52)
	movl	a4@(52),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+608,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00818
	movl	a4@(48),a2@+	|(calling filestat)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+616,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(52),a2@+	|(calling filestat)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+616,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(60),a2@+	|(calling lessp)
	|(calling filestat:mtime)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+624,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(64),a2@+	|(calling filestat:mtime)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+624,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00821
	movl	a4@(52),a2@+	|(calling load-a-file)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	jbsr	L00763
	subql	#8,a2
	jra	L00810
|	jra	L00820
L00821:
	movl	a4@(48),a2@+	|(calling fasl-a-file)
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	a4@(8),a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+632,a5
	jbsr	a5@
	lea	a2@(-12),a2
	subql	#8,a2
	jra	L00810
L00820:
	subql	#8,a2
	jra	L00817
L00818:
	cmpl	a4@(40),d7
	jeq	L00822
	movl	a4@(36),a2@+	|(calling probef)
	|(calling concat)
	movl	a4@(4),a2@+
	movl	a3@(692),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a4@(32)
	movl	a4@(32),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+608,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00822
	movl	a4@(32),a2@+	|(calling fasl-a-file)
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	a4@(8),a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+632,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00810
|	jra	L00817
L00822:
	cmpl	a4@(40),d7
	jeq	L00824
	movl	a4@(36),a2@+	|(calling probef)
	|(calling concat)
	movl	a4@(4),a2@+
	movl	a3@(696),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a4@(32)
	movl	a4@(32),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+608,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00824
	movl	a4@(32),a2@+	|(calling load-a-file)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	jbsr	L00763
	jra	L00810
|	jra	L00817
L00824:
	movl	a4@(36),a2@+	|(calling probef)
	|(calling concat)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(32)
	movl	a4@(32),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+608,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00826
	cmpl	a4@(8),d7
	jeq	L00828
	movl	a4@(32),a2@+	|(calling fasl-a-file)
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	a4@(8),a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+632,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00810
|	jra	L00827
L00828:
	movl	a4@(32),a2@+	|(calling load-a-file)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	jbsr	L00763
	jra	L00810
L00827:
	jra	L00817
L00826:
	movl	d7,d0
L00817:
	jra	L00815
L00816:
	cmpl	a4@(16),d7
	jeq	L00829
	movl	a4@(36),a2@+	|(calling probef)
	|(calling concat)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(32)
	movl	a4@(32),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+608,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00831
	movl	a4@(32),a2@+	|(calling fasl-a-file)
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	a4@(8),a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+632,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00810
|	jra	L00830
L00831:
	movl	d7,d0
L00830:
	jra	L00815
L00829:
	cmpl	a4@(12),d7
	jeq	L00832
	movl	a4@(36),a2@+	|(calling probef)
	|(calling concat)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(32)
	movl	a4@(32),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+608,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00834
	movl	a4@(32),a2@+	|(calling load-a-file)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	jbsr	L00763
	jra	L00810
|	jra	L00833
L00834:
	movl	d7,d0
L00833:
	jra	L00815
L00832:
	movl	d7,d0
L00815:
	movl	a4@(56),a5
	movl	a5@,a4@(56)
	jra	L00808
L00810:
	subl	#60,a2
	moveml	a6@(-28),#L00772
	unlk	a6
	rts
L00772 = 15584
L00771 = 28
	.globl	F00835	|(fcn lambda tilde-expand)
F00835:
	link	a6,#-L00838
	tstb	sp@(-132)
	moveml	#L00839,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00836:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00842
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jne	L00841
L00842:
	movl	a4@,a2@+	|(calling getcharn)
	movl	#_nilatom+0x1400+4,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+640,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	#_nilatom+0x1400+504,d0
	jne	L00844
	movl	a4@,a2@+	|(calling exploden)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+448,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(4),a5	|(beginning do)
	movl	a5@,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
L00845:
	cmpl	a4@(8),d7
	jeq	L00848
	movl	a4@(8),a1
	movl	a1@(4),d0
	cmpl	#_nilatom+0x1400+188,d0
	jne	L00846
L00848:
	cmpl	a4@(12),d7
	jeq	L00851
	movl	a4@(12),a2@+	|(calling implode)
	|(calling nreverse)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+648,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(12)
	movl	a4@(12),a2@+
	movl	a3@(700),a2@+	|(calling getenv)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+656,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00852
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00853
	jra	L00850
L00852:
	subql	#8,a2
L00853:
L00851:
	movl	a3@(704),a2@+	|(calling getenv)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+656,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(16)
	jra	L00849
L00850:
	movl	a4@(12),a2@+	|(calling username-to-dir)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+664,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(16)
L00849:
	cmpl	a4@(16),d7
	jne	L00855
	movl	a3@(708),a2@+	|(calling error)
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00854
L00855:
	movl	a4@(16),a2@+	|(calling concat)
	movl	a4@(8),a2@+	|(calling implode)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+648,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00854:
	jra	L00847
L00846:
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	movl	a4@(8),a5
	movl	a5@,a4@(8)
	jra	L00845
L00847:
	subl	#16,a2
	jra	L00843
L00844:
	movl	a4@,d0
L00843:
	jra	L00840
L00841:
	movl	a3@(712),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00840:
	subql	#4,a2
	moveml	a6@(-24),#L00839
	unlk	a6
	rts
L00839 = 15552
L00838 = 24
	.globl	F00856	|(fcn lambda fasl-a-file)
F00856:
	link	a6,#-L00859
	tstb	sp@(-132)
	moveml	#L00860,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00857:
	movl	a3@(716),a2@+	|(calling status)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+592,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@,a2@+	|(calling fasl)
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+672,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	cmpl	a4@(12),d7
	jeq	L00863
	movl	a3@(720),a2@+	|(calling status)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+592,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(12)
	cmpl	d0,d7
	jeq	L00863
	movl	a4@(12),d6
	cmpl	a3@(176),d6
	jne	L00866
	movl	a3@(724),a2@+	|(calling sstatus)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+320,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(728),a2@+	|(calling sstatus)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+320,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00865
L00866:
	movl	a3@(732),a2@+	|(calling sstatus)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+320,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00865:
	jra	L00862
L00863:
	movl	d7,d0
L00862:
	movl	a4@(16),d0
	subl	#20,a2
	moveml	a6@(-24),#L00860
	unlk	a6
	rts
L00860 = 15552
L00859 = 24
L00763:	|(fcn lambda load-a-file)
	movl	a4,sp@-
	lea	a2@(-4),a4
L00868:
	movl	a3@(736),a5
	cmpl	a5@,d7
	jeq	L00873
	movl	a3@(740),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@,a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(744),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00872
L00873:
	movl	d7,d0
L00872:
	movl	a3@(748),a2@+	|(calling status)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+592,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@,a2@+	|(calling infile)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+368,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(176),a5	|(beginning do)
	movl	a5@,d0
	movl	d0,sp@-
	movl	a3@(276),sp@-
	movl	#2,sp@-
	movl	a2,_np
	movl	a2,_lbot
	jbsr	_qpushframe
	movl	d0,_errp
	tstl	_retval
	jeq	L00878
	movl	_lispretval,d0
	jra	L00877
L00878:
	movl	a4@(8),a2@+	|(calling read)
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+560,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
L00877:
	movl	_errp,a5
	movl	a5@(12),_errp
	movl	a5,sp
	addl	#32,sp
	movl	d0,a2@+
	movl	a3@(752),a2@+
L00875:
	movl	a4@(12),a2@+
	movl	a4@(16),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00876
	movl	a4@(8),a2@+	|(calling close)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+376,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(176),a5
	movl	a5@,d0
	jra	L00879
L00876:
	cmpl	a4@(16),d7
	jne	L00881
	movl	a3@(756),a2@+	|(calling error)
	movl	a4@(20),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00880
L00881:
	movl	a4@(16),a0
	movl	a0@(4),a4@(20)
	movl	a4@(16),a1	|(calling eval)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+272,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00880:
	movl	a3@(176),a5
	movl	a5@,d0
	movl	d0,sp@-
	movl	a3@(276),sp@-
	movl	#2,sp@-
	movl	a2,_np
	movl	a2,_lbot
	jbsr	_qpushframe
	movl	d0,_errp
	tstl	_retval
	jeq	L00883
	movl	_lispretval,d0
	jra	L00882
L00883:
	movl	a4@(8),a2@+	|(calling read)
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+560,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
L00882:
	movl	_errp,a5
	movl	a5@(12),_errp
	movl	a5,sp
	addl	#32,sp
	movl	d0,a4@(16)
	jra	L00875
L00879:
	subl	#16,a2
	movl	d0,a2@+
	cmpl	a4@(4),d7
	jeq	L00885
	movl	a3@(760),a2@+	|(calling status)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+592,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(4)
	cmpl	d0,d7
	jeq	L00885
	movl	a4@(4),d6
	cmpl	a3@(176),d6
	jne	L00888
	movl	a3@(764),a2@+	|(calling sstatus)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+320,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(768),a2@+	|(calling sstatus)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+320,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00887
L00888:
	movl	a3@(772),a2@+	|(calling sstatus)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+320,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00887:
	jra	L00884
L00885:
	movl	d7,d0
L00884:
	movl	a4@(8),d0
	subl	#12,a2
	movl	sp@+,a4
	rts
	.globl	F00889	|(fcn nlambda include)
F00889:
	link	a6,#-L00892
	tstb	sp@(-132)
	moveml	#L00893,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00890:
	movl	a4@,a1	|(calling load)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+384,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	moveml	a6@(-20),#L00893
	unlk	a6
	rts
L00893 = 15488
L00892 = 20
	.globl	F00894	|(fcn lambda includef)
F00894:
	link	a6,#-L00897
	tstb	sp@(-132)
	moveml	#L00898,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00895:
	movl	a4@,a2@+	|(calling load)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+384,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	moveml	a6@(-20),#L00898
	unlk	a6
	rts
L00898 = 15488
L00897 = 20
	.globl	F00899	|(fcn lambda list-to-bignum)
F00899:
	link	a6,#-L00902
	tstb	sp@(-132)
	moveml	#L00903,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00900:
	cmpl	a4@,d7
	jeq	L00905
	movl	a4@,a1	|(calling scons)
	movl	a1@(4),a2@+
	movl	a4@,a5	|(calling list-to-bignum)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+680,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+688,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00904
L00905:
	movl	d7,d0
L00904:
	subql	#4,a2
	moveml	a6@(-20),#L00903
	unlk	a6
	rts
L00903 = 15488
L00902 = 20
	.globl	F00906	|(fcn lambda macroexpand)
F00906:
	link	a6,#-L00909
	tstb	sp@(-132)
	moveml	#L00910,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00907:
L00911:
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
	jeq	L00914
	movl	a4@,d0
	jra	L00912
|	jra	L00913
L00914:
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
	jeq	L00917
	movl	a4@,a0
	movl	a0@(4),a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a4@(4),a1
	movl	a1@(8),a4@(8)
	cmpl	a1@(8),d7
	movl	a4@(8),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00921
	movl	a4@(8),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	jra	L00920
L00921:
	movl	a4@(8),a2@+	|(calling arrayp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+696,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00922
	movl	a3@(776),d0
	jra	L00920
L00922:
	movl	a4@(8),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00923
	movl	a4@(8),a1
	movl	a1@(4),d0
	jra	L00920
L00923:
	movl	d7,d0
L00920:
	movl	d0,a4@(12)
	cmpl	a4@(8),d7
	jne	L00925
	movl	a4@(4),a2@+
	movl	a3@(780),a2@+
	jbsr	_qget
	cmpl	d0,d7
	jeq	L00925
	movl	a3@(784),a4@(12)
	jra	L00924
L00925:
	movl	d7,d0
L00924:
	movl	a4@(12),d5
	movl	a3@(788),d0
	cmpl	d0,d7
	jeq	L00928
	movl	d0,a0
L00930:
	cmpl	a0@(4),d5
	jeq	L00929
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00930
	movl	a0,d0
	jra	L00928
L00929:
	movl	a4@(4),a2@+
	movl	d7,a2@+
	movl	a4@,a5	|(beginning do)
	movl	a5@,a2@+
L00933:
	cmpl	a4@(24),d7
	jne	L00934
	movl	d7,d0
	jra	L00935
L00934:
	movl	a4@(24),a1	|(calling macroexpand)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+704,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(20),a2@+
	jbsr	_qcons
	movl	d0,a4@(20)
	movl	a4@(24),a5
	movl	a5@,a4@(24)
	jra	L00933
L00935:
	subql	#4,a2	|(calling nreverse)
	movl	a4@(20),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00927
L00928:
	movl	a4@(12),d6
	cmpl	a3@(784),d6
	jne	L00936
	movl	a4@(4),a2@+	|(calling apply)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+544,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@
	subl	#12,a2
	jra	L00911
|	jra	L00927
L00936:
	movl	a4@(4),d6
	cmpl	a3@(792),d6
	jne	L00937
	movl	a4@(4),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	movl	a4@,a5	|(beginning do)
	movl	a5@,a1
	movl	a1@,a2@+
L00940:
	cmpl	a4@(28),d7
	jne	L00941
	movl	d7,d0
	jra	L00942
L00941:
	movl	a4@(28),a1	|(calling macroexpand)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+704,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(24),a2@+
	jbsr	_qcons
	movl	d0,a4@(24)
	movl	a4@(28),a5
	movl	a5@,a4@(28)
	jra	L00940
L00942:
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
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00927
L00937:
	movl	a4@,d0
L00927:
	subl	#12,a2
	jra	L00912
|	jra	L00913
L00917:
	movl	a4@,a0	|(calling macroexpand)
	movl	a0@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+704,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
	movl	a4@,a5	|(beginning do)
	movl	a5@,a2@+
L00945:
	cmpl	a4@(12),d7
	jne	L00946
	movl	d7,d0
	jra	L00947
L00946:
	movl	a4@(12),a1	|(calling macroexpand)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+704,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(8),a2@+
	jbsr	_qcons
	movl	d0,a4@(8)
	movl	a4@(12),a5
	movl	a5@,a4@(12)
	jra	L00945
L00947:
	subql	#4,a2	|(calling nreverse)
	movl	a4@(8),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00912
L00913:
	movl	d7,d0
L00912:
	subql	#4,a2
	moveml	a6@(-28),#L00910
	unlk	a6
	rts
L00910 = 15584
L00909 = 28
	.globl	F00948	|(fcn lambda makhunk)
F00948:
	link	a6,#-L00951
	tstb	sp@(-132)
	moveml	#L00952,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00949:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	#_nilatom+0x1400-4,a4@(4)
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
	andw	#532,d0
	jeq	L00955
	movl	a4@,a2@+	|(calling greaterp)
	movl	#_nilatom+0x1400+512,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00959
	movl	a3@(796),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00958
L00959:
	cmpl	#_nilatom+0x1400+4,a4@
	jne	L00960
	movl	#_nilatom+0x1400+0,a4@(4)
	jra	L00958
L00960:
	cmpl	#_nilatom+0x1400-4096,a4@	|(calling haulong)
	jle	L00964
	cmpl	#_nilatom+0x1400+4092,a4@
	jle	L00965
L00964:
	movl	a4@,a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00966
L00965:
	movl	a4@,d0
	subql	#4,d0
	movl	d0,a2@+
L00966:
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+568,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a0
	cmpl	#_nilatom+0x1400-4096,a0
	jle	L00961
	cmpl	#_nilatom+0x1400+4092,a0
	jle	L00962
L00961:
	jbsr	_qoneminus
	movl	d0,a4@(4)
	jra	L00963
L00962:
	movl	a0,d0
	subql	#4,d0
	movl	d0,a4@(4)
L00963:
L00958:
	movl	a4@(4),a2@+	|(calling minusp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+336,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00968
	movl	d7,d0
	jra	L00953
|	jra	L00967
L00968:
	movl	d7,d0
L00967:
	movl	a4@(4),a2@+	|(calling *makhunk)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+576,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(8)
	movl	#_nilatom+0x1400+0,a2@+	|(beginning do)
L00969:
	movl	a4@(12),a5
	movl	a5@,d6
	movl	a4@,a5
	cmpl	a5@,d6
	jne	L00970
	movl	d7,d0
	jra	L00971
L00970:
	movl	a4@(12),a5
	movl	a5@,d2
	movl	a4@(8),a0
	movl	d2,d6
	asll	#2,d6
	movl	d7,a0@(0,d6:L)
	cmpl	#_nilatom+0x1400+4088,a4@(12)
	jle	L00972
	movl	a4@(12),a0
	jbsr	_qoneplus
	movl	d0,a4@(12)
	jra	L00973
L00972:
	movl	a4@(12),d0
	addql	#4,d0
	movl	d0,a4@(12)
L00973:
	jra	L00969
L00971:
	subql	#4,a2
	movl	a4@(8),d0
	jra	L00953
|	jra	L00954
L00955:
	movl	a3@(800),a2@+	|(calling apply)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+544,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00953
L00954:
	movl	d7,d0
L00953:
	subl	#12,a2
	moveml	a6@(-28),#L00952
	unlk	a6
	rts
L00952 = 15556
L00951 = 28
	.globl	F00974	|(fcn lambda member)
F00974:
	link	a6,#-L00977
	tstb	sp@(-132)
	moveml	#L00978,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00975:
	movl	a4@(4),a2@+	|(beginning do)
L00979:
	cmpl	a4@(8),d7
	jne	L00980
	movl	d7,d0
	jra	L00981
L00980:
	movl	a4@,a2@+
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00984
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00985
	jra	L00983
L00984:
	subql	#8,a2
L00985:
	movl	a4@(8),d0
	jra	L00981
|	jra	L00982
L00983:
	movl	d7,d0
L00982:
	movl	a4@(8),a5
	movl	a5@,a4@(8)
	jra	L00979
L00981:
	subl	#12,a2
	moveml	a6@(-24),#L00978
	unlk	a6
	rts
L00978 = 15552
L00977 = 24
	.globl	F00986	|(fcn lexpr min)
F00986:
	link	a6,#-L00989
	tstb	sp@(-132)
	moveml	#L00990,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00987:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	a4@,a2@+	|(beginning do)
	movl	#_nilatom+0x1400+4,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
L00991:
	movl	a4@(4),a2@+	|(calling lessp)
	movl	#_nilatom+0x1400+8,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00992
	movl	a4@(8),d0
	jra	L00995
L00992:
	movl	a4@(4),d0	|(calling lessp)
	cmpl	a4@(4),d7
	jeq	L00998
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00998
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00999
L00998:
	movl	a4@(-4),a2@+
L00999:
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00997
	movl	a4@(4),d0
	cmpl	a4@(4),d7
	jeq	L01000
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L01000
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(8)
	jra	L01001
L01000:
	movl	a4@(-4),a4@(8)
L01001:
	jra	L00996
L00997:
	movl	d7,d0
L00996:
	cmpl	#_nilatom+0x1400-4096,a4@(4)
	jle	L01002
	cmpl	#_nilatom+0x1400+4092,a4@(4)
	jle	L01003
L01002:
	movl	a4@(4),a0
	jbsr	_qoneminus
	movl	d0,a4@(4)
	jra	L01004
L01003:
	movl	a4@(4),d0
	subql	#4,d0
	movl	d0,a4@(4)
L01004:
	jra	L00991
L00995:
	subl	#12,a2
	moveml	a6@(-20),#L00990
	unlk	a6
	rts
L00990 = 15488
L00989 = 20
	.globl	F01005	|(fcn lambda oddp)
F01005:
	link	a6,#-L01008
	tstb	sp@(-132)
	moveml	#L01009,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L01006:
	movl	#_nilatom+0x1400+4,a2@+	|(calling boole)
	movl	#_nilatom+0x1400+4,a2@+
	movl	a4@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@(4),d6
	jne	L01013
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L01014
	movl	a3@(176),d0
	jra	L01015
L01014:
	movl	d7,d0
L01015:
	jra	L01016
L01013:
	movl	d7,d0
L01016:
	subql	#4,a2
	cmpl	d0,d7
	jne	L01011
	movl	a3@(176),a5
	movl	a5@,d0
	jra	L01010
L01011:
	movl	d7,d0
L01010:
	subql	#4,a2
	moveml	a6@(-24),#L01009
	unlk	a6
	rts
L01009 = 15552
L01008 = 24
	.globl	F01017	|(fcn lambda plusp)
F01017:
	link	a6,#-L01020
	tstb	sp@(-132)
	moveml	#L01021,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L01018:
	movl	a4@,a2@+	|(calling greaterp)
	movl	#_nilatom+0x1400+0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#4,a2
	moveml	a6@(-20),#L01021
	unlk	a6
	rts
L01021 = 15488
L01020 = 20
	.globl	F01022	|(fcn lexpr princ)
F01022:
	link	a6,#-L01025
	tstb	sp@(-132)
	moveml	#L01026,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L01023:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	cmpl	#_nilatom+0x1400+8,a4@
	jne	L01029
	movl	#_nilatom+0x1400+8,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(4)
	jra	L01028
L01029:
	movl	d7,d0
L01028:
	movl	#_nilatom+0x1400+4,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(8)
	movl	a4@(8),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L01033
	movl	a3@(8),a2@+
	movl	a4@(8),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L01037
	movl	a4@(8),a5
	movl	a5@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L01037
	movl	a4@(8),a5
	movl	a5@,a0
	cmpl	a0@,d7
	jne	L01037
	movl	a3@(804),a2@+	|(calling patom)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@(8),a5	|(calling princ)
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+712,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L01036
L01037:
	movl	a3@(808),a2@+	|(calling patom)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@(8),a2@+	|(beginning do)
L01039:
	cmpl	a4@(12),d7
	jne	L01040
	movl	a3@(812),a2@+	|(calling patom)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L01041
L01040:
	movl	a4@(12),a1	|(calling princ)
	movl	a1@(4),a2@+
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+712,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@(12),a5
	movl	a5@,a4@(12)
	cmpl	a5@,d7
	jeq	L01042
	movl	a4@(12),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jeq	L01043
	movl	a3@(816),a2@+	|(calling patom)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@(12),a2@+	|(calling princ)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+712,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d7,a4@(12)
	jra	L01042
L01043:
	movl	a3@(820),a2@+	|(calling patom)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-8),a2
L01042:
	jra	L01039
L01041:
	subql	#4,a2
L01036:
	jra	L01032
L01033:
	movl	a4@(8),a2@+	|(calling patom)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-8),a2
L01032:
	movl	a3@(176),a5
	movl	a5@,d0
	jra	L01027
|	movl	d7,d0
L01027:
	subl	#12,a2
	moveml	a6@(-24),#L01026
	unlk	a6
	rts
L01026 = 15552
L01025 = 24
	.globl	F01044	|(fcn lexpr prog1)
F01044:
	link	a6,#-L01047
	tstb	sp@(-132)
	moveml	#L01048,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L01045:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	#_nilatom+0x1400+4,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),d0
	subql	#4,a2
	moveml	a6@(-20),#L01048
	unlk	a6
	rts
L01048 = 15488
L01047 = 20
	.globl	F01051	|(fcn lambda reverse)
F01051:
	link	a6,#-L01054
	tstb	sp@(-132)
	moveml	#L01055,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L01052:
	cmpl	a4@,d7
	jne	L01057
	movl	d7,d0
	jra	L01056
L01057:
	movl	a4@,a1	|(beginning do)
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@,a5
	movl	a5@,a2@+
L01058:
	cmpl	a4@(8),d7
	jne	L01059
	movl	a4@(4),d0
	jra	L01060
L01059:
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	a4@(4),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a4@(8),a5
	movl	a5@,a4@(8)
	movl	a2@-,a4@(4)
	jra	L01058
L01060:
	subql	#8,a2
L01056:
	subql	#4,a2
	moveml	a6@(-20),#L01055
	unlk	a6
	rts
L01055 = 15488
L01054 = 20
	.globl	F01061	|(fcn lambda shell)
F01061:
	link	a6,#-L01064
	tstb	sp@(-132)
	moveml	#L01065,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L01062:
	movl	a3@(824),a2@+	|(calling getenv)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+656,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@,a2@+	|(calling lessp)
	|(calling flatc)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+720,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	#_nilatom+0x1400+4,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L01067
	movl	a3@(828),a4@
	jra	L01066
L01067:
	movl	d7,d0
L01066:
	movl	a3@(424),a2@+	|(calling apply)
	movl	a4@,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+544,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#4,a2
	moveml	a6@(-20),#L01065
	unlk	a6
	rts
L01065 = 15488
L01064 = 20
	.globl	F01068	|(fcn macro sl-print)
F01068:
	link	a6,#-L01071
	tstb	sp@(-132)
	moveml	#L01072,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L01069:
	movl	a4@,a5
	movl	a5@,a2@+
	movl	a3@(148),a2@+
	movl	a3@(832),a2@+
	movl	a3@(60),a2@+
	movl	a3@(836),a2@+
	movl	a4@(4),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(176),a2@+
	movl	a3@(840),a2@+
	movl	a4@(4),a2@+
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
	moveml	a6@(-20),#L01072
	unlk	a6
	rts
L01072 = 15488
L01071 = 20
	.globl	F01077	|(fcn lexpr sload)
F01077:
	link	a6,#-L01080
	tstb	sp@(-132)
	moveml	#L01081,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L01078:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	a4@,a2@+	|(beginning do)
	movl	d7,a2@+
L01082:
	movl	a4@(4),a5
	cmpl	#1,a5@
	jpl	L01083
	movl	a4@(8),d0
	jra	L01084
L01083:
	cmpl	#_nilatom+0x1400-4096,a4@(4)
	jle	L01085
	cmpl	#_nilatom+0x1400+4092,a4@(4)
	jle	L01086
L01085:
	movl	a4@(4),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L01087
L01086:
	movl	a4@(4),d0
	subql	#4,d0
	movl	d0,a2@+
L01087:
	movl	a4@(4),d0
	cmpl	a4@(4),d7
	jeq	L01088
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L01088
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L01089
L01088:
	movl	a4@(-4),a2@+
L01089:
	movl	a4@(8),a2@+
	jbsr	_qcons
	movl	d0,a4@(8)
	movl	a2@-,a4@(4)
	jra	L01082
L01084:
	subql	#8,a2
	movl	d0,a2@+
	movl	d7,a2@+
	movl	a4@(4),a4@(8)	|(beginning do)
	movl	a4@(8),a2@+
L01092:
	cmpl	a4@(12),d7
	jne	L01093
	movl	d7,d0
	jra	L01094
L01093:
	movl	a4@(12),a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a4@(16),a2@+	|(calling infile)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+368,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(20)
	cmpl	d0,d7
	jeq	L01097
	movl	a3@(844),a5
	cmpl	a5@,d7
	jeq	L01098
	movl	a3@(848),a2@+	|(calling princ)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+712,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(16),a2@+	|(calling princ)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+712,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(852),a2@+	|(calling princ)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+712,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@,a2
L01098:
	jra	L01096
L01097:
	movl	a3@(856),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(16),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d7,d0
	jra	L01095
L01096:
	lea	a2@,a5	|(calling gensym)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a4@(24)
	movl	a4@(20),a2@+	|(beginning do)
	|(calling read)
	movl	a4@(24),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+560,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
L01099:
	movl	a4@(24),d6
	cmpl	a4@(36),d6
	jne	L01100
	movl	a4@(20),a2@+	|(calling close)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+376,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L01101
L01100:
	movl	a3@(844),a5
	cmpl	a5@,d7
	jeq	L01102
	movl	a4@(36),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L01104
	movl	a4@(36),a1
	movl	a1@(4),a2@+
	movl	a3@(860),a2@+
	jbsr	_qget
	movl	d0,a4@(28)
	cmpl	d0,d7
	jeq	L01104
	movl	a4@(28),a2@+	|(calling print)
	|(calling nthcdr)
	movl	a4@(36),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+728,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a0
	movl	a0@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L01103
L01104:
	movl	a4@(36),a2@+	|(calling print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
L01103:
L01102:
	movl	a4@(36),a2@+	|(calling eval)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+272,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(32)
	movl	a3@(864),d6
	movl	a3@(844),a5
	cmpl	a5@,d6
	jne	L01106
	movl	a3@(868),a2@+	|(calling princ)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+712,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(836),a5
	cmpl	a5@,d7
	jeq	L01108
	movl	a3@(836),a5
	movl	a5@,a0
	cmpl	a0@(8),d7
	jeq	L01108
	movl	a3@(836),a5
	movl	a5@,a2@+
	movl	a4@(32),a2@+
	movl	a4@(40),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L01111
	movl	a4@(40),a1
	cmpl	a1@(8),d7
	jeq	L01111
	movl	a4@(40),a1
	movl	a1@(8),a4@(40)
	cmpl	a1@(8),d7
	jra	L01110
L01111:
	movl	d7,d0
L01110:
	movl	a4@(40),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L01114
	movl	a3@(48),a2@+
	movl	a4@(40),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L01114
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-8),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L01113
L01114:
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+736,a5
	jbsr	a5@
	lea	a2@(-8),a2
L01113:
	jra	L01107
L01108:
	movl	a4@(32),a2@+	|(calling print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
L01107:
L01106:
	movl	a3@(844),a5
	cmpl	a5@,d7
	jeq	L01116
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@,a2
L01116:
	movl	a4@(20),a2@+	|(calling read)
	movl	a4@(24),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+560,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(36)
	jra	L01099
L01101:
	subql	#4,a2
	movl	a3@(176),a5
	movl	a5@,d0
	jra	L01095
L01095:
	subl	#20,a2
	movl	a4@(12),a5
	movl	a5@,a4@(12)
	jra	L01092
L01094:
	subql	#4,a2
	movl	a4@(8),d0
	subl	#12,a2
	moveml	a6@(-24),#L01081
	unlk	a6
	rts
L01081 = 15552
L01080 = 24
	.globl	F01117	|(fcn lambda sort)
F01117:
	link	a6,#-L01120
	tstb	sp@(-132)
	moveml	#L01121,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L01118:
	movl	a4@(4),d0
	cmpl	a4@(4),d7
	jne	L01122
	movl	a3@(876),d0
L01122:
	movl	a3@(872),a5
	movl	d0,a5@
	movl	a4@,a2@+	|(calling sortmerge)
	movl	a4@,a2@+	|(calling length)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+520,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+744,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#8,a2
	moveml	a6@(-20),#L01121
	unlk	a6
	rts
L01121 = 15488
L01120 = 20
	.globl	F01123	|(fcn lambda sortmerge)
F01123:
	link	a6,#-L01126
	tstb	sp@(-132)
	moveml	#L01127,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L01124:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a4@(4),a2@+	|(calling greaterp)
	movl	#_nilatom+0x1400+28,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L01130
	movl	a4@,a2@+	|(calling splitlist)
	movl	a4@(4),a2@+	|(calling quotient)
	movl	#_nilatom+0x1400+8,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(12)
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+752,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(8)
	movl	a4@(8),a1	|(calling mergelists)
	|(calling sortmerge)
	movl	a1@(4),a2@+
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+744,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@(8),a5	|(calling sortmerge)
	movl	a5@,a2@+
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+744,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+760,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L01128
|	jra	L01129
L01130:
	movl	a4@,a2@+	|(beginning do)
	movl	d7,a2@+
L01131:
	cmpl	a4@(16),d7
	jne	L01132
	movl	d7,d0
	jra	L01133
L01132:
	movl	a4@,a2@+	|(beginning do)
L01134:
	movl	a4@(20),d6
	movl	a4@(24),a5
	cmpl	a5@,d6
	jne	L01135
	movl	a4@(24),a4@(20)
	movl	a4@(20),d0
	jra	L01136
L01135:
	movl	a3@(872),a5
	movl	a5@,a2@+
	movl	a4@(24),a1
	movl	a1@(4),a2@+
	movl	a4@(24),a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	movl	a4@(28),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L01140
	movl	a4@(28),a1
	cmpl	a1@(8),d7
	jeq	L01140
	movl	a4@(28),a1
	movl	a1@(8),a4@(28)
	cmpl	a1@(8),d7
	jra	L01139
L01140:
	movl	d7,d0
L01139:
	movl	a4@(28),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L01143
	movl	a3@(48),a2@+
	movl	a4@(28),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L01143
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-12),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L01142
L01143:
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+736,a5
	jbsr	a5@
	lea	a2@(-12),a2
L01142:
	cmpl	d0,d7
	jne	L01138
	movl	a4@(24),a2@+
	movl	a4@(24),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@(24),a5
	movl	a5@,a2@+
	movl	a4@(24),a1
	movl	a1@(4),d1
	movl	a2@-,a0
	movl	d1,a0@(4)
	movl	a0,d0
	movl	a4@(32),d0
	subql	#4,a2
	movl	d0,d1
	movl	a2@-,a0
	movl	d1,a0@(4)
	movl	a0,d0
	jra	L01137
L01138:
	movl	d7,d0
L01137:
	movl	a4@(24),a5
	movl	a5@,a4@(24)
	jra	L01134
L01136:
	subql	#4,a2
	movl	a4@(16),a5
	movl	a5@,a4@(16)
	jra	L01131
L01133:
	subql	#8,a2
	movl	a4@,d0
	jra	L01128
L01129:
	movl	d7,d0
L01128:
	subl	#16,a2
	moveml	a6@(-24),#L01127
	unlk	a6
	rts
L01127 = 15552
L01126 = 24
	.globl	F01146	|(fcn lambda splitlist)
F01146:
	link	a6,#-L01149
	tstb	sp@(-132)
	moveml	#L01150,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L01147:
	movl	d7,a2@+
	movl	a4@(4),a2@+	|(beginning do)
	movl	a4@,a2@+
L01152:
	movl	a4@(16),a5
	cmpl	a5@,d7
	jeq	L01155
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@(12),d6
	jne	L01153
	movl	a4@(12),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L01153
L01155:
	movl	a4@(16),a5
	movl	a5@,a4@(8)
	movl	a4@(16),a0
	movl	d7,a0@
	movl	a0,d0
	jra	L01154
L01153:
	movl	a4@(16),a5
	movl	a5@,a4@(16)
	movl	a4@(12),a2@+	|(calling sub1)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+768,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(12)
	jra	L01152
L01154:
	subql	#8,a2
	movl	a4@,a2@+
	movl	a4@(8),a2@+
	jbsr	_qcons
	jra	L01151
|	movl	d7,d0
L01151:
	subl	#12,a2
	moveml	a6@(-24),#L01150
	unlk	a6
	rts
L01150 = 15552
L01149 = 24
	.globl	F01157	|(fcn lambda mergelists)
F01157:
	link	a6,#-L01160
	tstb	sp@(-132)
	moveml	#L01161,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L01158:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a4@(8)
	movl	a4@(8),a4@(12)
L01162:
	cmpl	a4@,d7
	jne	L01165
	movl	a4@(12),a0
	movl	a4@(4),a0@
	movl	a0,d0
	movl	a4@(8),a5
	movl	a5@,d0
	jra	L01163
|	jra	L01164
L01165:
	cmpl	a4@(4),d7
	jne	L01166
	movl	a4@(12),a0
	movl	a4@,a0@
	movl	a0,d0
	movl	a4@(8),a5
	movl	a5@,d0
	jra	L01163
|	jra	L01164
L01166:
	movl	a3@(872),a5
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
	jne	L01169
	movl	a4@(16),a1
	cmpl	a1@(8),d7
	jeq	L01169
	movl	a4@(16),a1
	movl	a1@(8),a4@(16)
	cmpl	a1@(8),d7
	jra	L01168
L01169:
	movl	d7,d0
L01168:
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L01172
	movl	a3@(48),a2@+
	movl	a4@(16),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L01172
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-12),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L01171
L01172:
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+736,a5
	jbsr	a5@
	lea	a2@(-12),a2
L01171:
	cmpl	d0,d7
	jeq	L01167
	movl	a4@(12),a0
	movl	a4@,a0@
	movl	a0,d0
	movl	a4@,a4@(12)
	movl	a4@,a5
	movl	a5@,a4@
	jra	L01164
L01167:
	movl	a4@(12),a0
	movl	a4@(4),a0@
	movl	a0,d0
	movl	a4@(4),a4@(12)
	movl	a4@(4),a5
	movl	a5@,a4@(4)
L01164:
	jra	L01162
|	movl	d7,d0
L01163:
	subl	#16,a2
	moveml	a6@(-24),#L01161
	unlk	a6
	rts
L01161 = 15552
L01160 = 24
	.globl	F01175	|(fcn lambda sortcar)
F01175:
	link	a6,#-L01178
	tstb	sp@(-132)
	moveml	#L01179,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L01176:
	movl	d7,a2@+
	cmpl	a4@(4),d7
	jne	L01182
	movl	a3@(876),a4@(4)
	jra	L01181
L01182:
	movl	d7,d0
L01181:
	cmpl	a4@,d7
	jne	L01184
	movl	d7,d0
	jra	L01180
|	jra	L01183
L01184:
	movl	a4@,a2@+	|(calling length)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+520,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(8)
	movl	#_nilatom+0x1400+4,a2@+	|(beginning do)
L01185:
	movl	a4@(12),a2@+	|(calling greaterp)
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L01186
	movl	d7,d0
	jra	L01187
L01186:
	movl	a4@,a2@+	|(calling sortcarhelp)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+776,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	#_nilatom+0x1400+4088,a4@(12)
	jle	L01188
	movl	a4@(12),a0
	jbsr	_qoneplus
	movl	d0,a4@(12)
	jra	L01189
L01188:
	movl	a4@(12),d0
	addql	#4,d0
	movl	d0,a4@(12)
L01189:
	jra	L01185
L01187:
	subql	#4,a2
	movl	a4@,d0
	jra	L01180
L01183:
	movl	d7,d0
L01180:
	subl	#12,a2
	moveml	a6@(-20),#L01179
	unlk	a6
	rts
L01179 = 15488
L01178 = 20
	.globl	F01190	|(fcn lambda sortcarhelp)
F01190:
	link	a6,#-L01193
	tstb	sp@(-132)
	moveml	#L01194,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L01191:
	movl	a4@,a5
	cmpl	a5@,d7
	jne	L01196
	movl	a4@,d0
	jra	L01195
L01196:
	movl	a4@(4),a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a0
	movl	a0@(4),a2@+
	movl	a4@,a1
	movl	a1@(4),a0
	movl	a0@(4),a2@+
	movl	a4@(8),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L01199
	movl	a4@(8),a1
	cmpl	a1@(8),d7
	jeq	L01199
	movl	a4@(8),a1
	movl	a1@(8),a4@(8)
	cmpl	a1@(8),d7
	jra	L01198
L01199:
	movl	d7,d0
L01198:
	movl	a4@(8),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L01202
	movl	a3@(48),a2@+
	movl	a4@(8),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L01202
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-12),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L01201
L01202:
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+736,a5
	jbsr	a5@
	lea	a2@(-12),a2
L01201:
	cmpl	d0,d7
	jeq	L01197
	movl	a4@,a2@+	|(calling exchange2)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	jbsr	L01174
	movl	a4@,a5	|(calling sortcarhelp)
	movl	a5@,a2@+
	movl	a4@(4),a2@+
	movl	_lbot,a5
	movl	a4,a5
	movl	a2@(-8),a5@
	movl	a2@(-4),a5@(4)
	movl	a5,a2
	addql	#8,a2
	jra	L01191
|	jra	L01195
L01197:
	movl	a4@,a5	|(calling sortcarhelp)
	movl	a5@,a2@+
	movl	a4@(4),a2@+
	movl	_lbot,a5
	movl	a4,a5
	movl	a2@(-8),a5@
	movl	a2@(-4),a5@(4)
	movl	a5,a2
	addql	#8,a2
	jra	L01191
L01195:
	subql	#8,a2
	moveml	a6@(-24),#L01194
	unlk	a6
	rts
L01194 = 15552
L01193 = 24
L01174:	|(fcn lambda exchange2)
	movl	a4,sp@-
	lea	a2@(-4),a4
L01205:
	movl	d7,a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a4@(4)
	movl	a4@,a5
	movl	a5@,a2@+
	movl	a4@,a0
	movl	a0@(4),d1
	movl	a2@-,a0
	movl	d1,a0@(4)
	movl	a0,d0
	movl	a4@,a0
	movl	a4@(4),a0@(4)
	movl	a0,d0
	movl	d7,d0
L01209:
	subql	#8,a2
	movl	sp@+,a4
	rts
	.globl	F01210	|(fcn lambda sublis)
F01210:
	link	a6,#-L01213
	tstb	sp@(-132)
	moveml	#L01214,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L01211:
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
	jeq	L01216
	movl	a4@(4),a2@+	|(calling assoc)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+784,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(8)
	cmpl	d0,d7
	jeq	L01220
	movl	a4@(8),a5
	movl	a5@,d0
	jra	L01219
L01220:
	movl	a4@(4),d0
L01219:
	jra	L01215
L01216:
	movl	a4@,a2@+	|(calling sublishelp)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+792,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(8)
	cmpl	d0,d7
	jeq	L01221
	movl	a4@(8),a1
	movl	a1@(4),d0
	jra	L01215
L01221:
	movl	a4@(4),d0
L01215:
	subl	#12,a2
	moveml	a6@(-20),#L01214
	unlk	a6
	rts
L01214 = 15488
L01213 = 20
	.globl	F01222	|(fcn lambda sublishelp)
F01222:
	link	a6,#-L01225
	tstb	sp@(-132)
	moveml	#L01226,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L01223:
	movl	d7,a2@+
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
	jeq	L01228
	movl	a4@(4),a2@+	|(calling assoc)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+784,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(8)
	cmpl	d0,d7
	jeq	L01232
	movl	a4@(8),a5
	movl	a5@,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	jra	L01231
L01232:
	movl	d7,d0
L01231:
	jra	L01227
L01228:
	movl	a4@,a2@+	|(calling sublishelp)
	movl	a4@(4),a1
	movl	a1@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+792,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(8)
	movl	a4@,a2@+	|(calling sublishelp)
	movl	a4@(4),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+792,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(12)
	cmpl	a4@(8),d7
	jne	L01234
	cmpl	a4@(12),d7
	jne	L01234
	movl	d7,d0
	jra	L01233
L01234:
	cmpl	a4@(8),d7
	jeq	L01236
	cmpl	a4@(12),d7
	jne	L01236
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	a4@(4),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	jra	L01233
L01236:
	cmpl	a4@(8),d7
	jne	L01238
	cmpl	a4@(12),d7
	jeq	L01238
	movl	a4@(4),a1
	movl	a1@(4),a2@+
	movl	a4@(12),a0
	movl	a0@(4),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	jra	L01233
L01238:
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	a4@(12),a0
	movl	a0@(4),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
L01233:
L01227:
	subl	#16,a2
	moveml	a6@(-20),#L01226
	unlk	a6
	rts
L01226 = 15488
L01225 = 20
	.globl	F01240	|(fcn lambda subst)
F01240:
	link	a6,#-L01243
	tstb	sp@(-132)
	moveml	#L01244,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L01241:
	movl	_bnp,a1
	movl	a3@(880),a5
	movl	a5@,a1@+
	movl	a3@(880),a1@+
	movl	a3@(880),a5
	movl	a4@(4),a5@
	movl	a3@(884),a5
	movl	a5@,a1@+
	movl	a3@(884),a1@+
	movl	a3@(884),a5
	movl	a4@,a5@
	movl	a1,_bnp
	movl	a3@(880),a5
	movl	a5@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L01246
	movl	a4@(8),a2@+	|(calling substeq)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+800,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L01245
L01246:
	movl	a4@(8),a2@+	|(calling substequal)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+808,a5
	jbsr	a5@
	lea	a2@(-4),a2
L01245:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1,_bnp
	subl	#16,_bnp
	subl	#12,a2
	moveml	a6@(-20),#L01244
	unlk	a6
	rts
L01244 = 15488
L01243 = 20
	.globl	F01247	|(fcn lambda substeq)
F01247:
	link	a6,#-L01250
	tstb	sp@(-132)
	moveml	#L01251,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L01248:
	movl	a3@(880),a5
	movl	a5@,d6
	cmpl	a4@,d6
	jne	L01253
	movl	a3@(884),a5
	movl	a5@,d0
	jra	L01252
L01253:
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
	jeq	L01254
	movl	a4@,d0
	jra	L01252
L01254:
	movl	a4@,a1	|(calling substeq)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+800,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@,a5	|(calling substeq)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+800,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	jbsr	_qcons
L01252:
	subql	#4,a2
	moveml	a6@(-24),#L01251
	unlk	a6
	rts
L01251 = 15552
L01250 = 24
	.globl	F01257	|(fcn lambda substequal)
F01257:
	link	a6,#-L01260
	tstb	sp@(-132)
	moveml	#L01261,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L01258:
	movl	a3@(880),a5
	movl	a5@,a2@+
	movl	a4@,a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L01264
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L01265
	jra	L01263
L01264:
	subql	#8,a2
L01265:
	movl	a3@(884),a5
	movl	a5@,d0
	jra	L01262
L01263:
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
	jeq	L01266
	movl	a4@,d0
	jra	L01262
L01266:
	movl	a4@,a1	|(calling substequal)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+808,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@,a5	|(calling substequal)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+808,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	jbsr	_qcons
L01262:
	subql	#4,a2
	moveml	a6@(-24),#L01261
	unlk	a6
	rts
L01261 = 15552
L01260 = 24
	.globl	F01269	|(fcn nlambda vi)
F01269:
	link	a6,#-L01272
	tstb	sp@(-132)
	moveml	#L01273,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L01270:
	movl	a3@(888),a2@+	|(calling exvi)
	movl	a4@,a2@+
	movl	d7,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+352,a5
	jbsr	a5@
	lea	a2@(-12),a2
	subql	#4,a2
	moveml	a6@(-20),#L01273
	unlk	a6
	rts
L01273 = 15488
L01272 = 20
	.globl	F01274	|(fcn nlambda vil)
F01274:
	link	a6,#-L01277
	tstb	sp@(-132)
	moveml	#L01278,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L01275:
	movl	a3@(888),a2@+	|(calling exvi)
	movl	a4@,a2@+
	movl	a3@(176),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+352,a5
	jbsr	a5@
	lea	a2@(-12),a2
	subql	#4,a2
	moveml	a6@(-20),#L01278
	unlk	a6
	rts
L01278 = 15488
L01277 = 20
	.globl	F01279	|(fcn lambda xcons)
F01279:
	link	a6,#-L01282
	tstb	sp@(-132)
	moveml	#L01283,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L01280:
	movl	a4@(4),a2@+
	movl	a4@,a2@+
	jbsr	_qcons
	subql	#8,a2
	moveml	a6@(-20),#L01283
	unlk	a6
	rts
L01283 = 15488
L01282 = 20
bind_org:
	linker_size = 	223
	trans_size = 	102
	.long	99
	.long	99
	.long	99
	.long	2
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
	.long	2
	.long	99
	.long	0
	.long	99
	.long	0
	.long	99
	.long	99
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
	.long	1
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
	.long	1
	.long	99
	.long	0
	.long	99
	.long	0
	.long	99
	.long	0
	.long	99
	.long	1
	.long	99
	.long	0
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
	.long	1
	.long	99
	.long	99
	.long	0
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
	.long	99
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
	.long	0
	.long	99
	.long	0
	.long	99
	.long	0
	.long	99
	.long	99
	.long	99
	.long	99
	.long	2
	.long	99
	.long	0
	.long	99
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
	.long	1
	.long	99
	.long	1
	.long	99
	.long	99
	.long	0
	.long	99
	.long -1
lit_org:
.asciz "progn"
.asciz "putd"
.asciz "quote"
.asciz "getd"
.asciz "putprop"
.asciz "get"
.asciz "((quote fcn-info))"
.asciz "((quote fcn-info))"
.asciz "*catch"
.asciz "*throw"
.asciz "setq"
.asciz "(r)"
.asciz "lambda"
.asciz "or"
.asciz "assoc"
.asciz "funcall"
.asciz "assq"
.asciz "l"
.asciz "(minusp signp-arg)"
.asciz "le"
.asciz "(not (greaterp signp-arg 0))"
.asciz "e"
.asciz "(zerop signp-arg)"
.asciz "n"
.asciz "(not (zerop signp-arg))"
.asciz "ge"
.asciz "(not (minusp signp-arg))"
.asciz "g"
.asciz "(greaterp signp-arg 0)"
.asciz "\"bad arg to signp \""
.asciz "and"
.asciz "numberp"
.asciz "signp-arg"
.asciz "(signp-arg)"
.asciz "(numberp signp-arg)"
.asciz "G"
.asciz "(quote ER%unwind-protect)"
.asciz "cond"
.asciz "dtpr"
.asciz "eq"
.asciz "(quote ER%unwind-protect)"
.asciz "car"
.asciz "I-throw-err"
.asciz "cdr"
.asciz "t"
.asciz "(nil)"
.asciz "\"Floating Exception \""
.asciz "\"Interrupt:  \""
.asciz "\"[\""
.asciz "(list fixnum)"
.asciz "(list fixnum)"
.asciz "(list fixnum)"
.asciz "ut:"
.asciz "\"%]\""
.asciz "*"
.asciz "\":\""
.asciz "\"{\""
.asciz "100.0"
.asciz "\"%}\""
.asciz "\"; \""
.asciz "$gccount$"
.asciz "ptimeatlastgc"
.asciz "gcafter-panic-mode"
.asciz "\"[Storage space totally exhausted]\""
.asciz "\"Space exhausted when allocating \""
.asciz "$gc_midlim"
.asciz "$gc_minalloc"
.asciz "$gc_pct"
.asciz "$gc_lowlim"
.asciz "ER%all"
.asciz "$gcprint"
.asciz "\"[Now in storage allocation panic mode]\""
.asciz "bignum"
.asciz "comment"
.asciz "unique"
.asciz "%"
.asciz "vescape"
.asciz "\\\\"
.asciz "vcharacter"
.asciz "`"
.asciz ","
.asciz "(uctolc t)"
.asciz "/"
.asciz "\\["
.asciz "\\]"
.asciz "(uctolc t)"
.asciz "(uctolc t)"
.asciz "!"
.asciz "splicing"
.asciz "readtable"
.asciz "~"
.asciz "zapline"
.asciz ";"
.asciz "vleft-bracket"
.asciz "vright-bracket"
.asciz "(uctolc nil)"
.asciz "\" wrong number of args to delete \""
.asciz "delete"
.asciz "\" non-list arg to delete \""
.asciz "\" wrong number of args to delq \""
.asciz "delq"
.asciz "\" non-list arg to delq \""
.asciz "ex"
.asciz "edit_file"
.asciz "\".l\""
.asciz "\" '+set lisp' \""
.asciz "process"
.asciz "\"\""
.asciz "\" \""
.asciz "\"vector[\""
.asciz "\"]\""
.asciz "\"vectori[\""
.asciz "\"]\""
.asciz "\\("
.asciz "\\)"
.asciz "\\ "
.asciz "\\."
.asciz "\"vector[\""
.asciz "\"]\""
.asciz "\"vectori[\""
.asciz "\"]\""
.asciz "\"vector[\""
.asciz "\"]\""
.asciz "\"vectori[\""
.asciz "\"]\""
.asciz "32"
.asciz "46"
.asciz "1.0"
.asciz "\"expt: Can't compute number to a bignum power\""
.asciz "subroutine"
.asciz "\" \""
.asciz "\" -lI77 -lF77 -lm\""
.asciz "fixnum"
.asciz "flonum"
.asciz "\"type (help fnc) for info on function fnc\""
.asciz "\"type (help n) to see chapter n\""
.asciz "\"type (help tc) for a table of contents\""
.asciz "\"Bad option to help \""
.asciz "tc"
.asciz "\"Table of contents\""
.asciz "\"1 - intro; 2 - data structure; 3 - arithmetic; 4 - special\""
.asciz "\"5 - i/o; 6 - system; 7 - reader; 8 - functions; 9 - arrays\""
.asciz "\"10 - exceptions; 11 - trace package; 12 - Liszt;\""
.asciz "\"14 - step package; 15 - fixit package\""
.asciz "\"b - special symbols; c - gc & debugging & top level \""
.asciz "(b c)"
.asciz "\"/usr/ucb/ul \""
.asciz "lisp-library-directory"
.asciz "\"/manual/ch\""
.asciz "\".r | /usr/ucb/more -f\""
.asciz "\"Unknown function: \""
.asciz "append"
.asciz "helplocation"
.asciz "\"[Reading help index]\""
.asciz "\"/manual/helpindex\""
.asciz "\" \""
.asciz "\"/usr/ucb/ul \""
.asciz "\"/manual/\""
.asciz "\" | /usr/ucb/more -f \\\"+/(\""
.asciz "\"\\\"\""
.asciz "\"hunk: size is too big\""
.asciz "\"load: illegal filename \""
.asciz "tilde-expansion"
.asciz "(feature long-filenames)"
.asciz "(||)"
.asciz "(load-search-path)"
.asciz "\"load: file not found \""
.asciz "(|| \\.)"
.asciz "||"
.asciz "\"/\""
.asciz "load-most-recent"
.asciz "\".o\""
.asciz "\".l\""
.asciz "\".o\""
.asciz "\".l\""
.asciz "USER"
.asciz "HOME"
.asciz "\"tilde-expand: unknown user \""
.asciz "\"tilde-expand: illegal argument \""
.asciz "(translink)"
.asciz "(translink)"
.asciz "(translink nil)"
.asciz "(translink t)"
.asciz "(translink on)"
.asciz "$ldprint"
.asciz "\"[load \""
.asciz "\"]\""
.asciz "(translink)"
.asciz "\"<no form read successfully>\""
.asciz "\"load aborted due to read error after form \""
.asciz "(translink)"
.asciz "(translink nil)"
.asciz "(translink t)"
.asciz "(translink on)"
.asciz "array"
.asciz "macro-autoload"
.asciz "macro"
.asciz "(array lambda lexpr nil)"
.asciz "prog"
.asciz "\"makhunk: size is too big\""
.asciz "hunk"
.asciz "\"'\""
.asciz "\"(\""
.asciz "\")\""
.asciz "\" . \""
.asciz "\" \""
.asciz "SHELL"
.asciz "csh"
.asciz "(and sload-print (getd sload-print))"
.asciz "sload-print"
.asciz "print"
.asciz "$sldprint"
.asciz "\"[sload \""
.asciz "\"]\""
.asciz "\"bad file name: \""
.asciz "sloadprintarg"
.asciz "value"
.asciz "\": \""
.asciz "sort-function"
.asciz "alphalessp"
.asciz "old"
.asciz "new"
.asciz "vi"
.asciz "greaterp"
.asciz "nreverse"
.asciz "gensym"
.asciz "de-compose"
.asciz "append"
.asciz "error"
.asciz "subst"
.asciz "patom"
.asciz "drain"
.asciz "*break"
.asciz "print"
.asciz "difference"
.asciz "times"
.asciz "quotient"
.asciz "max"
.asciz "terpr"
.asciz "opval"
.asciz "*"
.asciz "fix"
.asciz "boundp"
.asciz "ptime"
.asciz "lessp"
.asciz "allocate"
.asciz "prtpagesused"
.asciz "type"
.asciz "equal"
.asciz "copy"
.asciz "vget"
.asciz "new-vector"
.asciz "vprop"
.asciz "vsetprop"
.asciz "int:vector-range-error"
.asciz "new-vectori-byte"
.asciz "uconcat"
.asciz "eval"
.asciz "set"
.asciz "putd"
.asciz "plist"
.asciz "setplist"
.asciz "setsyntax"
.asciz "sstatus"
.asciz "putprop"
.asciz "minusp"
.asciz "boole"
.asciz "exvi"
.asciz "concat"
.asciz "infile"
.asciz "close"
.asciz "load"
.asciz "*process"
.asciz "aexplode"
.asciz "explode"
.asciz "last"
.asciz "aexplodec"
.asciz "explodec"
.asciz "aexploden"
.asciz "exploden"
.asciz "expt"
.asciz "log"
.asciz "exp"
.asciz "oddp"
.asciz "/"
.asciz "cfasl"
.asciz "onep"
.asciz "fseek"
.asciz "length"
.asciz "substring"
.asciz "substringn"
.asciz "apply"
.asciz "makereadtable"
.asciz "read"
.asciz "haulong"
.asciz "*makhunk"
.asciz "tilde-expand"
.asciz "status"
.asciz "getchar"
.asciz "probef"
.asciz "filestat"
.asciz "filestat:mtime"
.asciz "fasl-a-file"
.asciz "getcharn"
.asciz "implode"
.asciz "getenv"
.asciz "username-to-dir"
.asciz "fasl"
.asciz "list-to-bignum"
.asciz "scons"
.asciz "arrayp"
.asciz "macroexpand"
.asciz "princ"
.asciz "flatc"
.asciz "nthcdr"
.asciz "funcall"
.asciz "sortmerge"
.asciz "splitlist"
.asciz "mergelists"
.asciz "sub1"
.asciz "sortcarhelp"
.asciz "assoc"
.asciz "sublishelp"
.asciz "substeq"
.asciz "substequal"
.ascii "(setq fcn-in-common1.l \"common1.l compiled by Liszt 68000 ve"
.asciz "rsion 8.39a on Fri Dec 15 18:48:07 1989\")"
.ascii "(setq rcs-common1- \"$Header: common1.l,v 1.9 84/01/06 14:21:"
.asciz "46 sklower Exp $\")"
.ascii "(or (boundp (quote lisp-library-directory)) (setq lisp-libra"
.asciz "ry-directory (quote /usr/lib/lisp)))"
.asciz "make-equivalent"
.ascii "(putprop (quote make-equivalent) (list (quote nil) fcn-in-co"
.asciz "mmon1.l) (quote fcn-info))"
.ascii "(progn (putd (quote abs) (getd (quote absval))) (putprop (qu"
.ascii "ote abs) (get (quote absval) (quote fcn-info)) (quote fcn-in"
.asciz "fo)))"
.ascii "(progn (putd (quote add) (getd (quote sum))) (putprop (quote"
.asciz " add) (get (quote sum) (quote fcn-info)) (quote fcn-info)))"
.ascii "(progn (putd (quote bcdcall) (getd (quote funcall))) (putpro"
.ascii "p (quote bcdcall) (get (quote funcall) (quote fcn-info)) (qu"
.asciz "ote fcn-info)))"
.ascii "(progn (putd (quote chrct) (getd (quote charcnt))) (putprop "
.ascii "(quote chrct) (get (quote charcnt) (quote fcn-info)) (quote "
.asciz "fcn-info)))"
.ascii "(progn (putd (quote diff) (getd (quote difference))) (putpro"
.ascii "p (quote diff) (get (quote difference) (quote fcn-info)) (qu"
.asciz "ote fcn-info)))"
.ascii "(progn (putd (quote numbp) (getd (quote numberp))) (putprop "
.ascii "(quote numbp) (get (quote numberp) (quote fcn-info)) (quote "
.asciz "fcn-info)))"
.ascii "(progn (putd (quote remainder) (getd (quote mod))) (putprop "
.ascii "(quote remainder) (get (quote mod) (quote fcn-info)) (quote "
.asciz "fcn-info)))"
.ascii "(progn (putd (quote terpri) (getd (quote terpr))) (putprop ("
.ascii "quote terpri) (get (quote terpr) (quote fcn-info)) (quote fc"
.asciz "n-info)))"
.ascii "(progn (putd (quote typep) (getd (quote type))) (putprop (qu"
.ascii "ote typep) (get (quote type) (quote fcn-info)) (quote fcn-in"
.asciz "fo)))"
.ascii "(progn (putd (quote symeval) (getd (quote eval))) (putprop ("
.ascii "quote symeval) (get (quote eval) (quote fcn-info)) (quote fc"
.asciz "n-info)))"
.ascii "(progn (putd (quote <) (getd (quote lessp))) (putprop (quote"
.asciz " <) (get (quote lessp) (quote fcn-info)) (quote fcn-info)))"
.ascii "(progn (putd (quote <&) (getd (quote lessp))) (putprop (quot"
.ascii "e <&) (get (quote lessp) (quote fcn-info)) (quote fcn-info))"
.asciz ")"
.ascii "(progn (putd (quote =) (getd (quote equal))) (putprop (quote"
.asciz " =) (get (quote equal) (quote fcn-info)) (quote fcn-info)))"
.ascii "(progn (putd (quote =&) (getd (quote equal))) (putprop (quot"
.ascii "e =&) (get (quote equal) (quote fcn-info)) (quote fcn-info))"
.asciz ")"
.ascii "(progn (putd (quote >) (getd (quote greaterp))) (putprop (qu"
.ascii "ote >) (get (quote greaterp) (quote fcn-info)) (quote fcn-in"
.asciz "fo)))"
.ascii "(progn (putd (quote >&) (getd (quote greaterp))) (putprop (q"
.ascii "uote >&) (get (quote greaterp) (quote fcn-info)) (quote fcn-"
.asciz "info)))"
.ascii "(progn (putd (quote *dif) (getd (quote difference))) (putpro"
.ascii "p (quote *dif) (get (quote difference) (quote fcn-info)) (qu"
.asciz "ote fcn-info)))"
.ascii "(progn (putd (quote \\\\) (getd (quote mod))) (putprop (quote "
.asciz "\\\\) (get (quote mod) (quote fcn-info)) (quote fcn-info)))"
.ascii "(progn (putd (quote \\1+$) (getd (quote add1))) (putprop (quo"
.ascii "te \\1+$) (get (quote add1) (quote fcn-info)) (quote fcn-info"
.asciz ")))"
.ascii "(progn (putd (quote \\1-$) (getd (quote sub1))) (putprop (quo"
.ascii "te \\1-$) (get (quote sub1) (quote fcn-info)) (quote fcn-info"
.asciz ")))"
.ascii "(progn (putd (quote *$) (getd (quote times))) (putprop (quot"
.ascii "e *$) (get (quote times) (quote fcn-info)) (quote fcn-info))"
.asciz ")"
.ascii "(progn (putd (quote /$) (getd (quote quotient))) (putprop (q"
.ascii "uote /$) (get (quote quotient) (quote fcn-info)) (quote fcn-"
.asciz "info)))"
.ascii "(progn (putd (quote +$) (getd (quote add))) (putprop (quote "
.asciz "+$) (get (quote add) (quote fcn-info)) (quote fcn-info)))"
.ascii "(progn (putd (quote -$) (getd (quote difference))) (putprop "
.ascii "(quote -$) (get (quote difference) (quote fcn-info)) (quote "
.asciz "fcn-info)))"
.asciz "max"
.ascii "(putprop (quote max) (list (quote nil) fcn-in-common1.l) (qu"
.asciz "ote fcn-info))"
.asciz "catch"
.ascii "(putprop (quote catch) (list (quote nil) fcn-in-common1.l) ("
.asciz "quote fcn-info))"
.asciz "throw"
.ascii "(putprop (quote throw) (list (quote nil) fcn-in-common1.l) ("
.asciz "quote fcn-info))"
.asciz "desetq"
.ascii "(putprop (quote desetq) (list (quote nil) fcn-in-common1.l) "
.asciz "(quote fcn-info))"
.asciz "sassoc"
.ascii "(putprop (quote sassoc) (list (quote nil) fcn-in-common1.l) "
.asciz "(quote fcn-info))"
.asciz "sassq"
.ascii "(putprop (quote sassq) (list (quote nil) fcn-in-common1.l) ("
.asciz "quote fcn-info))"
.asciz "signp"
.ascii "(putprop (quote signp) (list (quote nil) fcn-in-common1.l) ("
.asciz "quote fcn-info))"
.asciz "unwind-protect"
.ascii "(putprop (quote unwind-protect) (list (quote nil) fcn-in-com"
.asciz "mon1.l) (quote fcn-info))"
.asciz "sys:fpeint-serv"
.ascii "(putprop (quote sys:fpeint-serv) (list (quote (1 . 1)) fcn-i"
.asciz "n-common1.l) (quote fcn-info))"
.asciz "sys:int-serv"
.ascii "(putprop (quote sys:int-serv) (list (quote (1 . 1)) fcn-in-c"
.asciz "ommon1.l) (quote fcn-info))"
.asciz "(signal 8 (quote sys:fpeint-serv))"
.asciz "(signal 2 (quote sys:int-serv))"
.ascii "(cond ((null (boundp (quote $gcprint))) (setq $gcprint nil))"
.asciz ")"
.ascii "(cond ((null (boundp (quote $gccount$))) (setq $gccount$ 0))"
.asciz ")"
.asciz "prtpagesused"
.ascii "(putprop (quote prtpagesused) (list (quote (3 . 3)) fcn-in-c"
.asciz "ommon1.l) (quote fcn-info))"
.asciz "(setq gcafter-panic-mode nil)"
.asciz "(setq $gc_minalloc 10)"
.asciz "(setq $gc_lowlim 60)"
.asciz "(setq $gc_midlim 85)"
.asciz "(setq $gc_pct .1)"
.asciz "(setq ptimeatlastgc (ptime))"
.asciz "gcafter"
.ascii "(putprop (quote gcafter) (list (quote nil) fcn-in-common1.l)"
.asciz " (quote fcn-info))"
.asciz "bigp"
.ascii "(putprop (quote bigp) (list (quote (1 . 1)) fcn-in-common1.l"
.asciz ") (quote fcn-info))"
.asciz "comment"
.ascii "(putprop (quote comment) (list (quote nil) fcn-in-common1.l)"
.asciz " (quote fcn-info))"
.asciz "copy"
.ascii "(putprop (quote copy) (list (quote (1 . 1)) fcn-in-common1.l"
.asciz ") (quote fcn-info))"
.asciz "copysymbol"
.ascii "(putprop (quote copysymbol) (list (quote (2 . 2)) fcn-in-com"
.asciz "mon1.l) (quote fcn-info))"
.asciz "cvttointlisp"
.ascii "(putprop (quote cvttointlisp) (list (quote (0 . 0)) fcn-in-c"
.asciz "ommon1.l) (quote fcn-info))"
.asciz "cvttomaclisp"
.ascii "(putprop (quote cvttomaclisp) (list (quote (0 . 0)) fcn-in-c"
.asciz "ommon1.l) (quote fcn-info))"
.asciz "cvttoucilisp"
.ascii "(putprop (quote cvttoucilisp) (list (quote (0 . 0)) fcn-in-c"
.asciz "ommon1.l) (quote fcn-info))"
.asciz "cvttofranzlisp"
.ascii "(putprop (quote cvttofranzlisp) (list (quote (0 . 0)) fcn-in"
.asciz "-common1.l) (quote fcn-info))"
.asciz "defprop"
.ascii "(putprop (quote defprop) (list (quote nil) fcn-in-common1.l)"
.asciz " (quote fcn-info))"
.asciz "delete"
.ascii "(putprop (quote delete) (list (quote nil) fcn-in-common1.l) "
.asciz "(quote fcn-info))"
.asciz "delq"
.ascii "(putprop (quote delq) (list (quote nil) fcn-in-common1.l) (q"
.asciz "uote fcn-info))"
.asciz "evenp"
.ascii "(putprop (quote evenp) (list (quote (1 . 1)) fcn-in-common1."
.asciz "l) (quote fcn-info))"
.asciz "ex"
.ascii "(putprop (quote ex) (list (quote nil) fcn-in-common1.l) (quo"
.asciz "te fcn-info))"
.asciz "exvi"
.ascii "(putprop (quote exvi) (list (quote (3 . 3)) fcn-in-common1.l"
.asciz ") (quote fcn-info))"
.asciz "exec"
.ascii "(putprop (quote exec) (list (quote nil) fcn-in-common1.l) (q"
.asciz "uote fcn-info))"
.asciz "exl"
.ascii "(putprop (quote exl) (list (quote nil) fcn-in-common1.l) (qu"
.asciz "ote fcn-info))"
.asciz "explode"
.ascii "(putprop (quote explode) (list (quote (1 . 1)) fcn-in-common"
.asciz "1.l) (quote fcn-info))"
.asciz "explodec"
.ascii "(putprop (quote explodec) (list (quote (1 . 1)) fcn-in-commo"
.asciz "n1.l) (quote fcn-info))"
.asciz "exploden"
.ascii "(putprop (quote exploden) (list (quote (1 . 1)) fcn-in-commo"
.asciz "n1.l) (quote fcn-info))"
.asciz "expt"
.ascii "(putprop (quote expt) (list (quote (2 . 2)) fcn-in-common1.l"
.asciz ") (quote fcn-info))"
.asciz "ffasl"
.ascii "(putprop (quote ffasl) (list (quote (3 . 5)) fcn-in-common1."
.asciz "l) (quote fcn-info))"
.asciz "filepos"
.ascii "(putprop (quote filepos) (list (quote nil) fcn-in-common1.l)"
.asciz " (quote fcn-info))"
.asciz "fixp"
.ascii "(putprop (quote fixp) (list (quote (1 . 1)) fcn-in-common1.l"
.asciz ") (quote fcn-info))"
.asciz "flatsize"
.ascii "(putprop (quote flatsize) (list (quote nil) fcn-in-common1.l"
.asciz ") (quote fcn-info))"
.asciz "floatp"
.ascii "(putprop (quote floatp) (list (quote (1 . 1)) fcn-in-common1"
.asciz ".l) (quote fcn-info))"
.asciz "getchar"
.ascii "(putprop (quote getchar) (list (quote (2 . 2)) fcn-in-common"
.asciz "1.l) (quote fcn-info))"
.asciz "getcharn"
.ascii "(putprop (quote getcharn) (list (quote (2 . 2)) fcn-in-commo"
.asciz "n1.l) (quote fcn-info))"
.asciz "getl"
.ascii "(putprop (quote getl) (list (quote (2 . 2)) fcn-in-common1.l"
.asciz ") (quote fcn-info))"
.asciz "help"
.ascii "(putprop (quote help) (list (quote nil) fcn-in-common1.l) (q"
.asciz "uote fcn-info))"
.ascii "(putprop (quote locatefunction) (list (quote (1 . 1)) fcn-in"
.asciz "-common1.l) (quote fcn-info))"
.asciz "hunk"
.ascii "(putprop (quote hunk) (list (quote nil) fcn-in-common1.l) (q"
.asciz "uote fcn-info))"
.asciz "last"
.ascii "(putprop (quote last) (list (quote (1 . 1)) fcn-in-common1.l"
.asciz ") (quote fcn-info))"
.ascii "(or (boundp (quote load-most-recent)) (setq load-most-recent"
.asciz " nil))"
.ascii "(or (boundp (quote tilde-expansion)) (setq tilde-expansion t"
.asciz "))"
.asciz "load"
.ascii "(putprop (quote load) (list (quote (1)) fcn-in-common1.l) (q"
.asciz "uote fcn-info))"
.asciz "tilde-expand"
.ascii "(putprop (quote tilde-expand) (list (quote (1 . 1)) fcn-in-c"
.asciz "ommon1.l) (quote fcn-info))"
.asciz "fasl-a-file"
.ascii "(putprop (quote fasl-a-file) (list (quote (3 . 3)) fcn-in-co"
.asciz "mmon1.l) (quote fcn-info))"
.ascii "(putprop (quote load-a-file) (list (quote (1 . 1)) fcn-in-co"
.asciz "mmon1.l) (quote fcn-info))"
.ascii "(funcall (quote sstatus) (list (quote load-search-path) (lis"
.asciz "t (quote \\.) lisp-library-directory)))"
.asciz "include"
.ascii "(putprop (quote include) (list (quote nil) fcn-in-common1.l)"
.asciz " (quote fcn-info))"
.asciz "includef"
.ascii "(putprop (quote includef) (list (quote (1 . 1)) fcn-in-commo"
.asciz "n1.l) (quote fcn-info))"
.asciz "list-to-bignum"
.ascii "(putprop (quote list-to-bignum) (list (quote (1 . 1)) fcn-in"
.asciz "-common1.l) (quote fcn-info))"
.asciz "macroexpand"
.ascii "(putprop (quote macroexpand) (list (quote (1 . 1)) fcn-in-co"
.asciz "mmon1.l) (quote fcn-info))"
.asciz "makhunk"
.ascii "(putprop (quote makhunk) (list (quote (1 . 1)) fcn-in-common"
.asciz "1.l) (quote fcn-info))"
.asciz "member"
.ascii "(putprop (quote member) (list (quote (2 . 2)) fcn-in-common1"
.asciz ".l) (quote fcn-info))"
.asciz "min"
.ascii "(putprop (quote min) (list (quote nil) fcn-in-common1.l) (qu"
.asciz "ote fcn-info))"
.asciz "oddp"
.ascii "(putprop (quote oddp) (list (quote (1 . 1)) fcn-in-common1.l"
.asciz ") (quote fcn-info))"
.asciz "plusp"
.ascii "(putprop (quote plusp) (list (quote (1 . 1)) fcn-in-common1."
.asciz "l) (quote fcn-info))"
.asciz "princ"
.ascii "(putprop (quote princ) (list (quote nil) fcn-in-common1.l) ("
.asciz "quote fcn-info))"
.asciz "prog1"
.ascii "(putprop (quote prog1) (list (quote nil) fcn-in-common1.l) ("
.asciz "quote fcn-info))"
.asciz "reverse"
.ascii "(putprop (quote reverse) (list (quote (1 . 1)) fcn-in-common"
.asciz "1.l) (quote fcn-info))"
.asciz "shell"
.ascii "(putprop (quote shell) (list (quote (0 . 0)) fcn-in-common1."
.asciz "l) (quote fcn-info))"
.asciz "(eval (quote (liszt-declare (special $sldprint))))"
.asciz "(or (boundp (quote $sldprint)) (setq $sldprint t))"
.asciz "(setq sload-print nil)"
.asciz "sl-print"
.ascii "(putprop (quote sl-print) (list (quote nil) fcn-in-common1.l"
.asciz ") (quote fcn-info))"
.asciz "sload"
.ascii "(putprop (quote sload) (list (quote (0)) fcn-in-common1.l) ("
.asciz "quote fcn-info))"
.asciz "(defprop def 1 sloadprintarg)"
.asciz "(defprop defun 1 sloadprintarg)"
.asciz "(defprop setq 1 sloadprintarg)"
.asciz "(defprop declare 1 sloadprintarg)"
.asciz "sort"
.ascii "(putprop (quote sort) (list (quote (2 . 2)) fcn-in-common1.l"
.asciz ") (quote fcn-info))"
.asciz "sortmerge"
.ascii "(putprop (quote sortmerge) (list (quote (2 . 2)) fcn-in-comm"
.asciz "on1.l) (quote fcn-info))"
.asciz "splitlist"
.ascii "(putprop (quote splitlist) (list (quote (2 . 2)) fcn-in-comm"
.asciz "on1.l) (quote fcn-info))"
.asciz "mergelists"
.ascii "(putprop (quote mergelists) (list (quote (2 . 2)) fcn-in-com"
.asciz "mon1.l) (quote fcn-info))"
.asciz "sortcar"
.ascii "(putprop (quote sortcar) (list (quote (2 . 2)) fcn-in-common"
.asciz "1.l) (quote fcn-info))"
.asciz "sortcarhelp"
.ascii "(putprop (quote sortcarhelp) (list (quote (2 . 2)) fcn-in-co"
.asciz "mmon1.l) (quote fcn-info))"
.ascii "(putprop (quote exchange2) (list (quote (1 . 1)) fcn-in-comm"
.asciz "on1.l) (quote fcn-info))"
.asciz "sublis"
.ascii "(putprop (quote sublis) (list (quote (2 . 2)) fcn-in-common1"
.asciz ".l) (quote fcn-info))"
.asciz "sublishelp"
.ascii "(putprop (quote sublishelp) (list (quote (2 . 2)) fcn-in-com"
.asciz "mon1.l) (quote fcn-info))"
.asciz "subst"
.ascii "(putprop (quote subst) (list (quote (3 . 3)) fcn-in-common1."
.asciz "l) (quote fcn-info))"
.asciz "substeq"
.ascii "(putprop (quote substeq) (list (quote (1 . 1)) fcn-in-common"
.asciz "1.l) (quote fcn-info))"
.asciz "substequal"
.ascii "(putprop (quote substequal) (list (quote (1 . 1)) fcn-in-com"
.asciz "mon1.l) (quote fcn-info))"
.asciz "vi"
.ascii "(putprop (quote vi) (list (quote nil) fcn-in-common1.l) (quo"
.asciz "te fcn-info))"
.asciz "vil"
.ascii "(putprop (quote vil) (list (quote nil) fcn-in-common1.l) (qu"
.asciz "ote fcn-info))"
.asciz "(putd (quote *quo) (getd (quote quotient)))"
.asciz "xcons"
.ascii "(putprop (quote xcons) (list (quote (2 . 2)) fcn-in-common1."
.asciz "l) (quote fcn-info))"
lit_end:
.data | this is just for documentation 
.asciz "@(#)Compiled by Liszt 68000 version 8.39a on Fri Dec 15 18:49:21 1989"
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
