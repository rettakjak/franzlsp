	.globl	F00091	|(fcn lambda tpl)
F00091:
	link	a6,#-L00094
	tstb	sp@(-132)
	moveml	#L00095,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00092:
	movl	a3@,a2@+
	movl	_bnp,a1
	movl	a3@(4),a5
	movl	a5@,a1@+
	movl	a3@(4),a1@+
	movl	a3@(4),a5
	movl	a4@,a5@
	movl	a1,_bnp
	movl	a3@(8),a5
	movl	a3@(12),a5@
	movl	a3@(16),a2@+	|(calling putd)
	movl	a3@(20),a0
	movl	a0@(8),a2@+
	cmpl	a0@(8),d7
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(24),a5
	movl	d7,a5@
	movl	a3@(28),a5
	movl	d7,a5@
	movl	a3@(32),a5
	movl	d7,a5@
	movl	a3@(36),a5
	movl	d7,a5@
	movl	a3@(40),a5
	movl	d7,a5@
	movl	a3@(44),a5
	movl	d7,a5@
	movl	a3@(52),a5
	movl	a5@,d6
	movl	a3@(48),a5
	movl	d6,a5@
	movl	a3@(56),a5
	movl	d7,a5@
	movl	a3@(60),a5
	movl	d7,a5@
	movl	a3@(64),a5
	movl	d7,a5@
	movl	a3@(68),a5
	movl	#_nilatom+0x1400+0,a5@
	movl	a3@(72),a5
	movl	#_nilatom+0x1400-4,a5@
	movl	a3@(52),a5
	movl	a5@,d6
	movl	a3@(76),a5
	movl	d6,a5@
	movl	a3@(80),a5
	movl	#_nilatom+0x1400+40,a5@
	movl	a3@(84),a5
	movl	d7,a5@
	movl	a3@(88),a5
	movl	#_nilatom+0x1400+0,a5@
	movl	a3@(92),a5
	movl	#_nilatom+0x1400+0,a5@
	movl	d7,a2@+	|(beginning do)
L00096:
	cmpl	d7,d7
	jeq	L00097
	movl	d7,d0
	jra	L00098
L00097:
	movl	a3@(96),d0
	movl	d7,sp@-
	movl	d0,sp@-
	movl	#2,sp@-
	movl	a2,_np
	movl	a2,_lbot
	jbsr	_qpushframe
	movl	d0,_errp
	tstl	_retval
	jeq	L00100
	movl	_lispretval,d0
	jra	L00099
L00100:
	movl	d7,a2@+	|(calling tpl-break-function)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00099:
	movl	_errp,a5
	movl	a5@(12),_errp
	movl	a5,sp
	addl	#32,sp
	movl	d0,a4@(4)
	jra	L00096
L00098:
	subql	#4,a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subql	#4,a2
	moveml	a6@(-24),#L00095
	unlk	a6
	rts
L00095 = 15552
L00094 = 24
	.globl	F00101	|(fcn lambda do-one-transaction)
F00101:
	link	a6,#-L00104
	tstb	sp@(-132)
	moveml	#L00105,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00102:
	movl	d7,a2@+
	movl	a4@(4),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	a4@(8),d7
	jeq	L00107
	movl	a3@(52),a5
	movl	a5@,d0
	movl	d0,sp@-
	movl	a3@(100),sp@-
	movl	#2,sp@-
	movl	a2,_np
	movl	a2,_lbot
	jbsr	_qpushframe
	movl	d0,_errp
	tstl	_retval
	jeq	L00109
	movl	_lispretval,d0
	jra	L00108
L00109:
	movl	d7,a2@+	|(calling ntpl-read)
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
L00108:
	movl	_errp,a5
	movl	a5@(12),_errp
	movl	a5,sp
	addl	#32,sp
	movl	d0,a0
	movl	a0@(4),a4@
	movl	a4@(8),d6
	cmpl	a4@,d6
	jne	L00111
	movl	a3@(104),a2@+	|(calling status)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00113
	movl	a3@(108),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(112),a4@
	jra	L00112
L00113:
	lea	a2@,a5	|(calling exit)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@,a2
L00112:
	jra	L00110
L00111:
	movl	d7,d0
L00110:
	jra	L00106
L00107:
	movl	a4@,a2@+	|(calling tpl-history-form-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
L00106:
	movl	a4@,a2@+	|(calling add-to-given-history)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(116),a2@+
	movl	a4@,a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00115
	movl	a3@(52),a5
	movl	a5@,d6
	movl	a3@(48),a5
	movl	d6,a5@
	movl	a3@(84),a5
	cmpl	a5@,d7
	jeq	L00117
	movl	a4@,a5	|(calling tpl-evalhook)
	movl	a5@,a2@+
	movl	a3@(120),a2@+
	movl	a3@(124),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00116
L00117:
	movl	a4@,a5	|(calling tpl-eval)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00116:
	movl	d0,a4@(12)
	movl	a3@(52),a5
	movl	a5@,d6
	movl	a3@(48),a5
	movl	d6,a5@
	jra	L00114
L00115:
	movl	a4@,a5	|(calling process-fcn)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(12)
	movl	a3@(56),a5
	cmpl	a5@,d7
	jne	L00118
	movl	a3@(48),a5
	movl	a3@(52),a5@
	jra	L00119
L00118:
	movl	a3@(48),a5
	movl	d7,a5@
L00119:
L00114:
	movl	a4@(12),a2@+	|(calling add-to-res-history)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(12),a2@+	|(calling ntpl-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	subl	#16,a2
	moveml	a6@(-24),#L00105
	unlk	a6
	rts
L00105 = 15552
L00104 = 24
	.globl	F00120	|(fcn lambda ntpl-read)
F00120:
	link	a6,#-L00123
	tstb	sp@(-132)
	moveml	#L00124,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00121:
	movl	d7,a2@+
L00125:	|(beginning do)
	movl	a4@,a2@+	|(calling tyipeek)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(8)
	movl	a4@(8),d0
	cmpl	#_nilatom+0x1400+128,d0
	jeq	L00126
	cmpl	#_nilatom+0x1400+40,a4@(8)
	jeq	L00126
	movl	d7,d0
	jra	L00127
L00126:
	lea	a2@,a5	|(calling tyi)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a4@(8)
	jra	L00125
L00127:
	cmpl	#_nilatom+0x1400-4,a4@(8)
	jne	L00130
	movl	a4@(4),d0
	jra	L00129
L00130:
	movl	a4@,a2@+	|(calling tyi)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(8)
	movl	a4@(8),d6
	movl	a3@(128),a5
	cmpl	a5@,d6
	jne	L00132
	movl	#_nilatom+0x1400+160,a2@+	|(beginning do)
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
L00133:
	movl	#_nilatom+0x1400-4,a2@+
	movl	a4@(12),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jeq	L00136
	movl	#_nilatom+0x1400+40,a2@+
	movl	a4@(12),a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00134
L00136:
	movl	a3@(132),a2@+
	movl	a3@(52),a5
	movl	a5@,d0
	movl	d0,sp@-
	movl	a3@(100),sp@-
	movl	#2,sp@-
	movl	a2,_np
	movl	a2,_lbot
	jbsr	_qpushframe
	movl	d0,_errp
	tstl	_retval
	jeq	L00138
	movl	_lispretval,d0
	jra	L00137
L00138:
	movl	#_nilatom+0x1400+164,a2@+	|(calling readlist)
	|(calling nreverse)
	movl	a4@(12),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+136,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+144,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
L00137:
	movl	_errp,a5
	movl	a5@(12),_errp
	movl	a5,sp
	addl	#32,sp
	movl	d0,a0
	movl	a0@(4),a2@+
	jbsr	_qcons
	jra	L00135
L00134:
	lea	a2@,a5	|(calling tyi)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	jra	L00133
L00135:
	subql	#4,a2
	jra	L00131
L00132:
	movl	a4@(8),a2@+	|(calling untyi)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(116),a2@+
	movl	a4@,a2@+	|(calling read)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+160,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
L00131:
L00129:
	subl	#12,a2
	moveml	a6@(-24),#L00124
	unlk	a6
	rts
L00124 = 15552
L00123 = 24
	.globl	F00139	|(fcn lambda tpl-history-form-print)
F00139:
	link	a6,#-L00142
	tstb	sp@(-132)
	moveml	#L00143,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00140:
	movl	a3@(116),a2@+
	movl	a4@,a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00145
	movl	a4@,a5	|(calling print)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00144
L00145:
	movl	a3@(136),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d7,a2@+
	movl	a4@,a5	|(beginning do)
	movl	a5@,a4@(4)
	movl	a4@(4),a2@+
L00148:
	cmpl	a4@(8),d7
	jne	L00149
	movl	d7,d0
	jra	L00150
L00149:
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	a4@(12),a2@+	|(calling print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(140),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	movl	a4@(8),a5
	movl	a5@,a4@(8)
	jra	L00148
L00150:
	subql	#4,a2
	movl	a4@(4),d0
	subql	#4,a2
L00144:
	subql	#4,a2
	moveml	a6@(-24),#L00143
	unlk	a6
	rts
L00143 = 15552
L00142 = 24
	.globl	F00151	|(fcn lambda ntpl-print)
F00151:
	link	a6,#-L00154
	tstb	sp@(-132)
	moveml	#L00155,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00152:
	movl	a3@(144),a5
	cmpl	a5@,d7
	jeq	L00157
	movl	a3@(144),a5
	movl	a5@,a0
	cmpl	a0@(8),d7
	jeq	L00157
	movl	a3@(144),a5
	movl	a5@,a2@+
	movl	a4@,a2@+
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00160
	movl	a4@(4),a1
	cmpl	a1@(8),d7
	jeq	L00160
	movl	a4@(4),a1
	movl	a1@(8),a4@(4)
	cmpl	a1@(8),d7
	jra	L00159
L00160:
	movl	d7,d0
L00159:
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00163
	movl	a3@(148),a2@+
	movl	a4@(4),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00163
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-8),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00162
L00163:
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+176,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00162:
	jra	L00156
L00157:
	movl	a4@,a2@+	|(calling print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00156:
	subql	#4,a2
	moveml	a6@(-24),#L00155
	unlk	a6
	rts
L00155 = 15552
L00154 = 24
	.globl	F00165	|(fcn lambda process-fcn)
F00165:
	link	a6,#-L00168
	tstb	sp@(-132)
	moveml	#L00169,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00166:
	movl	a4@,a1
	movl	a1@(4),a2@+
	movl	a3@(56),a5
	movl	d7,a5@
	movl	a3@(152),a5	|(beginning do)
	movl	a5@,a2@+
	movl	d7,a2@+
L00170:
	cmpl	a4@(8),d7
	jne	L00171
	movl	a3@(156),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00172
L00171:
	movl	a4@(8),a1
	movl	a1@(4),a0
	movl	a0@(4),a4@(12)
	movl	a4@(12),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00176
	movl	a4@(4),d6
	cmpl	a4@(12),d6
	jeq	L00175
L00176:
	movl	a4@(12),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00174
	movl	a4@(4),d5
	movl	a4@(12),d0
	cmpl	d0,d7
	jeq	L00174
	movl	d0,a0
L00179:
	cmpl	a0@(4),d5
	jeq	L00178
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00179
	movl	a0,d0
	jra	L00174
L00178:
L00175:
	movl	a4@(8),a1	|(calling tpl-funcall)
	movl	a1@(4),a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+184,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00172
|	jra	L00173
L00174:
	movl	d7,d0
L00173:
	movl	a4@(8),a5
	movl	a5@,a4@(8)
	jra	L00170
L00172:
	subl	#16,a2
	moveml	a6@(-28),#L00169
	unlk	a6
	rts
L00169 = 15584
L00168 = 28
	.globl	F00180	|(fcn lambda tpl-command-help)
F00180:
	link	a6,#-L00183
	tstb	sp@(-132)
	moveml	#L00184,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00181:
	movl	a3@(52),a5
	movl	a5@,d6
	movl	a3@(56),a5
	movl	d6,a5@
	movl	a4@,a5
	cmpl	a5@,d7
	jeq	L00186
	movl	a3@(152),a5	|(beginning do)
	movl	a5@,a2@+
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
L00187:
	cmpl	a4@(4),d7
	jne	L00188
	movl	a3@(160),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00189
L00188:
	movl	a4@(4),a1
	movl	a1@(4),a0
	movl	a0@(4),a4@(12)
	movl	a4@(12),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00193
	movl	a4@(8),d6
	cmpl	a4@(12),d6
	jeq	L00192
L00193:
	movl	a4@(12),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00191
	movl	a4@(8),d5
	movl	a4@(12),d0
	cmpl	d0,d7
	jeq	L00191
	movl	d0,a0
L00196:
	cmpl	a0@(4),d5
	jeq	L00195
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00196
	movl	a0,d0
	jra	L00191
L00195:
L00192:
	movl	a4@(4),a1	|(beginning do)
	movl	a1@(4),a5
	movl	a5@,a0
	movl	a0@,a5
	movl	a5@,a2@+
L00197:
	cmpl	a4@(16),d7
	jne	L00198
	movl	d7,d0
	jra	L00199
L00198:
	movl	a4@(16),a1	|(calling patom)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a4@(16),a5
	movl	a5@,a4@(16)
	jra	L00197
L00199:
	subql	#4,a2
	jra	L00189
|	jra	L00190
L00191:
	movl	d7,d0
L00190:
	movl	a4@(4),a5
	movl	a5@,a4@(4)
	jra	L00187
L00189:
	subl	#12,a2
	jra	L00185
L00186:
	movl	d7,a2@+
	movl	a3@(152),a5	|(beginning do)
	movl	a5@,a4@(4)
	movl	a4@(4),a2@+
L00202:
	cmpl	a4@(8),d7
	jne	L00203
	movl	d7,d0
	jra	L00204
L00203:
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	a4@(12),a1
	movl	a1@(4),a2@+
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00206
	movl	a4@(16),a1	|(calling patom)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d7,a2@+
	movl	a4@(16),a5	|(beginning do)
	movl	a5@,a4@(20)
	movl	a4@(20),a2@+
L00209:
	cmpl	a4@(24),d7
	jne	L00210
	movl	d7,d0
	jra	L00211
L00210:
	movl	a4@(24),a1
	movl	a1@(4),a2@+
	movl	a3@(164),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(28),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	movl	a4@(24),a5
	movl	a5@,a4@(24)
	jra	L00209
L00211:
	subql	#8,a2
	jra	L00205
L00206:
	movl	a4@(16),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00205:
	movl	a4@(12),a5	|(calling patom)
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	subql	#8,a2
	movl	a4@(8),a5
	movl	a5@,a4@(8)
	jra	L00202
L00204:
	subql	#8,a2
L00185:
	movl	d7,d0
	subql	#4,a2
	moveml	a6@(-28),#L00184
	unlk	a6
	rts
L00184 = 15584
L00183 = 28
	.globl	F00212	|(fcn lambda tpl-command-load)
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
	movl	a5@,a4@
	cmpl	a4@,d7
	jeq	L00218
	movl	a3@(168),a5
	movl	a4@,a5@
	movl	d7,a2@+
	movl	a4@,a4@(4)	|(beginning do)
	movl	a4@(4),a2@+
L00221:
	cmpl	a4@(8),d7
	jne	L00222
	movl	d7,d0
	jra	L00223
L00222:
	movl	a4@(8),a1	|(calling load)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+192,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(8),a5
	movl	a5@,a4@(8)
	jra	L00221
L00223:
	subql	#4,a2
	movl	a4@(4),d0
	subql	#4,a2
	jra	L00217
L00218:
	movl	a3@(168),a5
	cmpl	a5@,d7
	jeq	L00224
	movl	d7,a2@+
	movl	a3@(168),a5	|(beginning do)
	movl	a5@,a4@(4)
	movl	a4@(4),a2@+
L00227:
	cmpl	a4@(8),d7
	jne	L00228
	movl	d7,d0
	jra	L00229
L00228:
	movl	a4@(8),a1	|(calling load)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+192,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(8),a5
	movl	a5@,a4@(8)
	jra	L00227
L00229:
	subql	#4,a2
	movl	a4@(4),d0
	subql	#4,a2
	jra	L00217
L00224:
	movl	a3@(172),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
L00217:
	subql	#4,a2
	moveml	a6@(-20),#L00216
	unlk	a6
	rts
L00216 = 15488
L00215 = 20
	.globl	F00230	|(fcn lambda tpl-command-trace)
F00230:
	link	a6,#-L00233
	tstb	sp@(-132)
	moveml	#L00234,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00231:
	movl	a4@,a5
	movl	a5@,a4@
	movl	a3@(176),a2@+	|(calling apply)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#4,a2
	moveml	a6@(-20),#L00234
	unlk	a6
	rts
L00234 = 15488
L00233 = 20
	.globl	F00235	|(fcn lambda tpl-command-state)
F00235:
	link	a6,#-L00238
	tstb	sp@(-132)
	moveml	#L00239,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00236:
	movl	a3@(180),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(32),a5	|(calling msg-print)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(184),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(84),a5	|(calling msg-print)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(188),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(192),a5	|(calling msg-print)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(196),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(200),a2@+	|(calling msg-print)
	|(calling status)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(204),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(208),a5	|(calling msg-print)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(212),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(216),a5	|(calling msg-print)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	subql	#4,a2
	moveml	a6@(-20),#L00239
	unlk	a6
	rts
L00239 = 15488
L00238 = 20
	.globl	F00240	|(fcn lambda tpl-command-debug)
F00240:
	link	a6,#-L00243
	tstb	sp@(-132)
	moveml	#L00244,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00241:
	movl	a3@(220),d5
	movl	a4@,a5
	movl	a5@,d0
	cmpl	d0,d7
	jeq	L00246
	movl	d0,a0
L00248:
	cmpl	a0@(4),d5
	jeq	L00247
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00248
	movl	a0,d0
	jra	L00246
L00247:
	movl	d7,a2@+	|(calling *rset)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(224),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(32),a5
	movl	d7,a5@
	movl	a3@(32),a5
	movl	a5@,d0
	jra	L00245
L00246:
	movl	a3@(52),a5	|(calling *rset)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(228),a2@+	|(calling sstatus)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+216,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(232),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(52),a5
	movl	a5@,d6
	movl	a3@(32),a5
	movl	d6,a5@
	movl	a3@(32),a5
	movl	a5@,d0
L00245:
	subql	#4,a2
	moveml	a6@(-28),#L00244
	unlk	a6
	rts
L00244 = 15584
L00243 = 28
	.globl	F00249	|(fcn lambda tpl-command-fast)
F00249:
	link	a6,#-L00252
	tstb	sp@(-132)
	moveml	#L00253,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00250:
	movl	d7,a2@+	|(calling *rset)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(32),a5
	movl	d7,a5@
	movl	a3@(236),a2@+	|(calling sstatus)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+216,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(52),a5
	movl	a5@,d6
	movl	a3@(240),a5
	movl	d6,a5@
	movl	a3@(240),a5
	movl	a5@,d0
	subql	#4,a2
	moveml	a6@(-24),#L00253
	unlk	a6
	rts
L00253 = 15552
L00252 = 24
	.globl	F00254	|(fcn lambda tpl-command-zoom)
F00254:
	link	a6,#-L00257
	tstb	sp@(-132)
	moveml	#L00258,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00255:
	lea	a2@,a5	|(calling tpl-update-stack)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(52),a5
	movl	a5@,d6
	movl	a3@(56),a5
	movl	d6,a5@
	lea	a2@,a5	|(calling tpl-zoom)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+232,a5
	jbsr	a5@
	lea	a2@,a2
	subql	#4,a2
	moveml	a6@(-24),#L00258
	unlk	a6
	rts
L00258 = 15552
L00257 = 24
	.globl	F00259	|(fcn lambda tpl-command-down)
F00259:
	link	a6,#-L00262
	tstb	sp@(-132)
	moveml	#L00263,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00260:
	movl	a3@(52),a5
	movl	a5@,d6
	movl	a3@(56),a5
	movl	d6,a5@
	movl	#_nilatom+0x1400+4,a2@+
	movl	a4@,a5
	movl	a5@,a1
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
	andw	#516,d0
	jeq	L00265
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@(4),a0
	movl	a0@,d0
	cmpl	#0,d0
	jle	L00265
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a4@(4)
	jra	L00264
L00265:
	movl	d7,d0
L00264:
	movl	a4@(4),a2@+	|(beginning do)
L00269:
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@(8),d6
	jne	L00270
	movl	d7,d0
	jra	L00271
L00270:
	movl	a3@(44),a5
	cmpl	a5@,d7
	jeq	L00273
	movl	a3@(44),a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	movl	a3@(40),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	a3@(40),a5
	movl	d0,a5@
	movl	a3@(44),a5
	movl	a5@,a0
	movl	a3@(44),a5
	movl	a0@,a5@
	jra	L00272
L00273:
	movl	d7,d0
L00272:
	cmpl	#_nilatom+0x1400-4096,a4@(8)
	jle	L00274
	cmpl	#_nilatom+0x1400+4092,a4@(8)
	jle	L00275
L00274:
	movl	a4@(8),a0
	jbsr	_qoneminus
	movl	d0,a4@(8)
	jra	L00276
L00275:
	movl	a4@(8),d0
	subql	#4,d0
	movl	d0,a4@(8)
L00276:
	jra	L00269
L00271:
	subql	#4,a2	|(calling tpl-command-zoom)
	movl	d7,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#8,a2
	moveml	a6@(-24),#L00263
	unlk	a6
	rts
L00263 = 15552
L00262 = 24
	.globl	F00277	|(fcn lambda tpl-command-up)
F00277:
	link	a6,#-L00280
	tstb	sp@(-132)
	moveml	#L00281,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00278:
	movl	a3@(52),a5
	movl	a5@,d6
	movl	a3@(56),a5
	movl	d6,a5@
	movl	#_nilatom+0x1400+4,a2@+
	movl	a4@,a5
	movl	a5@,a1
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
	andw	#516,d0
	jeq	L00283
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@(4),a0
	movl	a0@,d0
	cmpl	#0,d0
	jle	L00283
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a4@(4)
	jra	L00282
L00283:
	movl	d7,d0
L00282:
	movl	a4@(4),a2@+	|(beginning do)
L00287:
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@(8),d6
	jne	L00288
	movl	d7,d0
	jra	L00289
L00288:
	movl	a3@(40),a5
	cmpl	a5@,d7
	jeq	L00291
	movl	a3@(40),a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	movl	a3@(44),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	a3@(44),a5
	movl	d0,a5@
	movl	a3@(40),a5
	movl	a5@,a0
	movl	a3@(40),a5
	movl	a0@,a5@
	jra	L00290
L00291:
	movl	d7,d0
L00290:
	cmpl	#_nilatom+0x1400-4096,a4@(8)
	jle	L00292
	cmpl	#_nilatom+0x1400+4092,a4@(8)
	jle	L00293
L00292:
	movl	a4@(8),a0
	jbsr	_qoneminus
	movl	d0,a4@(8)
	jra	L00294
L00293:
	movl	a4@(8),d0
	subql	#4,d0
	movl	d0,a4@(8)
L00294:
	jra	L00287
L00289:
	subql	#4,a2	|(calling tpl-command-zoom)
	movl	d7,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#8,a2
	moveml	a6@(-24),#L00281
	unlk	a6
	rts
L00281 = 15552
L00280 = 24
	.globl	F00295	|(fcn lambda tpl-command-ev)
F00295:
	link	a6,#-L00298
	tstb	sp@(-132)
	moveml	#L00299,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00296:
	movl	a4@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00301
	movl	a3@(244),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00300
L00301:
	movl	a3@(44),a5
	cmpl	a5@,d7
	jne	L00302
	movl	a3@(248),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00300
L00302:
	movl	a3@(52),a5
	movl	a5@,d0
	movl	d0,sp@-
	movl	a3@(100),sp@-
	movl	#2,sp@-
	movl	a2,_np
	movl	a2,_lbot
	jbsr	_qpushframe
	movl	d0,_errp
	tstl	_retval
	jeq	L00305
	movl	_lispretval,d0
	jra	L00304
L00305:
	movl	a4@(4),a2@+	|(calling eval)
	movl	a3@(44),a5
	movl	a5@,a0
	movl	a0@(4),a0
	movl	a0@,a5
	movl	a5@,a1
	movl	a1@,a1
	movl	a1@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+248,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
L00304:
	movl	_errp,a5
	movl	a5@(12),_errp
	movl	a5,sp
	addl	#32,sp
	movl	d0,a0
	movl	a0@(4),a2@+
	movl	a3@(52),a5
	movl	a5@,d6
	movl	a3@(56),a5
	movl	d6,a5@
	movl	a4@(8),d0
	subql	#4,a2
L00300:
	subql	#8,a2
	moveml	a6@(-24),#L00299
	unlk	a6
	rts
L00299 = 15552
L00298 = 24
	.globl	F00306	|(fcn lambda tpl-command-pp)
F00306:
	link	a6,#-L00309
	tstb	sp@(-132)
	moveml	#L00310,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00307:
	movl	a3@(44),a5	|(calling pp-form)
	movl	a5@,a0
	movl	a0@(4),a0
	movl	a0@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+256,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d7,d0
	subql	#4,a2
	moveml	a6@(-20),#L00310
	unlk	a6
	rts
L00310 = 15488
L00309 = 20
	.globl	F00311	|(fcn lambda most-recent-given)
F00311:
	link	a6,#-L00314
	tstb	sp@(-132)
	moveml	#L00315,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00312:
	movl	a3@(24),a5
	movl	a5@,a0
	movl	a0@(4),d0
	moveml	a6@(-20),#L00315
	unlk	a6
	rts
L00315 = 15488
L00314 = 20
	.globl	F00316	|(fcn lambda add-to-given-history)
F00316:
	link	a6,#-L00319
	tstb	sp@(-132)
	moveml	#L00320,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00317:
	movl	a4@,a2@+
	movl	a3@(24),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	a3@(24),a5
	movl	d0,a5@
	movl	d7,a2@+
	movl	a3@(28),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	a3@(28),a5
	movl	d0,a5@
	movl	a4@,a1
	movl	a1@(4),d0
	cmpl	a3@(252),d0
	jeq	L00322
	movl	a3@(68),a5
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00323
	movl	a3@(68),a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	a3@(68),a5
	movl	d0,a5@
	jra	L00324
L00323:
	movl	a3@(68),a5
	movl	a5@,d0
	addql	#4,d0
	movl	a3@(68),a5
	movl	d0,a5@
L00324:
	movl	a3@(68),a5
	movl	a5@,d0
	jra	L00321
L00322:
	movl	d7,d0
L00321:
	subql	#4,a2
	moveml	a6@(-20),#L00320
	unlk	a6
	rts
L00320 = 15488
L00319 = 20
	.globl	F00325	|(fcn lambda add-to-res-history)
F00325:
	link	a6,#-L00328
	tstb	sp@(-132)
	moveml	#L00329,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00326:
	movl	a4@,a2@+
	movl	a3@(28),a5
	movl	a5@,a0
	movl	a0@,a2@+
	jbsr	_qcons
	movl	a3@(28),a5
	movl	d0,a5@
	movl	a3@(256),a5
	movl	a4@,a5@
	movl	a3@(256),a5
	movl	a5@,d0
	subql	#4,a2
	moveml	a6@(-20),#L00329
	unlk	a6
	rts
L00329 = 15488
L00328 = 20
	.globl	F00330	|(fcn lambda tpl-update-stack)
F00330:
	link	a6,#-L00333
	tstb	sp@(-132)
	moveml	#L00334,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00331:
	movl	a3@(48),a5
	cmpl	a5@,d7
	jeq	L00336
	movl	a3@(260),a2@+	|(calling tpl-yorn)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+264,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jeq	L00338
	lea	a2@,a5	|(calling tpl-gentrace)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+272,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00337
L00338:
	movl	a3@(264),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(48),a5
	movl	d7,a5@
	movl	a3@(48),a5
	movl	a5@,d0
L00337:
	jra	L00335
L00336:
	movl	d7,d0
L00335:
	moveml	a6@(-20),#L00334
	unlk	a6
	rts
L00334 = 15488
L00333 = 20
	.globl	F00339	|(fcn lambda tpl-gentrace)
F00339:
	link	a6,#-L00342
	tstb	sp@(-132)
	moveml	#L00343,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00340:
	lea	a2@,a5	|(calling tpl-getframelist)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+280,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	movl	a4@,a2@+	|(calling nreverse)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+136,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@
	movl	a4@,a2@+	|(beginning do)
	movl	a3@(76),a5
	cmpl	a5@,d7
	jeq	L00347
	movl	d7,d0
	jra	L00346
L00347:
	movl	a3@(52),a5
	movl	a5@,d0
L00346:
	movl	d0,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
L00344:
	cmpl	a4@(4),d7
	jne	L00345
	movl	a4@(16),a2@+	|(calling nreverse)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+136,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(44),a5
	movl	d0,a5@
	movl	a3@(44),a5
	movl	a5@,d0
	jra	L00348
L00345:
	movl	a4@(4),a1
	movl	a1@(4),a0
	movl	a0@,a5
	movl	a5@,a1
	movl	a1@(4),a4@(20)
	movl	a4@(20),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00350
	movl	a3@(76),a5
	cmpl	a5@,d7
	jeq	L00352
	movl	a4@(20),a0
	movl	a0@(4),d5
	movl	a3@(268),d0
	cmpl	d0,d7
	jeq	L00352
	movl	d0,a0
L00355:
	cmpl	a0@(4),d5
	jeq	L00354
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00355
	movl	a0,d0
	jra	L00352
L00354:
	movl	d7,a4@(8)
	jra	L00351
L00352:
	movl	d7,d0
L00351:
	jra	L00349
L00350:
	movl	d7,d0
L00349:
	movl	a4@(20),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00357
	movl	a3@(76),a5
	cmpl	a5@,d7
	jeq	L00359
	movl	a4@(20),a1
	movl	a1@(4),d5
	movl	a3@(272),d0
	cmpl	d0,d7
	jeq	L00359
	movl	d0,a0
L00362:
	cmpl	a0@(4),d5
	jeq	L00361
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00362
	movl	a0,d0
	jra	L00359
L00361:
	movl	a3@(52),a5
	movl	a5@,a4@(12)
	jra	L00358
L00359:
	movl	d7,d0
L00358:
	jra	L00356
L00357:
	movl	d7,d0
L00356:
	cmpl	a4@(8),d7
	jeq	L00364
	cmpl	a4@(12),d7
	jne	L00364
	movl	a4@(4),a1
	movl	a1@(4),a2@+
	movl	a4@(16),a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	jra	L00363
L00364:
	movl	d7,d0
L00363:
	movl	a4@(20),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00367
	movl	a3@(76),a5
	cmpl	a5@,d7
	jeq	L00369
	movl	a4@(20),a1
	movl	a1@(4),d0
	cmpl	a3@(276),d0
	jne	L00369
	movl	a3@(52),a5
	movl	a5@,a4@(8)
	jra	L00368
L00369:
	movl	d7,d0
L00368:
	jra	L00366
L00367:
	movl	d7,d0
L00366:
	movl	a4@(4),a5
	movl	a5@,a2@+
	movl	d7,a4@(12)
	movl	a2@-,a4@(4)
	jra	L00344
L00348:
	subl	#24,a2
	movl	a3@(40),a5
	movl	d7,a5@
	movl	a3@(40),a5
	movl	a5@,d0
	subql	#4,a2
	moveml	a6@(-24),#L00343
	unlk	a6
	rts
L00343 = 15520
L00342 = 24
	.globl	F00371	|(fcn lambda tpl-getframelist)
F00371:
	link	a6,#-L00374
	tstb	sp@(-132)
	moveml	#L00375,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00372:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a3@(192),a5
	cmpl	a5@,d7
	jeq	L00377
	movl	d7,a2@+	|(calling evalframe)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+288,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(4)
	movl	a4@(4),a5	|(calling evalframe)
	movl	a5@,a1
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+288,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(4)
	movl	a4@(4),a5	|(beginning do)
	|(calling evalframe)
	movl	a5@,a1
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+288,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
L00378:
	movl	a4@(8),a1
	cmpl	a1@(4),d7
	jne	L00379
	movl	a4@(8),a5
	movl	a5@,d0
	jra	L00380
L00379:
	movl	a4@(8),a0	|(calling evalframe)
	movl	a0@(4),a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+288,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(8),a2@+
	jbsr	_qcons
	movl	d0,a4@(8)
	jra	L00378
L00380:
	subql	#4,a2
	jra	L00376
L00377:
	movl	d7,d0
L00376:
	subql	#8,a2
	moveml	a6@(-20),#L00375
	unlk	a6
	rts
L00375 = 15488
L00374 = 20
	.globl	F00381	|(fcn lambda tpl-printframelist)
F00381:
	link	a6,#-L00384
	tstb	sp@(-132)
	moveml	#L00385,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00382:
	cmpl	a4@(4),d7
	jne	L00387
	cmpl	a4@,d7
	jeq	L00389
	movl	a3@(280),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00388
L00389:
	movl	a3@(284),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
L00388:
	jra	L00386
L00387:
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@(8),d6
	jne	L00390
	movl	a3@(288),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(4),a2@+	|(calling msg-print)
	|(calling length)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+296,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(292),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00386
L00390:
	cmpl	a4@,d7
	jne	L00392
	movl	a4@,a2@+	|(calling tpl-printframelist)
	movl	a4@(4),a5
	movl	a5@,a2@+
	cmpl	#_nilatom+0x1400-4096,a4@(8)
	jle	L00393
	cmpl	#_nilatom+0x1400+4092,a4@(8)
	jle	L00394
L00393:
	movl	a4@(8),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00395
L00394:
	movl	a4@(8),d0
	subql	#4,d0
	movl	d0,a2@+
L00395:
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+304,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00391
L00392:
	movl	d7,d0
L00391:
	movl	a3@(216),a5
	movl	a5@,a2@+
	movl	a3@(208),a5
	movl	a5@,a2@+
	movl	_bnp,a1
	movl	a3@(296),a5
	movl	a5@,a1@+
	movl	a3@(296),a1@+
	movl	a3@(296),a5
	movl	a4@(16),a5@
	movl	a3@(300),a5
	movl	a5@,a1@+
	movl	a3@(300),a1@+
	movl	a3@(300),a5
	movl	a4@(12),a5@
	movl	a1,_bnp
	movl	a3@(304),a2@+
	movl	a4@(4),a1
	movl	a1@(4),a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00397
	movl	a3@(308),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00396
L00397:
	movl	d7,d0
L00396:
	movl	a4@(4),a1	|(calling print)
	movl	a1@(4),a0
	movl	a0@,a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1,_bnp
	subl	#16,_bnp
	subql	#8,a2
	cmpl	a4@,d7
	jeq	L00399
	movl	a4@,a2@+	|(calling tpl-printframelist)
	movl	a4@(4),a5
	movl	a5@,a2@+
	cmpl	#_nilatom+0x1400-4096,a4@(8)
	jle	L00400
	cmpl	#_nilatom+0x1400+4092,a4@(8)
	jle	L00401
L00400:
	movl	a4@(8),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00402
L00401:
	movl	a4@(8),d0
	subql	#4,d0
	movl	d0,a2@+
L00402:
	movl	_lbot,a5
	movl	a4,a5
	movl	a2@(-12),a5@
	movl	a2@(-8),a5@(4)
	movl	a2@(-4),a5@(8)
	movl	a5,a2
	addl	#12,a2
	jra	L00382
|	jra	L00398
L00399:
	movl	d7,d0
L00398:
L00386:
	subl	#12,a2
	moveml	a6@(-24),#L00385
	unlk	a6
	rts
L00385 = 15552
L00384 = 24
	.globl	F00403	|(fcn lambda tpl-zoom)
F00403:
	link	a6,#-L00406
	tstb	sp@(-132)
	moveml	#L00407,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00404:
	movl	d7,a2@+	|(calling tpl-printframelist)
	movl	a3@(40),a5
	movl	a5@,a2@+
	movl	#_nilatom+0x1400+16,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+304,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	a3@(312),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(52),a5	|(calling tpl-printframelist)
	movl	a5@,a2@+
	movl	a3@(44),a5
	movl	a5@,a2@+
	movl	#_nilatom+0x1400+16,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+304,a5
	jbsr	a5@
	lea	a2@(-12),a2
	moveml	a6@(-20),#L00407
	unlk	a6
	rts
L00407 = 15488
L00406 = 20
	.globl	F00412	|(fcn lambda tpl-break-function)
F00412:
	link	a6,#-L00415
	tstb	sp@(-132)
	moveml	#L00416,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00413:
	lea	a2@,a5	|(beginning do)
	|(calling most-recent-given)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	movl	a4@,a2@+
	movl	d7,a2@+
	movl	a3@(72),a5
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00419
	movl	a3@(72),a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	d0,a2@+
	jra	L00420
L00419:
	movl	a3@(72),a5
	movl	a5@,d0
	addql	#4,d0
	movl	d0,a2@+
L00420:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a3@(316),a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	_bnp,a1
	movl	a3@(320),a5
	movl	a5@,a1@+
	movl	a3@(320),a1@+
	movl	a3@(320),a5
	movl	a4@(36),a5@
	movl	a3@(72),a5
	movl	a5@,a1@+
	movl	a3@(72),a1@+
	movl	a3@(72),a5
	movl	a4@(16),a5@
	movl	a3@(64),a5
	movl	a5@,a1@+
	movl	a3@(64),a1@+
	movl	a3@(64),a5
	movl	a4@(8),a5@
	movl	a3@(60),a5
	movl	a5@,a1@+
	movl	a3@(60),a1@+
	movl	a3@(60),a5
	movl	a4@(4),a5@
	movl	a1,_bnp
L00417:
	cmpl	d7,d7
	jeq	L00418
	movl	d7,d0
	jra	L00421
L00418:
	movl	a4@(32),d6
	cmpl	a3@(316),d6
	jne	L00423
	movl	a4@,a1
	movl	a1@(4),d5
	movl	a3@(324),d0
	cmpl	d0,d7
	jeq	L00425
	movl	d0,a0
L00427:
	cmpl	a0@(4),d5
	jeq	L00426
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00427
	movl	a0,d0
	jra	L00425
L00426:
	movl	a4@,a0
	movl	a0@(4),d0
	cmpl	a3@(328),d0
	jne	L00429
	movl	a3@(332),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00428
L00429:
	movl	a3@(336),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00428:
	movl	a4@,a5	|(calling patom)
	movl	a5@,a0
	movl	a0@,a5
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d7,a2@+
	movl	a4@,a5	|(beginning do)
	movl	a5@,a0
	movl	a0@,a5
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@,a4@(44)
	movl	a4@(44),a2@+
L00432:
	cmpl	a4@(48),d7
	jne	L00433
	movl	d7,d0
	jra	L00434
L00433:
	movl	a4@(48),a1
	movl	a1@(4),a2@+
	movl	a3@(340),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(52),a2@+	|(calling print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	movl	a4@(48),a5
	movl	a5@,a4@(48)
	jra	L00432
L00434:
	subql	#8,a2	|(calling terpr)
	lea	a2@,a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a3@(344),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(60),a5	|(calling msg-print)
	movl	a5@,a0
	movl	a0@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00424
L00425:
	movl	a3@(348),a2@+
	movl	a4@,a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00435
	movl	a3@(352),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@,a5	|(calling patom)
	movl	a5@,a1
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d7,a2@+
	movl	a4@,a5	|(beginning do)
	movl	a5@,a1
	movl	a1@,a4@(44)
	movl	a4@(44),a2@+
L00438:
	cmpl	a4@(48),d7
	jne	L00439
	movl	d7,d0
	jra	L00440
L00439:
	movl	a4@(48),a1
	movl	a1@(4),a2@+
	movl	a3@(356),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(52),a2@+	|(calling print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	movl	a4@(48),a5
	movl	a5@,a4@(48)
	jra	L00438
L00440:
	subql	#8,a2
	jra	L00424
L00435:
	movl	d7,d0
L00424:
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	movl	a4@,a1
	movl	a1@(4),d5
	movl	a3@(364),d0
	cmpl	d0,d7
	jeq	L00443
	movl	d0,a0
L00444:
	cmpl	a0@(4),d5
	jeq	L00442
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00444
	movl	a0,d0
L00443:
	movl	d0,d0
	jra	L00445
L00442:
	movl	a0,d0
	jra	L00441
L00445:
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a5
	movl	a5@,a1
	movl	a3@(360),a5
	movl	a1@(4),a5@
	jra	L00446
L00441:
	movl	a3@(360),a5
	movl	d0,a5@
L00446:
	cmpl	a4@,d7
	jeq	L00448
	movl	a4@,a1	|(calling concat)
	movl	a1@(4),d0
	cmpl	a3@(368),d0
	jne	L00450
	movl	a3@(372),d0
	jra	L00449
L00450:
	movl	a4@,a0
	movl	a0@(4),d0
	cmpl	a3@(376),d0
	jne	L00451
	movl	a3@(380),d0
	jra	L00449
L00451:
	movl	a3@(384),d0
L00449:
	movl	d0,a2@+
	movl	a3@(360),a5
	cmpl	a5@,d7
	jeq	L00453
	movl	a3@(388),d0
	jra	L00452
L00453:
	movl	a3@(392),d0
L00452:
	movl	d0,a2@+
	movl	a3@(396),a2@+
	movl	a3@(72),a5
	movl	a5@,a2@+
	movl	a3@(400),a2@+
	lea	a2@(-20),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+320,a5
	jbsr	a5@
	lea	a2@(-20),a2
	jra	L00447
L00448:
	movl	a3@(404),d0
L00447:
	movl	d0,a4@(20)
	jra	L00422
L00423:
	movl	a4@(32),d6
	cmpl	a3@(408),d6
	jne	L00454
	movl	a3@(408),sp@-
	movl	a3@(96),sp@-
	movl	#3,sp@-
	jbsr	_Inonlocalgo
	jra	L00422
L00454:
	movl	a4@(32),d6
	cmpl	a3@(412),d6
	jne	L00455
	movl	a3@(316),sp@-
	movl	a3@(96),sp@-
	movl	#3,sp@-
	jbsr	_Inonlocalgo
	jra	L00422
L00455:
	movl	a4@(32),d6
	cmpl	a3@(416),d6
	jne	L00456
	movl	a3@(96),a2@+
	movl	a3@(420),a2@+
	movl	a3@(60),a5
	movl	a5@,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,sp@-
	movl	a2@-,sp@-
	movl	#3,sp@-
	jbsr	_Inonlocalgo
	jra	L00422
L00456:
	movl	a4@(32),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00457
	movl	a3@(424),a2@+
	movl	a4@(32),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00459
	movl	a3@(328),a2@+
	movl	a4@,a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00461
	movl	a4@(32),a5
	movl	a5@,d0
	jra	L00421
|	jra	L00460
L00461:
	movl	a4@(32),a5
	movl	a5@,a1
	movl	a1@(4),d0
	jra	L00421
L00460:
	jra	L00458
L00459:
	movl	a3@(420),a2@+
	movl	a4@(32),a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00463
	movl	a3@(52),a5
	movl	a5@,a4@(24)
	movl	a4@(32),a5
	movl	a5@,a1
	movl	a1@(4),a4@(28)
	jra	L00462
L00463:
	movl	d7,d0
L00462:
L00458:
	jra	L00422
L00457:
	movl	d7,d0
L00422:
	movl	a3@(96),d0
	movl	d7,sp@-
	movl	d0,sp@-
	movl	#2,sp@-
	movl	a2,_np
	movl	a2,_lbot
	jbsr	_qpushframe
	movl	d0,_errp
	tstl	_retval
	jeq	L00465
	movl	_lispretval,d0
	jra	L00464
L00465:
L00466:	|(beginning do)
	cmpl	d7,d7
	jeq	L00467
	movl	d7,d0
	jra	L00468
L00467:
	cmpl	a4@(24),d7
	jne	L00470
	movl	d7,a2@+	|(calling do-one-transaction)
	movl	a4@(20),a2@+
	movl	a4@(40),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+328,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00469
L00470:
	movl	a4@(28),a2@+	|(calling do-one-transaction)
	movl	a4@(20),a2@+
	movl	d7,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+328,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00469:
	movl	d7,a4@(24)
	jra	L00466
L00468:
L00464:
	movl	_errp,a5
	movl	a5@(12),_errp
	movl	a5,sp
	addl	#32,sp
	movl	d0,a4@(32)
	movl	d7,a4@(24)
	jra	L00417
L00421:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1@(-20),a5
	movl	a1@(-24),a5@
	movl	a1@(-28),a5
	movl	a1@(-32),a5@
	movl	a1,_bnp
	subl	#32,_bnp
	subl	#44,a2
	moveml	a6@(-28),#L00416
	unlk	a6
	rts
L00416 = 15584
L00415 = 28
	.globl	F00471	|(fcn lambda tpl-err-tpl-fcn)
F00471:
	link	a6,#-L00474
	tstb	sp@(-132)
	moveml	#L00475,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00472:
	movl	d7,a2@+
	movl	_bnp,a1
	movl	a3@(428),a5
	movl	a5@,a1@+
	movl	a3@(428),a1@+
	movl	a3@(428),a5
	movl	a4@(4),a5@
	movl	a1,_bnp
	movl	a3@(328),a2@+	|(calling tpl-break-function)
	movl	a4@,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subql	#8,a2
	moveml	a6@(-20),#L00475
	unlk	a6
	rts
L00475 = 15488
L00474 = 20
	.globl	F00476	|(fcn lambda tpl-err-all-fcn)
F00476:
	link	a6,#-L00479
	tstb	sp@(-132)
	moveml	#L00480,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00477:
	movl	d7,a2@+
	movl	_bnp,a1
	movl	a3@(428),a5
	movl	a5@,a1@+
	movl	a3@(428),a1@+
	movl	a3@(428),a5
	movl	a4@(4),a5@
	movl	a1,_bnp
	movl	a3@(100),a5
	movl	a3@,a5@
	movl	a3@(368),a2@+	|(calling tpl-break-function)
	movl	a4@,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subql	#8,a2
	moveml	a6@(-20),#L00480
	unlk	a6
	rts
L00480 = 15488
L00479 = 20
	.globl	F00481	|(fcn lambda tpl-command-pop)
F00481:
	link	a6,#-L00484
	tstb	sp@(-132)
	moveml	#L00485,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00482:
	movl	#_nilatom+0x1400+0,d6
	movl	a3@(72),a5
	cmpl	a5@,d6
	jne	L00487
	movl	a3@(432),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00486
L00487:
	movl	a3@(412),sp@-
	movl	a3@(96),sp@-
	movl	#3,sp@-
	jbsr	_Inonlocalgo
L00486:
	subql	#4,a2
	moveml	a6@(-24),#L00485
	unlk	a6
	rts
L00485 = 15552
L00484 = 24
	.globl	F00488	|(fcn lambda tpl-command-ret)
F00488:
	link	a6,#-L00491
	tstb	sp@(-132)
	moveml	#L00492,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00489:
	movl	a3@(360),a5
	cmpl	a5@,d7
	jeq	L00494
	movl	a3@(96),a2@+
	movl	a3@(424),a2@+
	movl	a4@,a5	|(calling eval)
	movl	a5@,a1
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+248,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,sp@-
	movl	a2@-,sp@-
	movl	#3,sp@-
	jbsr	_Inonlocalgo
	jra	L00493
L00494:
	movl	a3@(436),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
L00493:
	subql	#4,a2
	moveml	a6@(-20),#L00492
	unlk	a6
	rts
L00492 = 15488
L00491 = 20
	.globl	F00495	|(fcn lambda tpl-command-redo)
F00495:
	link	a6,#-L00498
	tstb	sp@(-132)
	moveml	#L00499,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00496:
	movl	a4@,a5
	movl	a5@,a4@
	cmpl	a4@,d7
	jne	L00501
	movl	#_nilatom+0x1400+4,a2@+	|(calling tpl-redo-by-count)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+336,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00500
L00501:
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
	andw	#516,d0
	jeq	L00502
	movl	a4@,a0
	movl	a0@(4),a0
	movl	a0@,d0
	cmpl	#0,d0
	jpl	L00506
	clrl	sp@-	|(calling tpl-redo-by-count)
	movl	a4@,a0
	movl	a0@(4),a0
	movl	a0@,d2
	movl	sp@+,d0
	subl	d2,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00507
	jbsr	_qnewint
L00507:
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+336,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00505
L00506:
	movl	a4@,a1	|(calling lessp)
	movl	a1@(4),a2@+
	movl	a3@(68),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00509
	movl	a3@(440),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00508
L00509:
	movl	a3@(68),a5	|(calling tpl-redo-by-count)
	movl	a5@,a0
	movl	a0@,d2
	movl	d2,sp@-
	movl	a4@,a1
	movl	a1@(4),a0
	movl	a0@,d2
	movl	sp@+,d0
	subl	d2,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00510
	jbsr	_qnewint
L00510:
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+336,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00508:
L00505:
	jra	L00500
L00502:
	movl	a4@,a2@+	|(calling tpl-redo-by-car)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+352,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00500:
	subql	#4,a2
	moveml	a6@(-24),#L00499
	unlk	a6
	rts
L00499 = 15492
L00498 = 24
	.globl	F00511	|(fcn lambda tpl-redo-by-car)
F00511:
	link	a6,#-L00514
	tstb	sp@(-132)
	moveml	#L00515,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00512:
	movl	a4@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@(4),d0
	cmpl	a3@(444),d0
	jeq	L00517
	movl	d7,d0
	jra	L00518
L00517:
	movl	a3@(52),d0
	jra	L00516
L00518:
	movl	d7,d0
L00516:
	movl	d0,a2@+
	cmpl	a4@(8),d7
	jeq	L00520
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00522
	movl	a3@(448),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00521
L00522:
	movl	a4@(4),a2@+	|(calling get_pname)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(12),a2@+	|(calling pntlen)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+368,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a3@(24),a5	|(beginning do)
	|(calling tpl-next-user-in-history)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+376,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
L00523:
	cmpl	a4@(20),d7
	jne	L00524
	movl	a3@(452),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00525
L00524:
	movl	a4@(20),a1
	movl	a1@(4),a5
	movl	a5@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00527
	movl	a4@(20),a0
	movl	a0@(4),a5
	movl	a5@,a1
	movl	a1@(4),a4@(24)
	movl	a4@(24),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00527
	movl	a4@(24),a2@+	|(calling substring)
	movl	#_nilatom+0x1400+4,a2@+
	movl	a4@(16),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+384,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	movl	a4@(12),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00531
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+392,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00532
	jra	L00530
L00531:
	subql	#8,a2
L00532:
	movl	a3@(96),a2@+
	movl	a3@(420),a2@+
	movl	a4@(20),a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,sp@-
	movl	a2@-,sp@-
	movl	#3,sp@-
	jbsr	_Inonlocalgo
	jra	L00529
L00530:
	movl	d7,d0
L00529:
	jra	L00526
L00527:
	movl	d7,d0
L00526:
	movl	a4@(20),a5	|(calling tpl-next-user-in-history)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+376,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(20)
	jra	L00523
L00525:
	subl	#16,a2
L00521:
	jra	L00519
L00520:
	movl	a3@(24),a5	|(beginning do)
	|(calling tpl-next-user-in-history)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+376,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
L00533:
	cmpl	a4@(12),d7
	jne	L00534
	movl	a3@(456),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00535
L00534:
	movl	a4@(12),a1
	movl	a1@(4),a5
	movl	a5@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00537
	movl	a4@(12),a0
	movl	a0@(4),a5
	movl	a5@,a1
	movl	a1@(4),a4@(16)
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00537
	movl	a4@(16),d6
	cmpl	a4@(4),d6
	jne	L00540
	movl	a3@(96),a2@+
	movl	a3@(420),a2@+
	movl	a4@(12),a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,sp@-
	movl	a2@-,sp@-
	movl	#3,sp@-
	jbsr	_Inonlocalgo
	jra	L00539
L00540:
	movl	d7,d0
L00539:
	jra	L00536
L00537:
	movl	d7,d0
L00536:
	movl	a4@(12),a5	|(calling tpl-next-user-in-history)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+376,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(12)
	jra	L00533
L00535:
	subql	#8,a2
L00519:
	subl	#12,a2
	moveml	a6@(-24),#L00515
	unlk	a6
	rts
L00515 = 15552
L00514 = 24
	.globl	F00541	|(fcn lambda tpl-redo-by-count)
F00541:
	link	a6,#-L00544
	tstb	sp@(-132)
	moveml	#L00545,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00542:
	movl	a4@,a2@+	|(beginning do)
	movl	a3@(24),a5	|(calling tpl-next-user-in-history)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+376,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
L00546:
	movl	a4@(4),a5
	cmpl	#0,a5@
	jle	L00549
	cmpl	a4@(8),d7
	jne	L00547
L00549:
	cmpl	a4@(8),d7
	jne	L00551
	movl	a3@(460),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00550
L00551:
	movl	a3@(96),a2@+
	movl	a3@(420),a2@+
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,sp@-
	movl	a2@-,sp@-
	movl	#3,sp@-
	jbsr	_Inonlocalgo
L00550:
	jra	L00548
L00547:
	cmpl	#_nilatom+0x1400-4096,a4@(4)
	jle	L00552
	cmpl	#_nilatom+0x1400+4092,a4@(4)
	jle	L00553
L00552:
	movl	a4@(4),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00554
L00553:
	movl	a4@(4),d0
	subql	#4,d0
	movl	d0,a2@+
L00554:
	movl	a4@(8),a5	|(calling tpl-next-user-in-history)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+376,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(8)
	movl	a2@-,a4@(4)
	jra	L00546
L00548:
	subl	#12,a2
	moveml	a6@(-20),#L00545
	unlk	a6
	rts
L00545 = 15488
L00544 = 20
	.globl	F00555	|(fcn lambda tpl-next-user-in-history)
F00555:
	link	a6,#-L00558
	tstb	sp@(-132)
	moveml	#L00559,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00556:
	movl	a4@,d0
	subql	#4,a2
	moveml	a6@(-20),#L00559
	unlk	a6
	rts
L00559 = 15488
L00558 = 20
	.globl	F00560	|(fcn lambda tpl-command-prt)
F00560:
	link	a6,#-L00563
	tstb	sp@(-132)
	moveml	#L00564,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00561:
	movl	a3@(416),sp@-
	movl	a3@(96),sp@-
	movl	#3,sp@-
	jbsr	_Inonlocalgo
	subql	#4,a2
	moveml	a6@(-20),#L00564
	unlk	a6
	rts
L00564 = 15488
L00563 = 20
	.globl	F00565	|(fcn lambda tpl-command-history)
F00565:
	link	a6,#-L00568
	tstb	sp@(-132)
	moveml	#L00569,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00566:
	movl	d7,a2@+
	movl	a3@(464),d5
	movl	a4@,a5
	movl	a5@,d0
	cmpl	d0,d7
	jeq	L00571
	movl	d0,a0
L00573:
	cmpl	a0@(4),d5
	jeq	L00572
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00573
	movl	a0,d0
	jra	L00571
L00572:
	movl	a3@(52),a5
	movl	a5@,a4@(4)
	jra	L00570
L00571:
	movl	d7,d0
L00570:
	movl	a3@(80),a5	|(calling tpl-command-his-rec)
	movl	a5@,a2@+
	movl	a3@(68),a5
	movl	a5@,a2@+
	movl	a4@(4),a2@+
	movl	a3@(24),a5
	movl	a5@,a2@+
	movl	a3@(28),a5
	movl	a5@,a2@+
	lea	a2@(-20),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+400,a5
	jbsr	a5@
	lea	a2@(-20),a2
	subql	#8,a2
	moveml	a6@(-24),#L00569
	unlk	a6
	rts
L00569 = 15520
L00568 = 24
	.globl	F00574	|(fcn lambda tpl-command-his-rec)
F00574:
	link	a6,#-L00577
	tstb	sp@(-132)
	moveml	#L00578,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(20),a2
L00575:
	cmpl	a4@(12),d7
	jeq	L00580
	movl	a4@,a5
	cmpl	#0,a5@
	jle	L00580
	cmpl	#_nilatom+0x1400-4096,a4@	|(calling tpl-command-his-rec)
	jle	L00582
	cmpl	#_nilatom+0x1400+4092,a4@
	jle	L00583
L00582:
	movl	a4@,a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00584
L00583:
	movl	a4@,d0
	subql	#4,d0
	movl	d0,a2@+
L00584:
	cmpl	#_nilatom+0x1400-4096,a4@(4)
	jle	L00585
	cmpl	#_nilatom+0x1400+4092,a4@(4)
	jle	L00586
L00585:
	movl	a4@(4),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00587
L00586:
	movl	a4@(4),d0
	subql	#4,d0
	movl	d0,a2@+
L00587:
	movl	a4@(8),a2@+
	movl	a4@(12),a5
	movl	a5@,a2@+
	movl	a4@(16),a5
	movl	a5@,a2@+
	lea	a2@(-20),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+400,a5
	jbsr	a5@
	lea	a2@(-20),a2
	jra	L00579
L00580:
	movl	d7,d0
L00579:
	cmpl	a4@(12),d7
	jeq	L00589
	movl	a3@(216),a5
	movl	a5@,a2@+
	movl	a3@(208),a5
	movl	a5@,a2@+
	movl	_bnp,a1
	movl	a3@(296),a5
	movl	a5@,a1@+
	movl	a3@(296),a1@+
	movl	a3@(296),a5
	movl	a4@(24),a5@
	movl	a3@(300),a5
	movl	a5@,a1@+
	movl	a3@(300),a1@+
	movl	a3@(300),a5
	movl	a4@(20),a5@
	movl	a1,_bnp
	movl	a4@(4),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(468),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(12),a1	|(calling tpl-history-form-print)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	cmpl	a4@(8),d7
	jeq	L00591
	movl	a3@(472),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(4),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(476),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(16),a1	|(calling msg-print)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00590
L00591:
	movl	d7,d0
L00590:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1,_bnp
	subl	#16,_bnp
	subql	#8,a2
	jra	L00588
L00589:
	movl	d7,d0
L00588:
	subl	#20,a2
	moveml	a6@(-20),#L00578
	unlk	a6
	rts
L00578 = 15488
L00577 = 20
	.globl	F00592	|(fcn lambda tpl-command-reset)
F00592:
	link	a6,#-L00595
	tstb	sp@(-132)
	moveml	#L00596,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00593:
	movl	a3@(408),sp@-
	movl	a3@(96),sp@-
	movl	#3,sp@-
	jbsr	_Inonlocalgo
	subql	#4,a2
	moveml	a6@(-20),#L00596
	unlk	a6
	rts
L00596 = 15488
L00595 = 20
	.globl	F00597	|(fcn lambda tpl-yorn)
F00597:
	link	a6,#-L00600
	tstb	sp@(-132)
	moveml	#L00601,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00598:
	movl	a3@(320),a5	|(calling drain)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+408,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@,a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling tyi)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a2@+
	movl	a3@(320),a5	|(calling drain)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+408,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	#_nilatom+0x1400+484,d6
	cmpl	a4@(4),d6
	jeq	L00602
	movl	d7,d0
	jra	L00603
L00602:
	movl	a3@(52),d0
L00603:
	subql	#8,a2
	moveml	a6@(-24),#L00601
	unlk	a6
	rts
L00601 = 15552
L00600 = 24
	.globl	F00604	|(fcn lambda tpl-*break)
F00604:
	link	a6,#-L00607
	tstb	sp@(-132)
	moveml	#L00608,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00605:
	movl	d7,a2@+
	movl	_bnp,a1
	movl	a3@(428),a5
	movl	a5@,a1@+
	movl	a3@(428),a1@+
	movl	a3@(428),a5
	movl	a4@(8),a5@
	movl	a1,_bnp
	cmpl	a4@,d7
	jeq	L00610
	movl	a3@(348),a2@+	|(calling tpl-break-function)
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00609
L00610:
	movl	d7,d0
L00609:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subl	#12,a2
	moveml	a6@(-20),#L00608
	unlk	a6
	rts
L00608 = 15488
L00607 = 20
	.globl	F00611	|(fcn lambda tpl-command-step)
F00611:
	link	a6,#-L00614
	tstb	sp@(-132)
	moveml	#L00615,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00612:
	movl	a3@(52),a5
	movl	a5@,d6
	movl	a3@(84),a5
	movl	d6,a5@
	movl	a3@(480),a5
	movl	d7,a5@
	movl	a3@(484),a5
	movl	d7,a5@
	movl	a3@(88),a5
	movl	#_nilatom+0x1400+0,a5@
	movl	a3@(52),d5
	movl	a4@,d0
	cmpl	d0,d7
	jeq	L00617
	movl	d0,a0
L00619:
	cmpl	a0@(4),d5
	jeq	L00618
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00619
	movl	a0,d0
	jra	L00617
L00618:
	movl	a3@(52),a5
	movl	a5@,d6
	movl	a3@(480),a5
	movl	d6,a5@
	jra	L00616
L00617:
	movl	a3@(484),a5
	movl	a4@,a5@
L00616:
	movl	a3@(52),a5	|(calling *rset)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(488),a5
	movl	d7,a5@
	movl	a3@(492),a5
	movl	d7,a5@
	movl	a3@(496),a2@+	|(calling sstatus)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+216,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(500),a2@+	|(calling sstatus)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+216,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	moveml	a6@(-28),#L00615
	unlk	a6
	rts
L00615 = 15584
L00614 = 28
	.globl	F00620	|(fcn lambda tpl-command-stepoff)
F00620:
	link	a6,#-L00623
	tstb	sp@(-132)
	moveml	#L00624,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00621:
	movl	a3@(504),a2@+	|(calling sstatus)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+216,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(84),a5
	movl	d7,a5@
	movl	a3@(480),a5
	movl	d7,a5@
	movl	a3@(480),a5
	movl	a5@,d0
	subql	#4,a2
	moveml	a6@(-20),#L00624
	unlk	a6
	rts
L00624 = 15488
L00623 = 20
	.globl	F00625	|(fcn lambda tpl-command-sc)
F00625:
	link	a6,#-L00628
	tstb	sp@(-132)
	moveml	#L00629,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00626:
	movl	a4@,a5
	cmpl	a5@,d7
	jeq	L00631
	movl	a4@,a5
	movl	a5@,a1
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
	andw	#516,d0
	jeq	L00633
	movl	a4@,a5
	movl	a5@,a0
	movl	a3@(88),a5
	movl	a0@(4),a5@
	jra	L00632
L00633:
	movl	a3@(88),a5
	movl	a3@(508),a5@
L00632:
	jra	L00630
L00631:
	movl	d7,d0
L00630:
	movl	a3@(96),a2@+
	movl	a3@(424),a2@+
	movl	a3@(84),a5
	movl	a5@,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,sp@-
	movl	a2@-,sp@-
	movl	#3,sp@-
	jbsr	_Inonlocalgo
	subql	#4,a2
	moveml	a6@(-20),#L00629
	unlk	a6
	rts
L00629 = 15488
L00628 = 20
	.globl	F00636	|(fcn lambda tpl-do-evalhook)
F00636:
	link	a6,#-L00639
	tstb	sp@(-132)
	moveml	#L00640,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00637:
	movl	a4@,a2@+	|(calling tpl-funcall-evalhook)
	movl	a3@(512),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+416,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#4,a2
	moveml	a6@(-20),#L00640
	unlk	a6
	rts
L00640 = 15488
L00639 = 20
	.globl	F00645	|(fcn lexpr tpl-do-funcallhook)
F00645:
	link	a6,#-L00648
	tstb	sp@(-132)
	moveml	#L00649,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00646:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	a4@,a2@+	|(beginning do)
	movl	d7,a2@+
L00650:
	movl	a4@(4),a5
	cmpl	#1,a5@
	jpl	L00651
	movl	a4@(8),d0
	jra	L00652
L00651:
	cmpl	#_nilatom+0x1400-4096,a4@(4)
	jle	L00653
	cmpl	#_nilatom+0x1400+4092,a4@(4)
	jle	L00654
L00653:
	movl	a4@(4),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00655
L00654:
	movl	a4@(4),d0
	subql	#4,d0
	movl	d0,a2@+
L00655:
	movl	a4@(4),d0
	cmpl	a4@(4),d7
	jeq	L00656
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00656
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00657
L00656:
	movl	a4@(-4),a2@+
L00657:
	movl	a4@(8),a2@+
	jbsr	_qcons
	movl	d0,a4@(8)
	movl	a2@-,a4@(4)
	jra	L00650
L00652:
	subql	#8,a2
	movl	d0,a2@+
	movl	d7,a2@+
	movl	a4@(4),a5
	cmpl	a5@,d7
	jeq	L00659
	movl	a4@(4),a2@+	|(beginning do)
L00660:
	movl	a4@(12),a5
	movl	a5@,a1
	cmpl	a1@,d7
	jne	L00661
	movl	a4@(12),a5
	movl	a5@,a0
	movl	a0@(4),a4@(8)
	movl	a4@(12),a0
	movl	d7,a0@
	movl	a0,d0
	jra	L00662
L00661:
	movl	a4@(12),a5
	movl	a5@,a4@(12)
	jra	L00660
L00662:
	subql	#4,a2
	jra	L00658
L00659:
	movl	a4@(4),a1
	movl	a1@(4),a4@(8)
	movl	d7,a4@(4)
L00658:
	movl	a4@(8),a2@+	|(calling tpl-funcall-evalhook)
	movl	a4@(4),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(516),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+416,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subl	#12,a2
	moveml	a6@(-20),#L00649
	unlk	a6
	rts
L00649 = 15488
L00648 = 20
	.globl	F00663	|(fcn lambda tpl-funcall-evalhook)
F00663:
	link	a6,#-L00666
	tstb	sp@(-132)
	moveml	#L00667,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00664:
	movl	a3@(92),a5
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00668
	movl	a3@(92),a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	d0,a2@+
	jra	L00669
L00668:
	movl	a3@(92),a5
	movl	a5@,d0
	addql	#4,d0
	movl	d0,a2@+
L00669:
	movl	_bnp,a1
	movl	a3@(92),a5
	movl	a5@,a1@+
	movl	a3@(92),a1@+
	movl	a3@(92),a5
	movl	a4@(8),a5@
	movl	a1,_bnp
	movl	a3@(480),a5
	cmpl	a5@,d7
	jne	L00671
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00671
	movl	a4@,a1
	movl	a1@(4),d5
	movl	a3@(484),a5
	movl	a5@,d0
	cmpl	d0,d7
	jeq	L00671
	movl	d0,a0
L00674:
	cmpl	a0@(4),d5
	jeq	L00673
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00674
	movl	a0,d0
	jra	L00671
L00673:
	movl	a3@(52),a5
	movl	a5@,d6
	movl	a3@(480),a5
	movl	d6,a5@
	jra	L00670
L00671:
	movl	d7,d0
L00670:
	movl	a3@(480),a5
	cmpl	a5@,d7
	jeq	L00676
	movl	a3@(92),a5	|(calling tpl-step-printform)
	movl	a5@,a2@+
	movl	a4@(4),a2@+
	movl	a4@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+424,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	a3@(88),a5
	movl	a5@,a0
	movl	a0@,d0
	cmpl	#1,d0
	jpl	L00678
	movl	a3@(520),a2@+	|(calling tpl-break-function)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(84),a5
	movl	d0,a5@
	jra	L00677
L00678:
	movl	a3@(88),a5
	cmpl	#_nilatom+0x1400-4096,a5@
	jle	L00679
	movl	a3@(88),a5
	cmpl	#_nilatom+0x1400+4092,a5@
	jle	L00680
L00679:
	movl	a3@(88),a5
	movl	a5@,a0
	jbsr	_qoneminus
	movl	a3@(88),a5
	movl	d0,a5@
	jra	L00681
L00680:
	movl	a3@(88),a5
	movl	a5@,d0
	subql	#4,d0
	movl	a3@(88),a5
	movl	d0,a5@
L00681:
L00677:
	jra	L00675
L00676:
	movl	d7,d0
L00675:
	movl	a3@(84),a5
	cmpl	a5@,d7
	jeq	L00683
	movl	d7,a2@+
	movl	a4@(4),d6
	cmpl	a3@(512),d6
	jne	L00685
	movl	a4@,a2@+	|(calling tpl-evalhook)
	movl	a3@(120),a2@+
	movl	a3@(124),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00684
L00685:
	movl	a4@,a2@+	|(calling tpl-funcallhook)
	movl	a3@(124),a2@+
	movl	a3@(120),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+432,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00684:
	movl	d0,a4@(12)
	movl	a3@(480),a5
	cmpl	a5@,d7
	jeq	L00687
	movl	a3@(92),a5	|(calling tpl-step-printform)
	movl	a5@,a2@+
	movl	a3@(464),a2@+
	movl	a4@(12),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+424,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00686
L00687:
	movl	d7,d0
L00686:
	movl	a4@(12),d0
	subql	#4,a2
	jra	L00682
L00683:
	movl	a4@(4),d6
	cmpl	a3@(512),d6
	jne	L00689
	movl	a4@,a2@+	|(calling tpl-evalhook)
	movl	d7,a2@+
	movl	d7,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00688
L00689:
	movl	a4@,a2@+	|(calling tpl-funcallhook)
	movl	d7,a2@+
	movl	d7,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+432,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00688:
L00682:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subl	#12,a2
	moveml	a6@(-28),#L00667
	unlk	a6
	rts
L00667 = 15584
L00666 = 28
	.globl	F00690	|(fcn lambda tpl-step-printform)
F00690:
	link	a6,#-L00693
	tstb	sp@(-132)
	moveml	#L00694,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00691:
	movl	a4@,a2@+	|(calling printblanks)
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+440,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	#_nilatom+0x1400+16,a2@+
	movl	#_nilatom+0x1400+16,a2@+
	movl	_bnp,a1
	movl	a3@(296),a5
	movl	a5@,a1@+
	movl	a3@(296),a1@+
	movl	a3@(296),a5
	movl	a4@(16),a5@
	movl	a3@(300),a5
	movl	a5@,a1@+
	movl	a3@(300),a1@+
	movl	a3@(300),a5
	movl	a4@(12),a5@
	movl	a1,_bnp
	movl	a4@(4),d6	|(calling msg-print)
	cmpl	a3@(464),d6
	jne	L00696
	movl	a3@(524),d0
	jra	L00695
L00696:
	movl	a4@(4),d6
	cmpl	a3@(516),d6
	jne	L00697
	movl	a3@(528),d0
	jra	L00695
L00697:
	movl	a4@(4),d6
	cmpl	a3@(512),d6
	jne	L00698
	movl	a3@(532),d0
	jra	L00695
L00698:
	movl	a4@(4),d0
L00695:
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(8),a2@+	|(calling msg-print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@,a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1,_bnp
	subl	#16,_bnp
	subl	#20,a2
	moveml	a6@(-24),#L00694
	unlk	a6
	rts
L00694 = 15552
L00693 = 24
bind_org:
	linker_size = 	134
	trans_size = 	56
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
	.long -1
lit_org:
.asciz "tpl-err-all-fcn"
.asciz "debug-error-handler"
.asciz "ER%tpl"
.asciz "tpl-err-tpl-fcn"
.asciz "*break"
.asciz "tpl-*break"
.asciz "given-history"
.asciz "res-history"
.asciz "tpl-debug-on"
.asciz "tpl-step-on"
.asciz "tpl-top-framelist"
.asciz "tpl-bot-framelist"
.asciz "tpl-stack-bad"
.asciz "t"
.asciz "tpl-stack-ok"
.asciz "tpl-fcn-in-eval"
.asciz "tpl-level"
.asciz "tpl-history-count"
.asciz "tpl-break-level"
.asciz "tpl-dontshow-tpl"
.asciz "tpl-history-show"
.asciz "tpl-step-enable"
.asciz "tpl-step-countdown"
.asciz "tpl-step-reclevel"
.asciz "tpl-break-catch"
.asciz "ER%all"
.asciz "(isatty)"
.asciz "\"EOF\""
.asciz "(sys <eof>)"
.asciz "user"
.asciz "tpl-do-evalhook"
.asciz "tpl-do-funcallhook"
.asciz "tpl-spec-char"
.asciz "sys"
.asciz "\"?\""
.asciz "\" \""
.asciz "top-level-print"
.asciz "lambda"
.asciz "tpl-commands"
.asciz "\"Illegal command, type ?help for list of commands\""
.asciz "\"I don't know that command\""
.asciz "\",\""
.asciz "tpl-last-loaded"
.asciz "\"Nothing to load\""
.asciz "trace"
.asciz "\" State:  debug \""
.asciz "\", step \""
.asciz "\"	  *rset \""
.asciz "*rset"
.asciz "\", (status translink) \""
.asciz "(translink)"
.asciz "\"  variables: tpl-prinlength \""
.asciz "tpl-prinlength"
.asciz "\" 	      tpl-prinlevel  \""
.asciz "tpl-prinlevel"
.asciz "off"
.asciz "\"Debug is off\""
.asciz "(translink nil)"
.asciz "\"Debug is on\""
.asciz "(translink on)"
.asciz "displace-macros"
.asciz "\"ev must be given a symbol\""
.asciz "\"there is no evaluation stack, is debug on?\""
.asciz "history"
.asciz "%"
.asciz "\"Should I re-calc the stack(y/n):\""
.asciz "\"[not re-calc'ed]\""
.asciz "(tpl-eval tpl-funcall tpl-evalhook tpl-funcallhook)"
.asciz "(tpl-err-tpl-fcn tpl-funcall-evalhook tpl-do-funcallhook)"
.asciz "tpl-break-function"
.asciz "\"*** bottom ***\""
.asciz "\"*** top ***\""
.asciz "\"... \""
.asciz "\" more ...\""
.asciz "prinlength"
.asciz "prinlevel"
.asciz "apply"
.asciz "\"a:\""
.asciz "\"// current \\\\\\\\\""
.asciz "contbreak"
.asciz "piport"
.asciz "(error derror)"
.asciz "error"
.asciz "\"Error: \""
.asciz "\"DError: \""
.asciz "\" \""
.asciz "\"Form: \""
.asciz "break"
.asciz "\"Break: \""
.asciz "\" \""
.asciz "tpl-contuab"
.asciz "(break derror step)"
.asciz "derror"
.asciz "\"d\""
.asciz "step"
.asciz "\"s\""
.asciz "\"\""
.asciz "\"c\""
.asciz "\"\""
.asciz "\"{\""
.asciz "\"} \""
.asciz "\"=> \""
.asciz "reset"
.asciz "poplevel"
.asciz "popretry"
.asciz "retry"
.asciz "retbreak"
.asciz "^w"
.asciz "\"Already at top level \""
.asciz "\"Can't return at this point\""
.asciz "\"There aren't that many commands \""
.asciz "*"
.asciz "\"must give a symbol before *\""
.asciz "\"Can't find a match\""
.asciz "\"Can't find a match\""
.asciz "\"There aren't that many commands \""
.asciz "r"
.asciz "\": \""
.asciz "\"% \""
.asciz "\": \""
.asciz "tpl-step-print"
.asciz "tpl-step-triggers"
.asciz "evalhook"
.asciz "funcallhook"
.asciz "(translink nil)"
.asciz "(evalhook t)"
.asciz "(evalhook nil)"
.asciz "100000"
.asciz "eval"
.asciz "funcall"
.asciz "(step)"
.asciz "\"==\""
.asciz "f:"
.asciz "e:"
.asciz "putd"
.asciz "tpl-break-function"
.asciz "patom"
.asciz "ntpl-read"
.asciz "status"
.asciz "msg-print"
.asciz "terpr"
.asciz "exit"
.asciz "tpl-history-form-print"
.asciz "add-to-given-history"
.asciz "tpl-evalhook"
.asciz "tpl-eval"
.asciz "process-fcn"
.asciz "add-to-res-history"
.asciz "ntpl-print"
.asciz "tyipeek"
.asciz "tyi"
.asciz "nreverse"
.asciz "readlist"
.asciz "untyi"
.asciz "read"
.asciz "print"
.asciz "funcall"
.asciz "tpl-funcall"
.asciz "load"
.asciz "apply"
.asciz "*rset"
.asciz "sstatus"
.asciz "tpl-update-stack"
.asciz "tpl-zoom"
.asciz "tpl-command-zoom"
.asciz "eval"
.asciz "pp-form"
.asciz "tpl-yorn"
.asciz "tpl-gentrace"
.asciz "tpl-getframelist"
.asciz "evalframe"
.asciz "length"
.asciz "tpl-printframelist"
.asciz "most-recent-given"
.asciz "concat"
.asciz "do-one-transaction"
.asciz "tpl-redo-by-count"
.asciz "lessp"
.asciz "tpl-redo-by-car"
.asciz "get_pname"
.asciz "pntlen"
.asciz "tpl-next-user-in-history"
.asciz "substring"
.asciz "equal"
.asciz "tpl-command-his-rec"
.asciz "drain"
.asciz "tpl-funcall-evalhook"
.asciz "tpl-step-printform"
.asciz "tpl-funcallhook"
.asciz "printblanks"
.ascii "(setq fcn-in-tpl.l \"tpl.l compiled by Liszt 68000 version 8."
.asciz "39a on Fri Dec 15 18:55:17 1989\")"
.ascii "(setq rcs-tpl- \"$Header: tpl.l,v 1.6 84/02/29 19:31:09 jkf E"
.asciz "xp $\")"
.asciz "(putd (quote tpl-eval) (getd (quote eval)))"
.asciz "(putd (quote tpl-funcall) (getd (quote funcall)))"
.asciz "(putd (quote tpl-evalhook) (getd (quote evalhook)))"
.asciz "(putd (quote tpl-funcallhook) (getd (quote funcallhook)))"
.ascii "(setq tpl-eval-flush nil tpl-trace-flush nil tpl-prinlevel 3"
.asciz " tpl-prinlength 4 tpl-spec-char 63)"
.ascii "(or (boundp (quote tpl-last-loaded)) (setq tpl-last-loaded n"
.asciz "il))"
.asciz "tpl"
.ascii "(putprop (quote tpl) (list (quote (0 . 0)) fcn-in-tpl.l) (qu"
.asciz "ote fcn-info))"
.asciz "do-one-transaction"
.ascii "(putprop (quote do-one-transaction) (list (quote (3 . 3)) fc"
.asciz "n-in-tpl.l) (quote fcn-info))"
.asciz "ntpl-read"
.ascii "(putprop (quote ntpl-read) (list (quote (2 . 2)) fcn-in-tpl."
.asciz "l) (quote fcn-info))"
.asciz "tpl-history-form-print"
.ascii "(putprop (quote tpl-history-form-print) (list (quote (1 . 1)"
.asciz ") fcn-in-tpl.l) (quote fcn-info))"
.asciz "ntpl-print"
.ascii "(putprop (quote ntpl-print) (list (quote (1 . 1)) fcn-in-tpl"
.asciz ".l) (quote fcn-info))"
.ascii "(setq tpl-commands (quote (((help h) tpl-command-help \" [cmd"
.ascii "] - print general or specific info \" \" '?help' - print a sho"
.ascii "rt description of all commands \" \" '?help cmd' - print exten"
.ascii "ded information on the given command \") (? tpl-command-redo "
.ascii "\" [args] - redo last or previous command \" \" '??' - redo las"
.ascii "t user command \" \" '?? n' - (for n>0) redo command #n (as pr"
.ascii "inted by ?history)\" \" '?? -n' - (for n>0) redo n'th previous"
.ascii " command (?? -1 == ??)\" \" '?? symb' - redo last with car == "
.ascii "symb\" \" '?? symb *' - redo last with car == symb*\") ((his hi"
.ascii "story) tpl-command-history \" [r] - print history list \" \" ?h"
.ascii "istory, ?his - print list of commands previously executed\" \""
.ascii " '?his r' - print results too\") ((re reset) tpl-command-rese"
.ascii "t \" - pop up to the top level\" \" '?re, ?reset', pop up to th"
.ascii "e top level \") (tr tpl-command-trace \" [fn ..] - trace\" \" '?"
.ascii "tr' - print list of traced functions\" \" '?tr fn ...' - trace"
.ascii " given functions, can be fn or (fn cmd ...)\" \"	where cmds ar"
.ascii "e trace commands\") (step tpl-command-step \" [t] [funa funb ."
.ascii "..] step always or when specific function hit\" \" '?step t' -"
.ascii " step starting right away \" \" '?step funa funb' - step when "
.ascii "either funa or funb to be called \") (soff tpl-command-stepof"
.ascii "f \" - turn off stepping \" \" '?soff' - turn off stepping \") ("
.ascii "sc tpl-command-sc \" [n] - continue stepping [don't break for"
.ascii " n steps] \" \" '?sc' -  do one step then break \" \" '?sc n' - "
.ascii "step for n steps before breaking \" \"	    if n is a non integ"
.ascii "er (e.g. inf) then \" \"	    step forever without breaking \") "
.ascii "(state tpl-command-state \" [vals] - print or change state \" "
.ascii "\" 'state' - print current state in short form \" \" 'state l' "
.ascii "- print state in long form\" \" 'state sym val ... ...' - set "
.ascii "values of state \" \"	symbols are those given in 'state  l' li"
.ascii "st\") (prt tpl-command-prt \" - pop up a level and retry the c"
.ascii "ommand which caused this break\" \" ?prt - do a ?pop followed "
.ascii "by a retry of the command which\" \"	caused this break to be e"
.ascii "ntered\") (ld tpl-command-load \" [file ...] - load given or l"
.ascii "ast files\" \" 'ld'  - loads the last files loaded with ?ld\" \""
.ascii " 'ld file ...' - loads the given files\") (debug tpl-command-"
.ascii "debug \" [off] - toggle debug state \" \" 'debug' Turns on debu"
.ascii "gging.  When debug is on then\" \"	enough information is kept "
.ascii "around for viewing\" \"	and quering evaluation stack\" \" 'debug"
.ascii " off' - Turns off debuging\") (fast tpl-command-fast \" - set "
.ascii "switches for fastest execution \" \" '?fast - turn off ?debug "
.ascii "mode (i.e. (*rset nil)), set the \" \"	translink table to 'on'"
.ascii ", and set displace-macros to t.\" \" 	This will cause franz to"
.ascii " run as fast as possible \" \"	(but will result in loss of deb"
.ascii "ugging information \") (pop tpl-command-pop \" - pop up to pre"
.ascii "vious break level\" \" 'pop' - if not at top level, pop up to "
.ascii "the break level\" \"	above this one\") (ret tpl-command-ret \" ["
.ascii "val] - return value from this break loop \" \" 'ret [val]' if "
.ascii "this is a break look due to a break command \" \"	or a continu"
.ascii "able error, evaluate val (default nil)\" \"	and return it to t"
.ascii "he function that found an error,\" \" 	allowing it to continue"
.ascii "\") (zo tpl-command-zoom \" - view a portion of evaluation sta"
.ascii "ck\" \" 'zo' - show a portion above and below the 'current' st"
.ascii "ack\" \"	frame.  Use )up and )dn or alter current stack frame\""
.ascii ") (dn tpl-command-down \" [n] - go down stack frames \" \" 'dn'"
.ascii " - move the current stack frame down one.  Down refers to\" \""
.ascii "	older stack frames\" \" 'dn n' - n is a fixnum telling how ma"
.ascii "ny stack frames to go down\" \" 'dn n z' - after going down, d"
.ascii "o a zoom\" \" After dn is done, a limited zoom will be done\") "
.ascii "(up tpl-command-up \" [n] - go up stack frames \" \" 'up' - mov"
.ascii "e the current stack frame up one.  Up refers to\" \"	younger s"
.ascii "tack frames\" \" 'up n' - n is a fixnum telling how many stack"
.ascii " frames to go up\") (ev tpl-command-ev \" symbol - eval the gi"
.ascii "ven symbol wrt the current frame \" \" 'ev symbol' - determine"
.ascii " the value of the given symbol\" \"	after restoring the bindin"
.ascii "gs to the way they were\" \"	when the current frame was curren"
.ascii "t.  see ?zo,?up,?dn\") (pp tpl-command-pp \" - pretty print th"
.ascii "e current frame \" \" 'pp' - pretty print the current frame (s"
.ascii "ee ?zo, ?up, ?dn)\") (<eof> tpl-command-pop \" - pop one break"
.ascii " level up \" \" '^D' - if connect to tty, pops up one break le"
.asciz "vel,\" \"        otherwise, exits doesn't exit unless  \"))))"
.asciz "process-fcn"
.ascii "(putprop (quote process-fcn) (list (quote (1 . 1)) fcn-in-tp"
.asciz "l.l) (quote fcn-info))"
.asciz "tpl-command-help"
.ascii "(putprop (quote tpl-command-help) (list (quote (1 . 1)) fcn-"
.asciz "in-tpl.l) (quote fcn-info))"
.asciz "tpl-command-load"
.ascii "(putprop (quote tpl-command-load) (list (quote (1 . 1)) fcn-"
.asciz "in-tpl.l) (quote fcn-info))"
.asciz "tpl-command-trace"
.ascii "(putprop (quote tpl-command-trace) (list (quote (1 . 1)) fcn"
.asciz "-in-tpl.l) (quote fcn-info))"
.asciz "tpl-command-state"
.ascii "(putprop (quote tpl-command-state) (list (quote (1 . 1)) fcn"
.asciz "-in-tpl.l) (quote fcn-info))"
.asciz "tpl-command-debug"
.ascii "(putprop (quote tpl-command-debug) (list (quote (1 . 1)) fcn"
.asciz "-in-tpl.l) (quote fcn-info))"
.asciz "tpl-command-fast"
.ascii "(putprop (quote tpl-command-fast) (list (quote (1 . 1)) fcn-"
.asciz "in-tpl.l) (quote fcn-info))"
.asciz "tpl-command-zoom"
.ascii "(putprop (quote tpl-command-zoom) (list (quote (1 . 1)) fcn-"
.asciz "in-tpl.l) (quote fcn-info))"
.asciz "tpl-command-down"
.ascii "(putprop (quote tpl-command-down) (list (quote (1 . 1)) fcn-"
.asciz "in-tpl.l) (quote fcn-info))"
.asciz "tpl-command-up"
.ascii "(putprop (quote tpl-command-up) (list (quote (1 . 1)) fcn-in"
.asciz "-tpl.l) (quote fcn-info))"
.asciz "tpl-command-ev"
.ascii "(putprop (quote tpl-command-ev) (list (quote (1 . 1)) fcn-in"
.asciz "-tpl.l) (quote fcn-info))"
.asciz "tpl-command-pp"
.ascii "(putprop (quote tpl-command-pp) (list (quote (1 . 1)) fcn-in"
.asciz "-tpl.l) (quote fcn-info))"
.asciz "most-recent-given"
.ascii "(putprop (quote most-recent-given) (list (quote (0 . 0)) fcn"
.asciz "-in-tpl.l) (quote fcn-info))"
.asciz "add-to-given-history"
.ascii "(putprop (quote add-to-given-history) (list (quote (1 . 1)) "
.asciz "fcn-in-tpl.l) (quote fcn-info))"
.asciz "add-to-res-history"
.ascii "(putprop (quote add-to-res-history) (list (quote (1 . 1)) fc"
.asciz "n-in-tpl.l) (quote fcn-info))"
.asciz "tpl-update-stack"
.ascii "(putprop (quote tpl-update-stack) (list (quote (0 . 0)) fcn-"
.asciz "in-tpl.l) (quote fcn-info))"
.asciz "tpl-gentrace"
.ascii "(putprop (quote tpl-gentrace) (list (quote (0 . 0)) fcn-in-t"
.asciz "pl.l) (quote fcn-info))"
.asciz "tpl-getframelist"
.ascii "(putprop (quote tpl-getframelist) (list (quote (0 . 0)) fcn-"
.asciz "in-tpl.l) (quote fcn-info))"
.asciz "tpl-printframelist"
.ascii "(putprop (quote tpl-printframelist) (list (quote (3 . 3)) fc"
.asciz "n-in-tpl.l) (quote fcn-info))"
.asciz "tpl-zoom"
.ascii "(putprop (quote tpl-zoom) (list (quote (0 . 0)) fcn-in-tpl.l"
.asciz ") (quote fcn-info))"
.asciz "tpl-break-function"
.ascii "(putprop (quote tpl-break-function) (list (quote (1 . 1)) fc"
.asciz "n-in-tpl.l) (quote fcn-info))"
.asciz "tpl-err-tpl-fcn"
.ascii "(putprop (quote tpl-err-tpl-fcn) (list (quote (1 . 1)) fcn-i"
.asciz "n-tpl.l) (quote fcn-info))"
.asciz "tpl-err-all-fcn"
.ascii "(putprop (quote tpl-err-all-fcn) (list (quote (1 . 1)) fcn-i"
.asciz "n-tpl.l) (quote fcn-info))"
.asciz "tpl-command-pop"
.ascii "(putprop (quote tpl-command-pop) (list (quote (1 . 1)) fcn-i"
.asciz "n-tpl.l) (quote fcn-info))"
.asciz "tpl-command-ret"
.ascii "(putprop (quote tpl-command-ret) (list (quote (1 . 1)) fcn-i"
.asciz "n-tpl.l) (quote fcn-info))"
.asciz "tpl-command-redo"
.ascii "(putprop (quote tpl-command-redo) (list (quote (1 . 1)) fcn-"
.asciz "in-tpl.l) (quote fcn-info))"
.asciz "tpl-redo-by-car"
.ascii "(putprop (quote tpl-redo-by-car) (list (quote (1 . 1)) fcn-i"
.asciz "n-tpl.l) (quote fcn-info))"
.asciz "tpl-redo-by-count"
.ascii "(putprop (quote tpl-redo-by-count) (list (quote (1 . 1)) fcn"
.asciz "-in-tpl.l) (quote fcn-info))"
.ascii "(quote (defun tpl-next-user-in-history (hlist) (do ((histlis"
.ascii "t hlist (cdr histlist))) ((or (null histlist) (eq (quote use"
.asciz "r) (caar histlist))) histlist))))"
.asciz "tpl-next-user-in-history"
.ascii "(putprop (quote tpl-next-user-in-history) (list (quote (1 . "
.asciz "1)) fcn-in-tpl.l) (quote fcn-info))"
.asciz "tpl-command-prt"
.ascii "(putprop (quote tpl-command-prt) (list (quote (1 . 1)) fcn-i"
.asciz "n-tpl.l) (quote fcn-info))"
.asciz "tpl-command-history"
.ascii "(putprop (quote tpl-command-history) (list (quote (1 . 1)) f"
.asciz "cn-in-tpl.l) (quote fcn-info))"
.asciz "tpl-command-his-rec"
.ascii "(putprop (quote tpl-command-his-rec) (list (quote (5 . 5)) f"
.asciz "cn-in-tpl.l) (quote fcn-info))"
.asciz "tpl-command-reset"
.ascii "(putprop (quote tpl-command-reset) (list (quote (1 . 1)) fcn"
.asciz "-in-tpl.l) (quote fcn-info))"
.asciz "tpl-yorn"
.ascii "(putprop (quote tpl-yorn) (list (quote (1 . 1)) fcn-in-tpl.l"
.asciz ") (quote fcn-info))"
.asciz "tpl-*break"
.ascii "(putprop (quote tpl-*break) (list (quote (2 . 2)) fcn-in-tpl"
.asciz ".l) (quote fcn-info))"
.asciz "tpl-command-step"
.ascii "(putprop (quote tpl-command-step) (list (quote (1 . 1)) fcn-"
.asciz "in-tpl.l) (quote fcn-info))"
.asciz "tpl-command-stepoff"
.ascii "(putprop (quote tpl-command-stepoff) (list (quote (1 . 1)) f"
.asciz "cn-in-tpl.l) (quote fcn-info))"
.asciz "tpl-command-sc"
.ascii "(putprop (quote tpl-command-sc) (list (quote (1 . 1)) fcn-in"
.asciz "-tpl.l) (quote fcn-info))"
.asciz "tpl-do-evalhook"
.ascii "(putprop (quote tpl-do-evalhook) (list (quote (1 . 1)) fcn-i"
.asciz "n-tpl.l) (quote fcn-info))"
.asciz "tpl-do-funcallhook"
.ascii "(putprop (quote tpl-do-funcallhook) (list (quote (0)) fcn-in"
.asciz "-tpl.l) (quote fcn-info))"
.asciz "tpl-funcall-evalhook"
.ascii "(putprop (quote tpl-funcall-evalhook) (list (quote (2 . 2)) "
.asciz "fcn-in-tpl.l) (quote fcn-info))"
.asciz "tpl-step-printform"
.ascii "(putprop (quote tpl-step-printform) (list (quote (3 . 3)) fc"
.asciz "n-in-tpl.l) (quote fcn-info))"
.asciz "(putprop (quote tpl) t (quote version))"
lit_end:
.data | this is just for documentation 
.asciz "@(#)Compiled by Liszt 68000 version 8.39a on Fri Dec 15 18:56:08 1989"
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
