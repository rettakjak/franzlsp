	.globl	F00095	|(fcn lexpr format)
F00095:
	link	a6,#-L00098
	tstb	sp@(-132)
	moveml	#L00099,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00096:
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
	movl	_bnp,a1
	movl	a3@,a5
	movl	a5@,a1@+
	movl	a3@,a1@+
	movl	a3@,a5
	movl	a4@(8),a5@
	movl	a1,_bnp
	movl	a4@,a2@+	|(beginning do)
	movl	d7,a2@+
L00104:
	movl	a4@(12),a5
	cmpl	#3,a5@
	jpl	L00105
	movl	a4@(16),d0
	jra	L00106
L00105:
	cmpl	#_nilatom+0x1400-4096,a4@(12)
	jle	L00107
	cmpl	#_nilatom+0x1400+4092,a4@(12)
	jle	L00108
L00107:
	movl	a4@(12),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00109
L00108:
	movl	a4@(12),d0
	subql	#4,d0
	movl	d0,a2@+
L00109:
	movl	a4@(12),d0
	cmpl	a4@(12),d7
	jeq	L00110
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00110
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00111
L00110:
	movl	a4@(-4),a2@+
L00111:
	movl	a4@(16),a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	movl	a2@-,a4@(12)
	jra	L00104
L00106:
	subql	#8,a2
	movl	d0,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a4@(12),a2@+
	movl	#_nilatom+0x1400+0,a2@+
	movl	_bnp,a1
	movl	a3@(4),a5
	movl	a5@,a1@+
	movl	a3@(4),a1@+
	movl	a3@(4),a5
	movl	a4@(28),a5@
	movl	a3@(8),a5
	movl	a5@,a1@+
	movl	a3@(8),a1@+
	movl	a3@(8),a5
	movl	a4@(24),a5@
	movl	a3@(12),a5
	movl	a5@,a1@+
	movl	a3@(12),a1@+
	movl	a3@(12),a5
	movl	a4@(20),a5@
	movl	a1,_bnp
	movl	a4@(4),d6
	cmpl	a3@(16),d6
	jne	L00113
	movl	a3@(20),a5
	movl	a5@,d0
	jra	L00112
L00113:
	cmpl	a4@(4),d7
	jne	L00114
	movl	a3@(16),a4@(16)
	movl	d7,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	jra	L00112
L00114:
	movl	a4@(4),d0
L00112:
	movl	d0,a4@(4)
	movl	a3@(12),a5
	movl	a4@(4),a5@
	movl	a3@,a5
	movl	a5@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00116
	movl	a3@,a5	|(calling get_pname)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@,a5
	movl	d0,a5@
	jra	L00115
L00116:
	movl	d7,d0
L00115:
	movl	a3@,a5
	movl	a5@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jne	L00118
	movl	a4@(12),a2@+	|(calling format-ctl-string)
	movl	a3@,a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00117
L00118:
	movl	a3@,a5	|(beginning do)
	movl	a5@,a2@+
	movl	_bnp,a1
	movl	a3@,a5
	movl	a5@,a1@+
	movl	a3@,a1@+
	movl	a3@,a5
	movl	a4@(32),a5@
	movl	a1,_bnp
L00119:
	movl	a3@,a5
	cmpl	a5@,d7
	jne	L00120
	movl	d7,d0
	jra	L00121
L00120:
	movl	a3@,a5
	movl	a5@,a0
	movl	a0@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00123
	movl	a4@(12),a2@+	|(calling format-ctl-string)
	movl	a3@,a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00122
L00123:
	movl	a4@(12),a2@+	|(calling format-ctl-list)
	movl	a3@,a5
	movl	a5@,a0
	movl	a0@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00122:
	movl	d0,a4@(12)
	movl	a3@,a5
	movl	a5@,a0
	movl	a3@,a5
	movl	a0@,a5@
	jra	L00119
L00121:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subql	#4,a2
L00117:
	cmpl	a4@(16),d7
	jeq	L00124
	movl	a4@(4),a5	|(calling maknam)
	|(calling nreverse)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(16)
L00124:
	movl	a4@(16),d0
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1@(-20),a5
	movl	a1@(-24),a5@
	movl	a1,_bnp
	subl	#24,_bnp
	subl	#20,a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subl	#12,a2
	moveml	a6@(-24),#L00099
	unlk	a6
	rts
L00099 = 15552
L00098 = 24
	.globl	F00125	|(fcn lambda format-ctl-list)
F00125:
	link	a6,#-L00128
	tstb	sp@(-132)
	moveml	#L00129,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00126:
	movl	a4@(4),a1	|(calling format-ctl-op)
	movl	a1@(4),a2@+
	movl	a4@,a2@+
	movl	a4@(4),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-12),a2
	subql	#8,a2
	moveml	a6@(-20),#L00129
	unlk	a6
	rts
L00129 = 15488
L00128 = 20
	.globl	F00130	|(fcn lambda format-ctl-string)
F00130:
	link	a6,#-L00133
	tstb	sp@(-132)
	moveml	#L00134,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00131:
	movl	_bnp,a1
	movl	a3@,a5
	movl	a5@,a1@+
	movl	a3@,a1@+
	movl	a3@,a5
	movl	a4@(4),a5@
	movl	a1,_bnp
	movl	#_nilatom+0x1400+0,a2@+	|(beginning do)
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a3@,a5	|(calling flatc)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	_bnp,a1
	movl	a3@(24),a5
	movl	a5@,a1@+
	movl	a3@(24),a1@+
	movl	a3@(24),a5
	movl	a4@(28),a5@
	movl	a3@(28),a5
	movl	a5@,a1@+
	movl	a3@(28),a1@+
	movl	a3@(28),a5
	movl	a4@(8),a5@
	movl	a1,_bnp
L00135:
	movl	a3@(28),a5
	movl	a5@,a0
	movl	a0@,a2@+
	movl	a3@(24),a5
	movl	a5@,a0
	movl	a0@,d0
	movl	a2@-,d6
	cmpl	d0,d6
	jmi	L00136
	movl	a4@,d0
	jra	L00137
L00136:
	movl	#_nilatom+0x1400+504,a2@+	|(calling format:string-search-char)
	movl	a3@,a5
	movl	a5@,a2@+
	movl	a3@(28),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-12),a2
	cmpl	d0,d7
	jne	L00138
	movl	a3@(24),a5
	movl	a5@,d0
L00138:
	movl	d0,a4@(16)
	movl	a4@(16),a2@+
	movl	a3@(28),a5
	movl	a5@,a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00141
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00142
	jra	L00143
L00141:
	subql	#8,a2
L00142:
	jra	L00140
L00143:
	movl	a3@,a5	|(calling format:nsubstring)
	movl	a5@,a2@+
	movl	a3@(28),a5
	movl	a5@,a2@+
	movl	a4@(16),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a4@(20)
	movl	a4@(20),a2@+	|(calling format:patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(28),a5	|(calling lessp)
	movl	a4@(16),a5@
	movl	a3@(28),a5
	movl	a5@,a2@+
	movl	a3@(24),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00144
	movl	a4@,d0
	jra	L00137
L00144:
	jra	L00139
L00140:
	movl	d7,d0
L00139:
	movl	d7,a2@+	|(beginning do)
	movl	d7,a2@+
	movl	#_nilatom+0x1400+40,a2@+	|(calling makhunk)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	#_nilatom+0x1400-4,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	_bnp,a1
	movl	a3@(32),a5
	movl	a5@,a1@+
	movl	a3@(32),a1@+
	movl	a3@(32),a5
	movl	a4@(36),a5@
	movl	a3@(36),a5
	movl	a5@,a1@+
	movl	a3@(36),a1@+
	movl	a3@(36),a5
	movl	a4@(32),a5@
	movl	a1,_bnp
L00145:
	movl	a3@(28),a5	|(calling lessp)
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00148
	movl	a3@(28),a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	a3@(28),a5
	movl	d0,a5@
	jra	L00149
L00148:
	movl	a3@(28),a5
	movl	a5@,d0
	addql	#4,d0
	movl	a3@(28),a5
	movl	d0,a5@
L00149:
	movl	a3@(28),a5
	movl	a5@,a2@+
	movl	a3@(24),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00146
	movl	d7,d0
	jra	L00147
L00146:
	movl	a3@,a5	|(calling getcharn)
	movl	a5@,a2@+
	movl	a3@(28),a5
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00150
	movl	a3@(28),a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	d0,a2@+
	jra	L00151
L00150:
	movl	a3@(28),a5
	movl	a5@,d0
	addql	#4,d0
	movl	d0,a2@+
L00151:
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(12)
	movl	a4@(12),a5
	cmpl	#48,a5@
	jmi	L00153
	movl	a4@(12),a5
	cmpl	#57,a5@
	jgt	L00153
	movl	a4@(52),d0	|(calling *)
	cmpl	a4@(52),d7
	jne	L00155
	movl	#_nilatom+0x1400+0,a2@+
	jra	L00156
L00155:
	movl	d0,a2@+
L00156:
	movl	#_nilatom+0x1400+40,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a0
	movl	a0@,d2
	movl	d2,sp@-
	movl	a4@(12),a5
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
	jcs	L00157
	jbsr	_qnewint
L00157:
	movl	d0,a4@(52)
	movl	a3@(16),a5
	movl	a5@,a4@(48)
	jra	L00152
L00153:
	cmpl	#_nilatom+0x1400+256,a4@(12)
	jne	L00158
	movl	a3@(16),a5
	movl	a5@,d6
	movl	a3@(36),a5
	movl	d6,a5@
	jra	L00152
L00158:
	cmpl	#_nilatom+0x1400+232,a4@(12)
	jne	L00159
	movl	a3@(16),a5
	movl	a5@,d6
	movl	a3@(32),a5
	movl	d6,a5@
	jra	L00152
L00159:
	cmpl	#_nilatom+0x1400+472,a4@(12)
	jeq	L00161
	cmpl	#_nilatom+0x1400+344,a4@(12)
	jne	L00160
L00161:
	cmpl	#_nilatom+0x1400+4088,a4@(44)
	jle	L00162
	movl	a4@(44),a0
	jbsr	_qoneplus
	movl	d0,a4@(44)
	jra	L00163
L00162:
	movl	a4@(44),d0
	addql	#4,d0
	movl	d0,a4@(44)
L00163:
	movl	a4@(44),a0
	movl	a0@,d2
	movl	a4@(40),a0
	movl	d2,d6
	asll	#2,d6
	movl	a0,a2@+
	lea	a0@(0,d6:L),a5
	movl	a5,sp@-
	movl	a4@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a4@
	movl	a4@(60),d0
	subql	#4,a2
	movl	sp@,a5
	movl	d0,a5@
	movl	a2@-,d0
	movl	a3@(4),a5
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00165
	movl	a3@(4),a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	a3@(4),a5
	movl	d0,a5@
	jra	L00166
L00165:
	movl	a3@(4),a5
	movl	a5@,d0
	addql	#4,d0
	movl	a3@(4),a5
	movl	d0,a5@
L00166:
	movl	d7,a4@(52)
	movl	d7,a4@(48)
	jra	L00152
L00160:
	cmpl	#_nilatom+0x1400+140,a4@(12)
	jne	L00167
	cmpl	#_nilatom+0x1400+4088,a4@(44)
	jle	L00168
	movl	a4@(44),a0
	jbsr	_qoneplus
	movl	d0,a4@(44)
	jra	L00169
L00168:
	movl	a4@(44),d0
	addql	#4,d0
	movl	d0,a4@(44)
L00169:
	movl	a4@(44),a0
	movl	a0@,d2
	movl	a4@(40),a0
	movl	d2,d6
	asll	#2,d6
	movl	a0,a2@+
	lea	a0@(0,d6:L),a5
	movl	a5,sp@-
	movl	a4@,a2@+	|(calling length)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	sp@,a5
	movl	d0,a5@
	movl	a2@-,d0
	jra	L00152
L00167:
	cmpl	#_nilatom+0x1400+176,a4@(12)
	jne	L00170
	cmpl	a4@(48),d7
	jeq	L00171
	cmpl	#_nilatom+0x1400+4088,a4@(44)
	jle	L00172
	movl	a4@(44),a0
	jbsr	_qoneplus
	movl	d0,a4@(44)
	jra	L00173
L00172:
	movl	a4@(44),d0
	addql	#4,d0
	movl	d0,a4@(44)
L00173:
	movl	a4@(44),a0
	movl	a0@,d2
	movl	a4@(40),a0
	movl	d2,d6
	asll	#2,d6
	movl	a4@(52),a0@(0,d6:L)
L00171:
	movl	d7,a4@(52)
	movl	a3@(16),a5
	movl	a5@,a4@(48)
	jra	L00152
L00170:
	movl	a4@(12),a5
	cmpl	#65,a5@
	jmi	L00174
	movl	a4@(12),a5
	cmpl	#90,a5@
	jgt	L00174
	movl	a4@(12),a5
	movl	a5@,sp@-
	movl	#97,d0
	subl	#65,d0
	movl	d0,d2
	movl	sp@+,d0
	addl	d2,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00175
	jbsr	_qnewint
L00175:
	movl	d0,a4@(12)
L00174:
	movl	a3@(28),a5
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00176
	movl	a3@(28),a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	a3@(28),a5
	movl	d0,a5@
	jra	L00177
L00176:
	movl	a3@(28),a5
	movl	a5@,d0
	addql	#4,d0
	movl	a3@(28),a5
	movl	d0,a5@
L00177:
	cmpl	a4@(48),d7
	jeq	L00178
	cmpl	#_nilatom+0x1400+4088,a4@(44)
	jle	L00179
	movl	a4@(44),a0
	jbsr	_qoneplus
	movl	d0,a4@(44)
	jra	L00180
L00179:
	movl	a4@(44),d0
	addql	#4,d0
	movl	d0,a4@(44)
L00180:
	movl	a4@(44),a0
	movl	a0@,d2
	movl	a4@(40),a0
	movl	d2,d6
	asll	#2,d6
	movl	a4@(52),a0@(0,d6:L)
L00178:
	movl	d7,a4@(48)
	movl	d7,a4@(52)
	movl	d7,a4@(16)
	cmpl	#_nilatom+0x1400+368,a4@(12)
	jne	L00182
	movl	#_nilatom+0x1400+368,a2@+	|(calling format:string-search-char)
	movl	a3@,a5
	movl	a5@,a2@+
	movl	a3@(28),a5
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00183
	movl	a3@(28),a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	d0,a2@+
	jra	L00184
L00183:
	movl	a3@(28),a5
	movl	a5@,d0
	addql	#4,d0
	movl	d0,a2@+
L00184:
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
	cmpl	a4@(56),d7
	jne	L00185
	movl	d7,a2@+	|(calling ferror)
	movl	a3@(40),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00185:
	movl	a3@,a5	|(calling format:nsubstring)
	movl	a5@,a2@+
	movl	a3@(28),a5
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00187
	movl	a3@(28),a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	d0,a2@+
	jra	L00188
L00187:
	movl	a3@(28),a5
	movl	a5@,d0
	addql	#4,d0
	movl	d0,a2@+
L00188:
	movl	a4@(56),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a4@(16)
	movl	a4@(16),a2@+
	movl	a3@(28),a5
	movl	a4@(56),a5@
	movl	a4@(60),d0
	subql	#8,a2
	jra	L00181
L00182:
	cmpl	#_nilatom+0x1400+40,a4@(12)
	jne	L00189
	movl	a3@(44),a2@+	|(calling concat)
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+136,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00181
L00189:
	movl	a4@(12),a2@+	|(calling ascii)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+144,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00181:
	movl	d0,a4@(20)
	movl	a4@(20),a4@(24)
	cmpl	a4@(20),d7
	jeq	L00191
	movl	a3@(48),a5
	movl	a4@(44),a5@
	movl	a4@(24),a2@+	|(calling format-ctl-op)
	movl	a4@,a2@+
	movl	a4@(40),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a4@
	jra	L00190
L00191:
	movl	d7,a2@+	|(calling ferror)
	movl	a3@(52),a2@+
	movl	a4@(16),a2@+
	movl	a3@,a5
	movl	a5@,a2@+
	lea	a2@(-16),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-16),a2
L00190:
	movl	d7,d0
	jra	L00147
L00152:
	jra	L00145
L00147:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1,_bnp
	subl	#16,_bnp
	subl	#24,a2
	jra	L00135
L00137:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1,_bnp
	subl	#16,_bnp
	subl	#24,a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subql	#8,a2
	moveml	a6@(-28),#L00134
	unlk	a6
	rts
L00134 = 15556
L00133 = 28
	.globl	F00193	|(fcn lambda format-ctl-op)
F00193:
	link	a6,#-L00196
	tstb	sp@(-132)
	moveml	#L00197,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00194:
	movl	d7,a2@+
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jne	L00199
	movl	a4@,a2@+	|(calling concat)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+136,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@
	jra	L00198
L00199:
	movl	d7,d0
L00198:
	movl	a4@,a2@+	|(beginning do)
	movl	a3@(56),a5
	movl	a5@,a2@+
L00202:
	cmpl	a4@(20),d7
	jne	L00203
	movl	d7,d0
	jra	L00204
L00203:
	movl	a4@(16),a2@+
	movl	a4@(20),a1
	movl	a1@(4),a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00206
	movl	a4@(20),a1
	movl	a1@(4),d0
	jra	L00204
|	jra	L00205
L00206:
	movl	d7,d0
L00205:
	movl	a4@(20),a5
	movl	a5@,a4@(20)
	jra	L00202
L00204:
	subql	#8,a2
	movl	d0,a4@(12)
	cmpl	d0,d7
	jeq	L00201
	movl	a3@(60),a2@+
	movl	a4@(12),a5
	movl	a5@,a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00208
	cmpl	a4@(4),d7
	jne	L00209
	movl	d7,a2@+	|(calling ferror)
	movl	a3@(64),a2@+
	movl	a4@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00209:
	movl	a4@(12),a5
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),a2@+
	movl	a4@(4),a1
	movl	a1@(4),a2@+
	movl	a4@(8),a2@+
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00211
	movl	a4@(16),a1
	cmpl	a1@(8),d7
	jeq	L00211
	movl	a4@(16),a1
	movl	a1@(8),a4@(16)
	cmpl	a1@(8),d7
	jra	L00210
L00211:
	movl	d7,d0
L00210:
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00214
	movl	a3@(68),a2@+
	movl	a4@(16),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00214
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-12),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00213
L00214:
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00213:
	movl	a3@(4),a5
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00216
	movl	a3@(4),a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	a3@(4),a5
	movl	d0,a5@
	jra	L00217
L00216:
	movl	a3@(4),a5
	movl	a5@,d0
	addql	#4,d0
	movl	a3@(4),a5
	movl	d0,a5@
L00217:
	movl	a4@(4),a5
	movl	a5@,d0
	jra	L00207
L00208:
	movl	a3@(72),a2@+
	movl	a4@(12),a5
	movl	a5@,a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00218
	movl	a4@(12),a5
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),a2@+
	movl	a4@(8),a2@+
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00220
	movl	a4@(16),a1
	cmpl	a1@(8),d7
	jeq	L00220
	movl	a4@(16),a1
	movl	a1@(8),a4@(16)
	cmpl	a1@(8),d7
	jra	L00219
L00220:
	movl	d7,d0
L00219:
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00223
	movl	a3@(68),a2@+
	movl	a4@(16),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00223
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-8),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00222
L00223:
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00222:
	movl	a4@(4),d0
	jra	L00207
L00218:
	movl	a3@(76),a2@+
	movl	a4@(12),a5
	movl	a5@,a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00225
	movl	a4@(12),a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),a2@+
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00227
	movl	a4@(16),a1
	cmpl	a1@(8),d7
	jeq	L00227
	movl	a4@(16),a1
	movl	a1@(8),a4@(16)
	cmpl	a1@(8),d7
	jra	L00226
L00227:
	movl	d7,d0
L00226:
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00230
	movl	a3@(68),a2@+
	movl	a4@(16),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00230
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-12),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00229
L00230:
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+152,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00229:
	jra	L00207
L00225:
	movl	d7,a2@+	|(calling ferror)
	movl	a3@(80),a2@+
	movl	a4@(12),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00207:
	jra	L00200
L00201:
	movl	d7,a2@+	|(calling ferror)
	movl	a3@(84),a2@+
	movl	a4@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	a4@(4),d0
L00200:
	subl	#16,a2
	moveml	a6@(-24),#L00197
	unlk	a6
	rts
L00197 = 15552
L00196 = 24
	.globl	F00232	|(fcn macro defformat)
F00232:
	link	a6,#-L00235
	tstb	sp@(-132)
	moveml	#L00236,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00233:
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
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@,a5
	movl	a5@,a1
	movl	a1@,a2@+
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
	andw	#516,d0
	jeq	L00238
	movl	a3@(88),a2@+	|(calling concat)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+136,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(4)
	jra	L00237
L00238:
	movl	d7,d0
L00237:
	movl	a4@(12),d5
	movl	a3@(92),d0
	cmpl	d0,d7
	jeq	L00243
	movl	d0,a0
L00244:
	cmpl	a0@(4),d5
	jeq	L00242
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00244
	movl	a0,d0
L00243:
	movl	d7,a2@+	|(calling ferror)
	movl	a3@(96),a2@+
	movl	a4@(12),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00241
L00242:
	movl	d7,d0
L00241:
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00247
	movl	a4@(8),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jeq	L00246
L00247:
	movl	d7,a2@+	|(calling ferror)
	movl	a3@(100),a2@+
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	lea	a2@(-16),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-16),a2
	jra	L00245
L00246:
	movl	d7,d0
L00245:
	movl	a4@(12),d5
	movl	a3@(104),d0
	cmpl	d0,d7
	jeq	L00249
	movl	d0,a0
L00251:
	cmpl	a0@(4),d5
	jeq	L00250
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00251
	movl	a0,d0
	jra	L00249
L00250:
	movl	a4@(8),a2@+	|(calling length)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	#_nilatom+0x1400+8,d0
	jeq	L00253
	movl	d7,a2@+	|(calling ferror)
	movl	a3@(108),a2@+
	movl	a4@(4),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00252
L00253:
	movl	d7,d0
L00252:
	jra	L00248
L00249:
	movl	a4@(8),a2@+	|(calling length)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	#_nilatom+0x1400+4,d0
	jeq	L00255
	movl	d7,a2@+	|(calling ferror)
	movl	a3@(112),a2@+
	movl	a4@(4),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00254
L00255:
	movl	d7,d0
L00254:
L00248:
	movl	a4@(4),a2@+	|(calling concat)
	movl	a3@(116),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+136,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(20)
	movl	a3@(120),a2@+
	movl	a3@(124),a2@+
	movl	a3@(128),a2@+
	movl	a4@(20),a2@+
	movl	a4@(8),a2@+
	movl	a4@(16),a2@+	|(calling append)
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+160,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(132),a2@+
	movl	a3@(136),a2@+
	movl	a3@(140),a2@+
	movl	a3@(144),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(148),a2@+
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
	movl	a3@(152),a2@+
	movl	a3@(136),a2@+
	movl	a3@(156),a2@+
	movl	a3@(160),a2@+
	movl	a3@(144),a2@+
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
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(16),a2@+
	movl	a3@(164),a2@+
	movl	a3@(56),a2@+
	movl	a3@(168),a2@+
	movl	a3@(172),a2@+
	movl	a3@(144),a2@+
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(144),a2@+
	movl	a4@(12),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(144),a2@+
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
	movl	a3@(176),a2@+
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
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subl	#24,a2
	moveml	a6@(-24),#L00236
	unlk	a6
	rts
L00236 = 15520
L00235 = 24
	.globl	F00256	|(fcn lambda d:format-handler)
F00256:
	link	a6,#-L00259
	tstb	sp@(-132)
	moveml	#L00260,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00257:
	movl	a4@(4),a1
	movl	a1@,a2@+
	cmpl	a1@,d7
	movl	a4@(4),a1
	movl	a1@(4),a2@+
	cmpl	a1@(4),d7
	movl	a3@(32),a5
	cmpl	a5@,d7
	jeq	L00262
	movl	a4@,a5
	movl	a5@,d6
	movl	a3@(180),a5
	cmpl	a5@,d6
	jpl	L00262
	movl	a4@,a5
	cmpl	#0,a5@
	jle	L00262
	movl	a4@,a2@+	|(calling roman-step)
	movl	#_nilatom+0x1400+0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00261
L00262:
	movl	a3@(36),a5
	cmpl	a5@,d7
	jeq	L00264
	movl	a4@,a2@+	|(calling english-print)
	movl	a3@(184),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+176,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00261
L00264:
	movl	#_nilatom+0x1400+40,a2@+
	movl	a3@(16),a5
	movl	a5@,a2@+
	cmpl	a4@(12),d7
	jne	L00266
	movl	#_nilatom+0x1400+128,a4@(12)
	jra	L00265
L00266:
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
	andw	#532,d0
	jne	L00267
	movl	a4@(12),a2@+	|(calling getcharn)
	movl	#_nilatom+0x1400+4,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(12)
	jra	L00265
L00267:
	movl	d7,d0
L00265:
	cmpl	a4@(8),d7
	jeq	L00270
	movl	a4@(8),a2@+	|(calling format-ctl-justify)
	movl	a4@,a2@+	|(calling flatc)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(12),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+184,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00270:
	movl	a4@,a2@+	|(calling format:patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#8,a2
	cmpl	d0,d7
	jne	L00261
	movl	d7,d0
L00261:
	subl	#16,a2
	moveml	a6@(-24),#L00260
	unlk	a6
	rts
L00260 = 15552
L00259 = 24
	.globl	F00271	|(fcn lambda f:format-handler)
F00271:
	link	a6,#-L00274
	tstb	sp@(-132)
	moveml	#L00275,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00272:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#4,a5@(0,d0:L)
	jeq	L00277
	movl	a4@,a2@+	|(calling format:patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00276
L00277:
	movl	a3@(188),a2@+
	movl	a4@(4),a1
	movl	a1@,a2@+
	cmpl	a1@,d7
	movl	_bnp,a1
	movl	a3@(192),a5
	movl	a5@,a1@+
	movl	a3@(192),a1@+
	movl	a3@(192),a5
	movl	a4@(8),a5@
	movl	a1,_bnp
	cmpl	a4@(12),d7
	jeq	L00279
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
	andw	#516,d0
	jeq	L00279
	movl	a4@(12),a5
	cmpl	#0,a5@
	jle	L00279
	movl	a4@(12),a5
	cmpl	#16,a5@
	jpl	L00279
	movl	a3@(196),a2@+	|(calling concat)
	movl	a4@(12),a2@+
	movl	a3@(200),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+136,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	a3@(192),a5
	movl	d0,a5@
	jra	L00278
L00279:
	movl	d7,d0
L00278:
	movl	a4@,a2@+	|(calling format:patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subql	#8,a2
L00276:
	subql	#8,a2
	moveml	a6@(-20),#L00275
	unlk	a6
	rts
L00275 = 15488
L00274 = 20
	.globl	F00283	|(fcn lambda r:format-handler)
F00283:
	link	a6,#-L00286
	tstb	sp@(-132)
	moveml	#L00287,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00284:
	movl	a4@,a2@+	|(calling format:anyradix-printer)
	movl	a4@(4),a2@+
	movl	d7,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+192,a5
	jbsr	a5@
	lea	a2@(-12),a2
	subql	#8,a2
	moveml	a6@(-20),#L00287
	unlk	a6
	rts
L00287 = 15488
L00286 = 20
	.globl	F00288	|(fcn lambda o:format-handler)
F00288:
	link	a6,#-L00291
	tstb	sp@(-132)
	moveml	#L00292,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00289:
	movl	a4@,a2@+	|(calling format:anyradix-printer)
	movl	a4@(4),a2@+
	movl	#_nilatom+0x1400+32,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+192,a5
	jbsr	a5@
	lea	a2@(-12),a2
	subql	#8,a2
	moveml	a6@(-20),#L00292
	unlk	a6
	rts
L00292 = 15488
L00291 = 20
	.globl	F00293	|(fcn lambda format:anyradix-printer)
F00293:
	link	a6,#-L00296
	tstb	sp@(-132)
	moveml	#L00297,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00294:
	cmpl	a4@(8),d7
	jeq	L00299
	movl	#_nilatom+0x1400+0,d0
	jra	L00298
L00299:
	movl	#_nilatom+0x1400+4,d0
L00298:
	movl	d0,a2@+
	cmpl	a4@(8),d7
	jne	L00301
	movl	a4@(4),a1
	movl	a1@,a4@(8)
	cmpl	a1@,d7
	jra	L00300
L00301:
	movl	d7,d0
L00300:
	cmpl	a4@(8),d7
	jne	L00303
	movl	a3@(32),a5
	cmpl	a5@,d7
	jne	L00305
	movl	a3@(36),a5
	cmpl	a5@,d7
	jne	L00305
	movl	a4@,a2@+	|(calling english-print)
	movl	a3@(184),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+176,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00304
L00305:
	movl	a3@(32),a5
	cmpl	a5@,d7
	jeq	L00307
	movl	a3@(36),a5
	cmpl	a5@,d7
	jne	L00307
	movl	a4@,a2@+	|(calling english-print)
	movl	a3@(204),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+176,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00304
L00307:
	movl	a3@(32),a5
	cmpl	a5@,d7
	jne	L00309
	movl	a3@(36),a5
	cmpl	a5@,d7
	jeq	L00309
	movl	a4@,a2@+	|(calling roman-step)
	movl	#_nilatom+0x1400+0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00304
L00309:
	movl	a3@(32),a5
	cmpl	a5@,d7
	jeq	L00311
	movl	a3@(36),a5
	cmpl	a5@,d7
	jeq	L00311
	movl	a3@(16),a5
	movl	a5@,a2@+
	movl	_bnp,a1
	movl	a3@(208),a5
	movl	a5@,a1@+
	movl	a3@(208),a1@+
	movl	a3@(208),a5
	movl	a4@(16),a5@
	movl	a1,_bnp
	movl	a4@,a2@+	|(calling roman-step)
	movl	#_nilatom+0x1400+0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subql	#4,a2
	jra	L00304
L00311:
	movl	d7,d0
L00304:
	jra	L00302
L00303:
	movl	a4@(12),a5
	movl	a5@,d2
	movl	a4@(4),a1
	movl	d2,d6
	asll	#2,d6
	movl	a1@(0,d6:L),a2@+
	cmpl	a1@(0,d6:L),d7
	movl	a4@(12),a5
	movl	a5@,d0
	addl	#1,d0
	movl	d0,d2
	movl	a4@(4),a1
	movl	d2,d6
	asll	#2,d6
	movl	a1@(0,d6:L),d0
	cmpl	a1@(0,d6:L),d7
	jne	L00313
	movl	#_nilatom+0x1400+128,a2@+
	jra	L00314
L00313:
	movl	d0,a2@+
L00314:
	movl	d7,a2@+
	cmpl	a4@(16),d7
	jeq	L00316
	movl	d7,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	_bnp,a1
	movl	a3@(12),a5
	movl	a5@,a1@+
	movl	a3@(12),a1@+
	movl	a3@(12),a5
	movl	a4@(28),a5@
	movl	a1,_bnp
	movl	a4@,a2@+	|(calling format-binpr)
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(12),a5
	movl	a5@,a0
	movl	a0@,a4@(24)
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1,_bnp
	subql	#8,_bnp
	subql	#4,a2	|(calling format-ctl-justify)
	movl	a4@(16),a2@+
	movl	a4@(24),a2@+	|(calling length)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(20),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+184,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d7,a2@+
	movl	a4@(24),a2@+	|(beginning do)
	|(calling nreverse)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(28)
	movl	a4@(28),a2@+
L00319:
	cmpl	a4@(32),d7
	jne	L00320
	movl	d7,d0
	jra	L00321
L00320:
	movl	a4@(32),a1	|(calling format:tyo)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(32),a5
	movl	a5@,a4@(32)
	jra	L00319
L00321:
	subql	#4,a2
	movl	a4@(28),d0
	subql	#4,a2
	jra	L00315
L00316:
	movl	a4@,a2@+	|(calling format-binpr)
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+200,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00315:
	subl	#12,a2
L00302:
	subl	#16,a2
	moveml	a6@(-28),#L00297
	unlk	a6
	rts
L00297 = 15556
L00296 = 28
	.globl	F00322	|(fcn lambda format-binpr)
F00322:
	link	a6,#-L00325
	tstb	sp@(-132)
	moveml	#L00326,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00323:
	movl	a4@,a2@+
	movl	#_nilatom+0x1400+0,a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00329
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00330
	jra	L00328
L00329:
	subql	#8,a2
L00330:
	movl	#_nilatom+0x1400+0,a2@+	|(calling format:patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00327
L00328:
	movl	a4@(4),a5
	cmpl	#36,a5@
	jgt	L00332
	movl	a4@(4),a5
	cmpl	#2,a5@
	jpl	L00331
L00332:
	movl	d7,a2@+	|(calling ferror)
	movl	a3@(212),a2@+
	movl	a4@(4),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00327
L00331:
	movl	a4@,a2@+	|(calling lessp)
	movl	#_nilatom+0x1400+0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00333
	movl	a3@(216),a2@+	|(calling format:patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@,a2@+	|(calling format-binpr1)
	|(calling minus)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+216,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00327
L00333:
	movl	a4@,a2@+	|(calling format-binpr1)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00327:
	movl	a4@,d0
	subql	#8,a2
	moveml	a6@(-24),#L00326
	unlk	a6
	rts
L00326 = 15552
L00325 = 24
	.globl	F00334	|(fcn lambda format-binpr1)
F00334:
	link	a6,#-L00337
	tstb	sp@(-132)
	moveml	#L00338,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00335:
	movl	a4@,a2@+
	movl	#_nilatom+0x1400+0,a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00340
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00341
	movl	d7,d0
	jra	L00342
L00340:
	subql	#8,a2
L00341:
	movl	a3@(16),d0
	jra	L00339
L00342:
	movl	a4@,a2@+	|(calling format-binpr1)
	|(calling quotient)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+232,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+224,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@,a2@+	|(calling format-prc)
	|(calling remainder)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+248,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00339:
	subql	#8,a2
	moveml	a6@(-24),#L00338
	unlk	a6
	rts
L00338 = 15552
L00337 = 24
	.globl	F00343	|(fcn lambda format-prc)
F00343:
	link	a6,#-L00346
	tstb	sp@(-132)
	moveml	#L00347,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00344:
	movl	a4@,a5
	cmpl	#10,a5@
	jpl	L00349
	movl	a4@,a2@+	|(calling format:patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00348
L00349:
	movl	#97,d0	|(calling format:tyo)
	|(calling plus)
	subl	#10,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00350
	jbsr	_qnewint
L00350:
	movl	d0,a2@+
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+256,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00348:
	subql	#4,a2
	moveml	a6@(-24),#L00347
	unlk	a6
	rts
L00347 = 15492
L00346 = 24
	.globl	F00351	|(fcn lambda format-ctl-octal)
F00351:
	link	a6,#-L00354
	tstb	sp@(-132)
	moveml	#L00355,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00352:
	movl	a4@(4),a1
	movl	a1@,a2@+
	cmpl	a1@,d7
	movl	a4@(4),a1
	movl	a1@(4),a2@+
	cmpl	a1@(4),d7
	movl	#_nilatom+0x1400+32,a2@+
	cmpl	a4@(12),d7
	jne	L00357
	movl	#_nilatom+0x1400+128,a4@(12)
	jra	L00356
L00357:
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
	andw	#532,d0
	jne	L00358
	movl	a4@(12),a2@+	|(calling getcharn)
	movl	#_nilatom+0x1400+4,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(12)
	jra	L00356
L00358:
	movl	d7,d0
L00356:
	cmpl	a4@(8),d7
	jeq	L00361
	movl	a4@(8),a2@+	|(calling format-ctl-justify)
	movl	a4@,a2@+	|(calling flatc)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(12),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+184,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00361:
	movl	a4@,a2@+	|(calling format:patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subl	#20,a2
	moveml	a6@(-20),#L00355
	unlk	a6
	rts
L00355 = 15488
L00354 = 20
	.globl	F00362	|(fcn lambda a:format-handler)
F00362:
	link	a6,#-L00365
	tstb	sp@(-132)
	moveml	#L00366,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00363:
	movl	a4@,a2@+	|(calling format-ctl-ascii)
	movl	a4@(4),a2@+
	movl	d7,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+264,a5
	jbsr	a5@
	lea	a2@(-12),a2
	subql	#8,a2
	moveml	a6@(-20),#L00366
	unlk	a6
	rts
L00366 = 15488
L00365 = 20
	.globl	F00367	|(fcn lambda format-ctl-ascii)
F00367:
	link	a6,#-L00370
	tstb	sp@(-132)
	moveml	#L00371,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00368:
	movl	a4@(4),a1
	movl	a1@,a2@+
	cmpl	a1@,d7
	movl	a4@(4),a1
	movl	a1@(4),a2@+
	cmpl	a1@(4),d7
	movl	a4@(4),a1
	movl	a1@(8),a2@+
	cmpl	a1@(8),d7
	movl	a4@(4),a1
	movl	a1@(12),a2@+
	cmpl	a1@(12),d7
	cmpl	a4@(24),d7
	jne	L00373
	movl	#_nilatom+0x1400+128,a4@(24)
	jra	L00372
L00373:
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
	andw	#532,d0
	jne	L00374
	movl	a4@(24),a2@+	|(calling getcharn)
	movl	#_nilatom+0x1400+4,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(24)
	jra	L00372
L00374:
	movl	d7,d0
L00372:
	cmpl	a4@(8),d7
	jeq	L00378
	movl	a4@,a2@+	|(calling format:print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+272,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00377
L00378:
	movl	a4@,a2@+	|(calling format:patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00377:
	cmpl	a4@(12),d7
	jeq	L00380
	cmpl	a4@(8),d7
	jeq	L00382
	movl	a4@,a2@+	|(calling flatsize)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+280,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00381
L00382:
	movl	a4@,a2@+	|(calling flatc)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00381
	movl	d7,d0
L00381:
	movl	d0,a2@+
	cmpl	a4@(20),d7
	jeq	L00384
	movl	a4@(20),a2@+	|(calling format-ctl-repeat-char)
	movl	a4@(24),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+288,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@(28),a5
	movl	a5@,d0
	movl	a4@(20),a5
	addl	a5@,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00385
	jbsr	_qnewint
L00385:
	movl	d0,a4@(28)
	jra	L00383
L00384:
	movl	d7,d0
L00383:
	cmpl	a4@(16),d7
	jeq	L00387
	movl	a4@(12),a5	|(calling format-ctl-repeat-char)
	movl	a5@,sp@-
	movl	a4@(12),a2@+	|(calling *)
	|(calling \)
	|(calling max)
	movl	a4@(28),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+296,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a0
	movl	a0@,d2
	movl	d2,d0
	movl	a4@(12),a5
	subl	a5@,d0
	movl	d0,sp@-
	movl	sp@+,d0
	subl	#1,d0
	movl	d0,d2
	movl	d2,d0
	movl	a4@(16),a5
	addl	a5@,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00388
	jbsr	_qnewint
L00388:
	movl	d0,a2@+
	movl	a4@(16),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+304,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@(16),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a0
	movl	a0@,d2
	movl	sp@+,d0
	addl	d2,d0
	movl	d0,d2
	movl	d2,d0
	movl	a4@(28),a5
	subl	a5@,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00389
	jbsr	_qnewint
L00389:
	movl	d0,a2@+
	movl	a4@(24),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+288,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00386
L00387:
	movl	a4@(12),a2@+	|(calling format-ctl-justify)
	movl	a4@(28),a2@+
	movl	a4@(24),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+184,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00386:
	subql	#4,a2
	jra	L00379
L00380:
	movl	d7,d0
L00379:
	subl	#28,a2
	moveml	a6@(-24),#L00371
	unlk	a6
	rts
L00371 = 15492
L00370 = 24
	.globl	F00390	|(fcn lambda s:format-handler)
F00390:
	link	a6,#-L00393
	tstb	sp@(-132)
	moveml	#L00394,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00391:
	movl	a4@,a2@+	|(calling format-ctl-ascii)
	movl	a4@(4),a2@+
	movl	a3@(16),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+264,a5
	jbsr	a5@
	lea	a2@(-12),a2
	subql	#8,a2
	moveml	a6@(-20),#L00394
	unlk	a6
	rts
L00394 = 15488
L00393 = 20
	.globl	F00395	|(fcn lambda c:format-handler)
F00395:
	link	a6,#-L00398
	tstb	sp@(-132)
	moveml	#L00399,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00396:
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
	jeq	L00402
	movl	a4@,a5
	cmpl	#0,a5@
	jmi	L00402
	movl	a4@,a5
	cmpl	#127,a5@
	jle	L00401
L00402:
	movl	d7,a2@+	|(calling ferror)
	movl	a3@(220),a2@+
	movl	a4@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00400
L00401:
	movl	d7,d0
L00400:
	movl	a3@(32),a5
	cmpl	a5@,d7
	jne	L00406
	movl	a3@(36),a5
	cmpl	a5@,d7
	jne	L00406
	movl	a4@,a2@+	|(calling format:patom)
	|(calling ascii)
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
	jra	L00405
L00406:
	movl	d7,a2@+
	movl	a4@,a2@+	|(calling rassq)
	movl	a3@(224),a5
	movl	a5@,a0
	movl	a0@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a0
	movl	a0@(4),a4@(8)
	cmpl	a0@(4),d7
	jeq	L00409
	movl	a3@(32),a5
	cmpl	a5@,d7
	jeq	L00411
	movl	a4@(8),a2@+	|(calling format:patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00410
L00411:
	movl	a3@(36),a5
	cmpl	a5@,d7
	jeq	L00412
	movl	a3@(228),a2@+	|(calling format:patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(8),a2@+	|(calling format:patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00410
L00412:
	movl	d7,d0
L00410:
	jra	L00408
L00409:
	movl	a4@,a5
	cmpl	#32,a5@
	jpl	L00413
	movl	a4@,a5
	movl	a5@,d0
	addl	#64,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00414
	jbsr	_qnewint
L00414:
	movl	d0,a4@
	movl	a3@(32),a5
	cmpl	a5@,d7
	jeq	L00416
	movl	a3@(232),a2@+	|(calling format:patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@,a2@+	|(calling format:patom)
	|(calling ascii)
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
	jra	L00415
L00416:
	movl	a3@(36),a5
	cmpl	a5@,d7
	jeq	L00417
	movl	a3@(236),a2@+	|(calling format:patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@,a2@+	|(calling format:patom)
	|(calling ascii)
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
	jra	L00415
L00417:
	movl	d7,d0
L00415:
	jra	L00408
L00413:
	movl	a3@(32),a5
	cmpl	a5@,d7
	jeq	L00419
	movl	a4@,a2@+	|(calling format:patom)
	|(calling ascii)
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
	jra	L00418
L00419:
	movl	a3@(36),a5
	cmpl	a5@,d7
	jeq	L00420
	movl	a3@(240),a2@+	|(calling format:patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@,a2@+	|(calling format:patom)
	|(calling ascii)
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
	jra	L00418
L00420:
	movl	d7,d0
L00418:
L00408:
	subql	#4,a2
L00405:
	subql	#8,a2
	moveml	a6@(-24),#L00399
	unlk	a6
	rts
L00399 = 15492
L00398 = 24
	.globl	F00421	|(fcn lambda p:format-handler)
F00421:
	link	a6,#-L00424
	tstb	sp@(-132)
	moveml	#L00425,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00422:
	movl	d7,a2@+
	movl	a3@(32),a5
	cmpl	a5@,d7
	jeq	L00427
	movl	a3@(4),a5	|(calling nthcdr)
	cmpl	#_nilatom+0x1400-4096,a5@
	jle	L00428
	movl	a3@(4),a5
	cmpl	#_nilatom+0x1400+4092,a5@
	jle	L00429
L00428:
	movl	a3@(4),a5
	movl	a5@,a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00430
L00429:
	movl	a3@(4),a5
	movl	a5@,d0
	subql	#4,d0
	movl	d0,a2@+
L00430:
	movl	a3@(8),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+320,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a0
	movl	a0@(4),a4@(8)
	jra	L00426
L00427:
	cmpl	a4@,d7
	jne	L00431
	movl	d7,a2@+	|(calling ferror)
	movl	a3@(244),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00426
L00431:
	movl	a4@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a4@
	movl	a4@(12),d0
	subql	#4,a2
	movl	d0,a4@(8)
	movl	a3@(4),a5
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00433
	movl	a3@(4),a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	a3@(4),a5
	movl	d0,a5@
	jra	L00434
L00433:
	movl	a3@(4),a5
	movl	a5@,d0
	addql	#4,d0
	movl	a3@(4),a5
	movl	d0,a5@
L00434:
L00426:
	cmpl	#_nilatom+0x1400+4,a4@(8)
	jne	L00436
	movl	a3@(36),a5
	cmpl	a5@,d7
	jeq	L00438
	movl	#_nilatom+0x1400+484,a2@+	|(calling format:tyo)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00437
L00438:
	movl	d7,d0
L00437:
	jra	L00435
L00436:
	movl	a3@(36),a5
	cmpl	a5@,d7
	jeq	L00440
	movl	#_nilatom+0x1400+420,a2@+	|(calling format:tyo)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	#_nilatom+0x1400+404,a2@+	|(calling format:tyo)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	#_nilatom+0x1400+460,a2@+	|(calling format:tyo)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00439
L00440:
	movl	#_nilatom+0x1400+460,a2@+	|(calling format:tyo)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00439:
L00435:
	movl	a4@,d0
	subl	#12,a2
	moveml	a6@(-20),#L00425
	unlk	a6
	rts
L00425 = 15488
L00424 = 20
	.globl	F00441	|(fcn lambda *:format-handler)
F00441:
	link	a6,#-L00444
	tstb	sp@(-132)
	moveml	#L00445,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00442:
	movl	a4@(4),a1
	movl	a1@,d0
	cmpl	a1@,d7
	jne	L00446
	movl	#_nilatom+0x1400+4,a2@+
	jra	L00447
L00446:
	movl	d0,a2@+
L00447:
	movl	a3@(32),a5
	cmpl	a5@,d7
	jeq	L00449
	movl	a4@(8),a2@+	|(calling minus)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+216,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(8)
	jra	L00448
L00449:
	movl	d7,d0
L00448:
	movl	a3@(4),a5
	movl	a5@,a0
	movl	a0@,d2
	movl	d2,d0
	movl	a4@(8),a5
	addl	a5@,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00450
	jbsr	_qnewint
L00450:
	movl	a3@(4),a5
	movl	d0,a5@
	movl	a3@(4),a5	|(calling nthcdr)
	movl	a5@,a2@+
	movl	a3@(8),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+320,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subl	#12,a2
	moveml	a6@(-24),#L00445
	unlk	a6
	rts
L00445 = 15492
L00444 = 24
	.globl	F00451	|(fcn lambda g:format-handler)
F00451:
	link	a6,#-L00454
	tstb	sp@(-132)
	moveml	#L00455,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00452:
	movl	a4@(4),a1
	movl	a1@,d0
	cmpl	a1@,d7
	jne	L00456
	movl	#_nilatom+0x1400+4,a2@+
	jra	L00457
L00456:
	movl	d0,a2@+
L00457:
	movl	a4@(8),a2@+	|(calling nthcdr)
	movl	a3@(8),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+320,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subl	#12,a2
	moveml	a6@(-20),#L00455
	unlk	a6
	rts
L00455 = 15488
L00454 = 20
	.globl	F00458	|(fcn lambda %:format-handler)
F00458:
	link	a6,#-L00461
	tstb	sp@(-132)
	moveml	#L00462,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00459:
	movl	a4@,a1
	movl	a1@,d0
	cmpl	a1@,d7
	jne	L00463
	movl	#_nilatom+0x1400+4,a2@+
	jra	L00464
L00463:
	movl	d0,a2@+
L00464:
	movl	#_nilatom+0x1400+0,a2@+	|(beginning do)
L00465:
	movl	a4@(8),a2@+
	movl	a4@(4),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00468
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00469
	jra	L00466
L00468:
	subql	#8,a2
L00469:
	movl	d7,d0
	jra	L00467
L00466:
	lea	a2@,a5	|(calling format:terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+328,a5
	jbsr	a5@
	lea	a2@,a2
	cmpl	#_nilatom+0x1400+4088,a4@(8)
	jle	L00470
	movl	a4@(8),a0
	jbsr	_qoneplus
	movl	d0,a4@(8)
	jra	L00471
L00470:
	movl	a4@(8),d0
	addql	#4,d0
	movl	d0,a4@(8)
L00471:
	jra	L00465
L00467:
	subl	#12,a2
	moveml	a6@(-24),#L00462
	unlk	a6
	rts
L00462 = 15552
L00461 = 24
	.globl	F00472	|(fcn lambda ch10:format-handler)
F00472:
	link	a6,#-L00475
	tstb	sp@(-132)
	moveml	#L00476,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00473:
	movl	a3@(36),a5
	cmpl	a5@,d7
	jeq	L00478
	movl	#_nilatom+0x1400+40,a2@+	|(calling format:tyo)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00477
L00478:
	movl	d7,d0
L00477:
	movl	a3@(32),a5
	cmpl	a5@,d7
	jne	L00480
	movl	a3@(28),a5
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00481
	movl	a3@(28),a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	a3@(28),a5
	movl	d0,a5@
	jra	L00482
L00481:
	movl	a3@(28),a5
	movl	a5@,d0
	addql	#4,d0
	movl	a3@(28),a5
	movl	d0,a5@
L00482:
L00483:	|(beginning do)
	movl	a3@(28),a5	|(calling lessp)
	movl	a5@,a2@+
	movl	a3@(24),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00484
	movl	d7,d0
	jra	L00485
L00484:
	movl	a3@,a5	|(calling getcharn)
	movl	a5@,a2@+
	movl	a3@(28),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,d5
	movl	a3@(248),d0
	cmpl	d0,d7
	jeq	L00487
	movl	d0,a0
L00489:
	cmpl	a0@(4),d5
	jeq	L00488
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00489
	movl	a0,d0
	jra	L00487
L00488:
	movl	a3@(28),a5
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00490
	movl	a3@(28),a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	a3@(28),a5
	movl	d0,a5@
	jra	L00491
L00490:
	movl	a3@(28),a5
	movl	a5@,d0
	addql	#4,d0
	movl	a3@(28),a5
	movl	d0,a5@
L00491:
	jra	L00486
L00487:
	movl	a3@(28),a5
	cmpl	#_nilatom+0x1400-4096,a5@
	jle	L00492
	movl	a3@(28),a5
	cmpl	#_nilatom+0x1400+4092,a5@
	jle	L00493
L00492:
	movl	a3@(28),a5
	movl	a5@,a0
	jbsr	_qoneminus
	movl	a3@(28),a5
	movl	d0,a5@
	jra	L00494
L00493:
	movl	a3@(28),a5
	movl	a5@,d0
	subql	#4,d0
	movl	a3@(28),a5
	movl	d0,a5@
L00494:
	movl	d7,d0
	jra	L00485
L00486:
	jra	L00483
L00485:
	jra	L00479
L00480:
	movl	d7,d0
L00479:
	subql	#4,a2
	moveml	a6@(-24),#L00476
	unlk	a6
	rts
L00476 = 15520
L00475 = 24
	.globl	F00495	|(fcn lambda &:format-handler)
F00495:
	link	a6,#-L00498
	tstb	sp@(-132)
	moveml	#L00499,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00496:
	lea	a2@,a5	|(calling format:fresh-line)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+336,a5
	jbsr	a5@
	lea	a2@,a2
	subql	#4,a2
	moveml	a6@(-20),#L00499
	unlk	a6
	rts
L00499 = 15488
L00498 = 20
	.globl	F00500	|(fcn lambda x:format-handler)
F00500:
	link	a6,#-L00503
	tstb	sp@(-132)
	moveml	#L00504,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00501:
	movl	a4@,a1	|(calling format-ctl-repeat-char)
	movl	a1@,a2@+
	cmpl	a1@,d7
	movl	#_nilatom+0x1400+128,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+288,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#4,a2
	moveml	a6@(-20),#L00504
	unlk	a6
	rts
L00504 = 15488
L00503 = 20
	.globl	F00505	|(fcn lambda |:format-handler)
F00505:
	link	a6,#-L00508
	tstb	sp@(-132)
	moveml	#L00509,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00506:
	movl	a4@,a1	|(calling format-ctl-repeat-char)
	movl	a1@,a2@+
	cmpl	a1@,d7
	movl	#_nilatom+0x1400+48,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+288,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#4,a2
	moveml	a6@(-20),#L00509
	unlk	a6
	rts
L00509 = 15488
L00508 = 20
	.globl	F00510	|(fcn lambda ~:format-handler)
F00510:
	link	a6,#-L00513
	tstb	sp@(-132)
	moveml	#L00514,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00511:
	movl	a4@,a1	|(calling format-ctl-repeat-char)
	movl	a1@,a2@+
	cmpl	a1@,d7
	movl	#_nilatom+0x1400+504,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+288,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#4,a2
	moveml	a6@(-20),#L00514
	unlk	a6
	rts
L00514 = 15488
L00513 = 20
	.globl	F00515	|(fcn lambda format-ctl-repeat-char)
F00515:
	link	a6,#-L00518
	tstb	sp@(-132)
	moveml	#L00519,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00516:
	cmpl	a4@,d7
	jne	L00521
	movl	#_nilatom+0x1400+4,a4@
	jra	L00520
L00521:
	movl	d7,d0
L00520:
	movl	#_nilatom+0x1400+0,a2@+	|(beginning do)
L00522:
	movl	a4@(8),a5
	movl	a5@,d6
	movl	a4@,a5
	cmpl	a5@,d6
	jne	L00523
	movl	d7,d0
	jra	L00524
L00523:
	movl	a4@(4),a2@+	|(calling format:tyo)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	#_nilatom+0x1400+4088,a4@(8)
	jle	L00525
	movl	a4@(8),a0
	jbsr	_qoneplus
	movl	d0,a4@(8)
	jra	L00526
L00525:
	movl	a4@(8),d0
	addql	#4,d0
	movl	d0,a4@(8)
L00526:
	jra	L00522
L00524:
	subl	#12,a2
	moveml	a6@(-24),#L00519
	unlk	a6
	rts
L00519 = 15552
L00518 = 24
	.globl	F00529	|(fcn lexpr format-ctl-justify)
F00529:
	link	a6,#-L00532
	tstb	sp@(-132)
	moveml	#L00533,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00530:
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
	jle	L00539
	movl	#_nilatom+0x1400+128,a4@(12)
	jra	L00538
L00539:
	movl	#_nilatom+0x1400+12,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(12)
L00538:
	cmpl	a4@(4),d7
	jeq	L00542
	movl	a4@(4),a2@+	|(calling greaterp)
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00542
	movl	a4@(4),a5	|(calling format-ctl-repeat-char)
	movl	a5@,d0
	movl	a4@(8),a5
	subl	a5@,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00543
	jbsr	_qnewint
L00543:
	movl	d0,a2@+
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+288,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00544
L00542:
	movl	d7,d0
L00544:
	subl	#16,a2
	moveml	a6@(-28),#L00533
	unlk	a6
	rts
L00533 = 15556
L00532 = 28
	.globl	F00545	|(fcn lambda q:format-handler)
F00545:
	link	a6,#-L00548
	tstb	sp@(-132)
	moveml	#L00549,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00546:
	movl	a3@(48),a5	|(beginning do)
	movl	a5@,a2@+
	movl	d7,a2@+
L00550:
	movl	a4@(8),a5
	cmpl	#0,a5@
	jpl	L00551
	movl	a4@,a2@+	|(calling apply)
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+352,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00552
L00551:
	movl	a4@(8),a5
	movl	a5@,d2
	movl	a4@(4),a1
	movl	d2,d6
	asll	#2,d6
	movl	a1@(0,d6:L),a2@+
	cmpl	a1@(0,d6:L),d7
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	cmpl	#_nilatom+0x1400-4096,a4@(8)
	jle	L00553
	cmpl	#_nilatom+0x1400+4092,a4@(8)
	jle	L00554
L00553:
	movl	a4@(8),a0
	jbsr	_qoneminus
	movl	d0,a4@(8)
	jra	L00555
L00554:
	movl	a4@(8),d0
	subql	#4,d0
	movl	d0,a4@(8)
L00555:
	jra	L00550
L00552:
	subl	#16,a2
	moveml	a6@(-28),#L00549
	unlk	a6
	rts
L00549 = 15556
L00548 = 28
	.globl	F00558	|(fcn lexpr case-scan)
F00558:
	link	a6,#-L00561
	tstb	sp@(-132)
	moveml	#L00562,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00559:
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
	movl	#2,d6
	movl	a4@,a5
	cmpl	a5@,d6
	jle	L00566
	movl	a3@(24),a5
	movl	a5@,a4@(8)
	jra	L00565
L00566:
	movl	#_nilatom+0x1400+8,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(8)
L00565:
	movl	#3,d6
	movl	a4@,a5
	cmpl	a5@,d6
	jle	L00570
	movl	#_nilatom+0x1400+4,a4@(12)
	jra	L00569
L00570:
	movl	#_nilatom+0x1400+12,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(12)
L00569:
	movl	a3@(252),d0
	movl	d7,sp@-
	movl	d0,sp@-
	movl	#2,sp@-
	movl	a2,_np
	movl	a2,_lbot
	jbsr	_qpushframe
	movl	d0,_errp
	tstl	_retval
	jeq	L00574
	movl	_lispretval,d0
	jra	L00573
L00574:
	movl	#_nilatom+0x1400+0,a2@+	|(beginning do)
L00575:
	movl	a4@(16),a5
	movl	a5@,d6
	movl	a4@(12),a5
	cmpl	a5@,d6
	jmi	L00576
	movl	a3@(16),a5
	movl	a5@,d0
	jra	L00577
L00576:
	movl	d7,a2@+	|(beginning do)
L00578:
	movl	a3@(28),a5
	movl	a5@,a0
	movl	a0@,d0
	movl	a4@(8),a5
	cmpl	a5@,d0
	jmi	L00579
	movl	d7,sp@-
	movl	a3@(252),sp@-
	movl	#3,sp@-
	jbsr	_Inonlocalgo
	jra	L00580
L00579:
	movl	a3@,a5	|(calling getcharn)
	movl	a5@,a2@+
	movl	a3@(28),a5
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00581
	movl	a3@(28),a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	d0,a2@+
	jra	L00582
L00581:
	movl	a3@(28),a5
	movl	a5@,d0
	addql	#4,d0
	movl	d0,a2@+
L00582:
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(20)
	movl	a3@(28),a5
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00583
	movl	a3@(28),a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	a3@(28),a5
	movl	d0,a5@
	jra	L00584
L00583:
	movl	a3@(28),a5
	movl	a5@,d0
	addql	#4,d0
	movl	a3@(28),a5
	movl	d0,a5@
L00584:
	cmpl	#_nilatom+0x1400+504,a4@(20)
	jne	L00586
	movl	a3@,a5	|(calling getcharn)
	movl	a5@,a2@+
	movl	a3@(28),a5
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00587
	movl	a3@(28),a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	d0,a2@+
	jra	L00588
L00587:
	movl	a3@(28),a5
	movl	a5@,d0
	addql	#4,d0
	movl	d0,a2@+
L00588:
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(20)
	movl	a3@(28),a5
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00589
	movl	a3@(28),a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	a3@(28),a5
	movl	d0,a5@
	jra	L00590
L00589:
	movl	a3@(28),a5
	movl	a5@,d0
	addql	#4,d0
	movl	a3@(28),a5
	movl	d0,a5@
L00590:
	movl	a4@(20),a2@+
	movl	a4@(4),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00593
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00594
	jra	L00592
L00593:
	subql	#8,a2
L00594:
	movl	a3@(16),a5
	movl	a5@,d0
	jra	L00580
|	jra	L00591
L00592:
	cmpl	#_nilatom+0x1400+364,a4@(20)
	jeq	L00596
	cmpl	#_nilatom+0x1400+232,a4@(20)
	jeq	L00598
	cmpl	#_nilatom+0x1400+256,a4@(20)
	jne	L00595
L00598:
	movl	a3@,a5	|(calling getcharn)
	movl	a5@,a2@+
	movl	a3@(28),a5
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00599
	movl	a3@(28),a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	a3@(28),a5
	movl	d0,a5@
	jra	L00600
L00599:
	movl	a3@(28),a5
	movl	a5@,d0
	addql	#4,d0
	movl	a3@(28),a5
	movl	d0,a5@
L00600:
	movl	a3@(28),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	#_nilatom+0x1400+364,d0
	jne	L00595
L00596:
	movl	#_nilatom+0x1400+372,a2@+	|(calling case-scan)
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00591
L00595:
	movl	d7,d0
L00591:
	jra	L00585
L00586:
	movl	d7,d0
L00585:
	jra	L00578
L00580:
	subql	#4,a2
	cmpl	#_nilatom+0x1400+4088,a4@(16)
	jle	L00601
	movl	a4@(16),a0
	jbsr	_qoneplus
	movl	d0,a4@(16)
	jra	L00602
L00601:
	movl	a4@(16),d0
	addql	#4,d0
	movl	d0,a4@(16)
L00602:
	jra	L00575
L00577:
	subql	#4,a2
L00573:
	movl	_errp,a5
	movl	a5@(12),_errp
	movl	a5,sp
	addl	#32,sp
	subl	#16,a2
	moveml	a6@(-24),#L00562
	unlk	a6
	rts
L00562 = 15552
L00561 = 24
	.globl	F00603	|(fcn lambda [:format-handler)
F00603:
	link	a6,#-L00606
	tstb	sp@(-132)
	moveml	#L00607,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00604:
	movl	a3@(28),a5
	movl	a5@,a2@+
	movl	a3@(48),a5
	movl	a5@,a0
	movl	a0@,d0
	cmpl	#-1,d0
	jle	L00609
	movl	a4@(4),a1
	movl	a1@,d0
	cmpl	a1@,d7
	jra	L00608
L00609:
	cmpl	a4@,d7
	jne	L00611
	movl	a3@(256),a2@+	|(calling error)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+368,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00610
L00611:
	movl	d7,d0
L00610:
	movl	a4@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a4@
	movl	a3@(4),a5
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00613
	movl	a3@(4),a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	a3@(4),a5
	movl	d0,a5@
	jra	L00614
L00613:
	movl	a3@(4),a5
	movl	a5@,d0
	addql	#4,d0
	movl	a3@(4),a5
	movl	d0,a5@
L00614:
	movl	a4@(12),d0
	subql	#4,a2
L00608:
	movl	d0,a2@+
	movl	a3@(32),a5
	cmpl	a5@,d7
	jeq	L00615
	cmpl	a4@(12),d7
	jeq	L00617
	movl	#_nilatom+0x1400+4,d0
	jra	L00616
L00617:
	movl	#_nilatom+0x1400+0,d0
L00616:
	movl	d0,a4@(12)
L00615:
	cmpl	a4@(12),d7
	jne	L00618
	movl	d7,a2@+	|(calling ferror)
	movl	a3@(260),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00618:
	movl	a4@(12),a5
	cmpl	#0,a5@
	jmi	L00620
	movl	#_nilatom+0x1400+372,a2@+	|(calling case-scan)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00621
	movl	d7,a2@+	|(calling ferror)
	movl	a3@(264),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00621:
	movl	a3@(28),a5
	movl	a5@,a2@+
	movl	a3@(28),a5
	movl	a4@(8),a5@
	movl	#_nilatom+0x1400+236,a2@+	|(calling case-scan)
	movl	a4@(16),a2@+
	movl	a4@(12),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-12),a2
	subql	#4,a2
	jra	L00619
L00620:
	movl	d7,d0
L00619:
	movl	a4@,d0
	subl	#16,a2
	moveml	a6@(-20),#L00607
	unlk	a6
	rts
L00607 = 15488
L00606 = 20
	.globl	F00622	|(fcn lambda ]:format-handler)
F00622:
	link	a6,#-L00625
	tstb	sp@(-132)
	moveml	#L00626,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00623:
	movl	d7,d0
	subql	#4,a2
	moveml	a6@(-20),#L00626
	unlk	a6
	rts
L00626 = 15488
L00625 = 20
	.globl	F00627	|(fcn lambda ;:format-handler)
F00627:
	link	a6,#-L00630
	tstb	sp@(-132)
	moveml	#L00631,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00628:
	movl	#_nilatom+0x1400+372,a2@+	|(calling case-scan)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	moveml	a6@(-20),#L00631
	unlk	a6
	rts
L00631 = 15488
L00630 = 20
	.globl	F00632	|(fcn lambda {:format-handler)
F00632:
	link	a6,#-L00635
	tstb	sp@(-132)
	moveml	#L00636,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00633:
	movl	a4@(4),a1
	movl	a1@,d0
	cmpl	a1@,d7
	jne	L00637
	movl	#_nilatom+0x1400-4,a2@+
	jra	L00638
L00637:
	movl	d0,a2@+
L00638:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	#_nilatom+0x1400+504,a2@+	|(beginning do)
	|(calling format:string-search-char)
	movl	a3@,a5
	movl	a5@,a2@+
	movl	a3@(28),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a2@+
L00639:
	cmpl	a4@(32),d7
	jeq	L00642
	cmpl	#_nilatom+0x1400+4088,a4@(32)
	jle	L00645
	movl	a4@(32),a0
	jbsr	_qoneplus
	movl	d0,a2@+
	jra	L00646
L00645:
	movl	a4@(32),d0
	addql	#4,d0
	movl	d0,a2@+
L00646:
	movl	a3@(24),a5
	movl	a5@,a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00643
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00644
	jra	L00640
L00643:
	subql	#8,a2
L00644:
L00642:
	movl	d7,a2@+	|(calling ferror)
	movl	a3@(268),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00641
L00640:
	movl	#_nilatom+0x1400+500,a2@+
	movl	a3@,a5	|(calling getcharn)
	movl	a5@,a2@+
	movl	a4@(32),a5
	movl	a5@,d0
	addl	#2,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00649
	jbsr	_qnewint
L00649:
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00648
	movl	a3@,a5	|(calling format:nsubstring)
	movl	a5@,a2@+
	movl	a3@(28),a5
	movl	a5@,a2@+
	movl	a4@(32),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a4@(12)
	movl	a4@(32),a5
	movl	a5@,d0
	addl	#2,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00650
	jbsr	_qnewint
L00650:
	movl	a3@(28),a5
	movl	d0,a5@
	movl	a3@(16),a5
	movl	a5@,d0
	jra	L00641
|	jra	L00647
L00648:
	movl	#_nilatom+0x1400+232,a2@+
	movl	a3@,a5	|(calling getcharn)
	movl	a5@,a2@+
	movl	a4@(32),a5
	movl	a5@,d0
	addl	#2,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00653
	jbsr	_qnewint
L00653:
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00651
	movl	#_nilatom+0x1400+500,a2@+
	movl	a3@,a5	|(calling getcharn)
	movl	a5@,a2@+
	movl	a4@(32),a5
	movl	a5@,d0
	addl	#3,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00654
	jbsr	_qnewint
L00654:
	movl	d0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00651
	movl	a3@,a5	|(calling format:nsubstring)
	movl	a5@,a2@+
	movl	a3@(28),a5
	movl	a5@,a2@+
	movl	a4@(32),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a4@(12)
	movl	a4@(32),a5
	movl	a5@,d0
	addl	#3,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00655
	jbsr	_qnewint
L00655:
	movl	a3@(28),a5
	movl	d0,a5@
	movl	a3@(16),a5
	movl	a5@,a4@(16)
	movl	a3@(16),a5
	movl	a5@,d0
	jra	L00641
|	jra	L00647
L00651:
	movl	d7,d0
L00647:
	movl	#_nilatom+0x1400+504,a2@+	|(calling format:string-search-char)
	movl	a3@,a5
	movl	a5@,a2@+
	cmpl	#_nilatom+0x1400+4088,a4@(32)
	jle	L00656
	movl	a4@(32),a0
	jbsr	_qoneplus
	movl	d0,a2@+
	jra	L00657
L00656:
	movl	a4@(32),d0
	addql	#4,d0
	movl	d0,a2@+
L00657:
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a4@(32)
	jra	L00639
L00641:
	subql	#4,a2
	movl	#_nilatom+0x1400+0,a2@+
	movl	a4@(12),a2@+	|(calling flatc)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00659
	movl	a4@,a1
	movl	a1@(4),a2@+
	movl	a4@,a5
	movl	a5@,a4@
	movl	a4@(32),d0
	subql	#4,a2
	movl	d0,a4@(12)
	movl	a3@(4),a5
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00661
	movl	a3@(4),a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	a3@(4),a5
	movl	d0,a5@
	jra	L00662
L00661:
	movl	a3@(4),a5
	movl	a5@,d0
	addql	#4,d0
	movl	a3@(4),a5
	movl	d0,a5@
L00662:
	jra	L00658
L00659:
	movl	d7,d0
L00658:
	movl	a3@(36),a5
	cmpl	a5@,d7
	jne	L00664
	movl	a4@,a5
	movl	a5@,a4@(20)
	movl	a3@(4),a5
	movl	a5@,a4@(28)
	movl	a3@(4),a5
	movl	#_nilatom+0x1400+0,a5@
	movl	a3@(8),a5
	movl	a5@,a4@(24)
	movl	a4@,a1
	movl	a3@(8),a5
	movl	a1@(4),a5@
	movl	a3@(8),a5
	movl	a5@,a4@
	jra	L00663
L00664:
	movl	d7,d0
L00663:
	movl	a3@(272),d0
	movl	d7,sp@-
	movl	d0,sp@-
	movl	#2,sp@-
	movl	a2,_np
	movl	a2,_lbot
	jbsr	_qpushframe
	movl	d0,_errp
	tstl	_retval
	jeq	L00666
	movl	_lispretval,d0
	jra	L00665
L00666:
	movl	a4@(8),a2@+	|(beginning do)
L00667:
	cmpl	a4@(16),d7
	jne	L00668
	cmpl	a4@,d7
	jeq	L00671
	cmpl	#_nilatom+0x1400+0,a4@(32)
	jne	L00668
L00671:
	movl	d7,d0
	jra	L00669
L00668:
	movl	d7,a4@(16)
	movl	a3@(32),a5
	cmpl	a5@,d7
	jne	L00673
	movl	a4@,a2@+	|(calling format-ctl-string)
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@
	jra	L00672
L00673:
	movl	a3@(276),d0
	movl	d7,sp@-
	movl	d0,sp@-
	movl	#2,sp@-
	movl	a2,_np
	movl	a2,_lbot
	jbsr	_qpushframe
	movl	d0,_errp
	tstl	_retval
	jeq	L00675
	movl	_lispretval,d0
	jra	L00674
L00675:
	movl	a4@,a1	|(calling format-ctl-string)
	movl	a1@(4),a2@+
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00674:
	movl	_errp,a5
	movl	a5@(12),_errp
	movl	a5,sp
	addl	#32,sp
	movl	a4@,a5
	movl	a5@,a4@
	movl	a3@(4),a5
	cmpl	#_nilatom+0x1400+4088,a5@
	jle	L00676
	movl	a3@(4),a5
	movl	a5@,a0
	jbsr	_qoneplus
	movl	a3@(4),a5
	movl	d0,a5@
	jra	L00677
L00676:
	movl	a3@(4),a5
	movl	a5@,d0
	addql	#4,d0
	movl	a3@(4),a5
	movl	d0,a5@
L00677:
L00672:
	cmpl	#_nilatom+0x1400-4096,a4@(32)
	jle	L00678
	cmpl	#_nilatom+0x1400+4092,a4@(32)
	jle	L00679
L00678:
	movl	a4@(32),a0
	jbsr	_qoneminus
	movl	d0,a4@(32)
	jra	L00680
L00679:
	movl	a4@(32),d0
	subql	#4,d0
	movl	d0,a4@(32)
L00680:
	jra	L00667
L00669:
	subql	#4,a2
L00665:
	movl	_errp,a5
	movl	a5@(12),_errp
	movl	a5,sp
	addl	#32,sp
	cmpl	a4@(28),d7
	jeq	L00682
	movl	a4@(20),a4@
	cmpl	#_nilatom+0x1400+4088,a4@(28)
	jle	L00683
	movl	a4@(28),a0
	jbsr	_qoneplus
	movl	a3@(4),a5
	movl	d0,a5@
	jra	L00684
L00683:
	movl	a4@(28),d0
	addql	#4,d0
	movl	a3@(4),a5
	movl	d0,a5@
L00684:
	movl	a3@(8),a5
	movl	a4@(24),a5@
	jra	L00681
L00682:
	movl	d7,d0
L00681:
	movl	a4@,d0
	subl	#32,a2
	moveml	a6@(-28),#L00636
	unlk	a6
	rts
L00636 = 15556
L00635 = 28
	.globl	F00685	|(fcn lambda }:format-handler)
F00685:
	link	a6,#-L00688
	tstb	sp@(-132)
	moveml	#L00689,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00686:
	movl	d7,d0
	subql	#4,a2
	moveml	a6@(-20),#L00689
	unlk	a6
	rts
L00689 = 15488
L00688 = 20
	.globl	F00690	|(fcn lambda ^:format-handler)
F00690:
	link	a6,#-L00693
	tstb	sp@(-132)
	moveml	#L00694,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00691:
	movl	d7,a2@+
	movl	a4@(4),a1
	cmpl	a1@,d7
	jne	L00696
	cmpl	a4@,d7
	jne	L00697
	movl	a3@(16),a4@(8)
	jra	L00698
L00697:
	movl	d7,a4@(8)
L00698:
	jra	L00695
L00696:
	movl	a4@(4),a1
	cmpl	a1@(4),d7
	jne	L00699
	movl	a4@(4),a1
	movl	a1@,a2@+
	cmpl	a1@,d7
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@(12),d6
	jne	L00701
	movl	a4@(12),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L00702
	movl	a3@(16),d0
	jra	L00703
L00702:
	movl	d7,d0
L00703:
	jra	L00704
L00701:
	movl	d7,d0
L00704:
	subql	#4,a2
	movl	d0,a4@(8)
	jra	L00695
L00699:
	movl	a4@(4),a1
	cmpl	a1@(8),d7
	jne	L00705
	movl	a4@(4),a1
	movl	a1@(4),a2@+
	cmpl	a1@(4),d7
	movl	a4@(4),a1
	movl	a1@,a2@+
	cmpl	a1@,d7
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00706
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00707
	movl	d7,a4@(8)
	jra	L00708
L00706:
	subql	#8,a2
L00707:
	movl	a3@(16),a4@(8)
L00708:
	jra	L00695
L00705:
	movl	a4@(4),a1	|(calling lessp)
	movl	a1@,a2@+
	cmpl	a1@,d7
	movl	a4@(4),a1
	movl	a1@(4),a2@+
	cmpl	a1@(4),d7
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00709
	movl	a4@(4),a1	|(calling lessp)
	movl	a1@(4),a2@+
	cmpl	a1@(4),d7
	movl	a4@(4),a1
	movl	a1@(8),a2@+
	cmpl	a1@(8),d7
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(8)
	jra	L00710
L00709:
	movl	d7,a4@(8)
L00710:
L00695:
	cmpl	a4@(8),d7
	jeq	L00712
	movl	a3@(32),a5
	cmpl	a5@,d7
	jeq	L00714
	movl	a3@(16),sp@-
	movl	a3@(280),sp@-
	movl	#3,sp@-
	jbsr	_Inonlocalgo
	jra	L00713
L00714:
	movl	a3@(16),sp@-
	movl	a3@(276),sp@-
	movl	#3,sp@-
	jbsr	_Inonlocalgo
L00713:
	jra	L00711
L00712:
	movl	a4@,d0
L00711:
	subl	#12,a2
	moveml	a6@(-24),#L00694
	unlk	a6
	rts
L00694 = 15552
L00693 = 24
	.globl	F00715	|(fcn lambda make-list-array)
F00715:
	link	a6,#-L00718
	tstb	sp@(-132)
	moveml	#L00719,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00716:
	movl	a4@,a2@+	|(calling makhunk)
	|(calling length)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+120,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	#_nilatom+0x1400+0,a2@+	|(beginning do)
	movl	a4@,a2@+
L00720:
	cmpl	a4@(12),d7
	jne	L00721
	movl	d7,d0
	jra	L00722
L00721:
	movl	a4@(8),a5
	movl	a5@,d2
	movl	a4@(4),a0
	movl	d2,d6
	asll	#2,d6
	movl	a0,a2@+
	lea	a0@(0,d6:L),a5
	movl	a5,sp@-
	movl	a4@(12),a1
	movl	sp@,a5
	movl	a1@(4),a5@
	movl	a2@-,d0
	cmpl	#_nilatom+0x1400+4088,a4@(8)
	jle	L00723
	movl	a4@(8),a0
	jbsr	_qoneplus
	movl	d0,a2@+
	jra	L00724
L00723:
	movl	a4@(8),d0
	addql	#4,d0
	movl	d0,a2@+
L00724:
	movl	a4@(12),a5
	movl	a5@,a4@(12)
	movl	a2@-,a4@(8)
	jra	L00720
L00722:
	subql	#8,a2
	movl	a4@(4),d0
	subql	#8,a2
	moveml	a6@(-28),#L00719
	unlk	a6
	rts
L00719 = 15556
L00718 = 28
	.globl	F00725	|(fcn lambda english-print)
F00725:
	link	a6,#-L00728
	tstb	sp@(-132)
	moveml	#L00729,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00726:
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@,d6
	jne	L00731
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L00731
	movl	a4@(4),d6
	cmpl	a3@(184),d6
	jne	L00734
	movl	a3@(284),a2@+	|(calling format:patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00733
L00734:
	movl	a3@(288),a2@+	|(calling format:patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00733:
	jra	L00730
L00731:
	movl	a4@,a5
	cmpl	#0,a5@
	jpl	L00735
	movl	a3@(292),a2@+	|(calling format:patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	#_nilatom+0x1400+128,a2@+	|(calling format:tyo)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@,a2@+	|(calling english-print)
	|(calling minus)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+216,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	a4@(4),a2@+
	movl	_lbot,a5
	movl	a4,a5
	movl	a2@(-8),a5@
	movl	a2@(-4),a5@(4)
	movl	a5,a2
	addql	#8,a2
	jra	L00726
|	jra	L00730
L00735:
	movl	a4@,a2@+	|(beginning do)
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a3@(296),a2@+
	movl	#_nilatom+0x1400+4,a2@+
L00736:
	movl	a4@(24),a5
	cmpl	#0,a5@
	jpl	L00737
	movl	a4@(8),a5
	cmpl	#0,a5@
	jle	L00740
	cmpl	a4@(16),d7
	jeq	L00741
	movl	#_nilatom+0x1400+128,a2@+	|(calling format:tyo)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00741:
	movl	a4@(8),a2@+	|(calling english-print-thousand)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+376,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00739
L00740:
	movl	d7,d0
L00739:
	jra	L00738
L00737:
	movl	a4@(8),a5
	movl	a5@,d6
	movl	a4@(20),a5
	cmpl	a5@,d6
	jmi	L00743
	movl	a4@(8),a2@+	|(calling quotient)
	movl	a4@(20),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+232,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(12)
	movl	a4@(8),a2@+	|(calling remainder)
	movl	a4@(20),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(8)
	cmpl	a4@(16),d7
	jeq	L00745
	movl	#_nilatom+0x1400+128,a2@+	|(calling format:tyo)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00744
L00745:
	movl	a3@(16),a5
	movl	a5@,a4@(16)
L00744:
	movl	a4@(12),a2@+	|(calling english-print-thousand)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+376,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	#_nilatom+0x1400+128,a2@+	|(calling format:tyo)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(24),a5	|(calling format:patom)
	movl	a5@,d2
	movl	a3@(300),a5
	movl	a5@,a0
	movl	d2,d6
	asll	#2,d6
	movl	a0@(0,d6:L),a2@+
	cmpl	a0@(0,d6:L),d7
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00742
L00743:
	movl	d7,d0
L00742:
	movl	a4@(20),a2@+	|(calling quotient)
	movl	#_nilatom+0x1400+4000,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+232,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	cmpl	#_nilatom+0x1400-4096,a4@(24)
	jle	L00746
	cmpl	#_nilatom+0x1400+4092,a4@(24)
	jle	L00747
L00746:
	movl	a4@(24),a0
	jbsr	_qoneminus
	movl	d0,a4@(24)
	jra	L00748
L00747:
	movl	a4@(24),d0
	subql	#4,d0
	movl	d0,a4@(24)
L00748:
	movl	a2@-,a4@(20)
	jra	L00736
L00738:
	subl	#20,a2
L00730:
	subql	#8,a2
	moveml	a6@(-28),#L00729
	unlk	a6
	rts
L00729 = 15556
L00728 = 28
	.globl	F00749	|(fcn lambda english-print-thousand)
F00749:
	link	a6,#-L00752
	tstb	sp@(-132)
	moveml	#L00753,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00750:
	movl	a4@,a2@+	|(calling remainder)
	movl	#_nilatom+0x1400+400,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@,a2@+	|(calling quotient)
	movl	#_nilatom+0x1400+400,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+232,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	movl	a4@(8),a5
	cmpl	#0,a5@
	jle	L00755
	cmpl	#_nilatom+0x1400-4096,a4@(8)	|(calling format:patom)
	jle	L00756
	cmpl	#_nilatom+0x1400+4092,a4@(8)
	jle	L00757
L00756:
	movl	a4@(8),a0
	jbsr	_qoneminus
	movl	d0,a0
	jra	L00758
L00757:
	movl	a4@(8),d0
	subql	#4,d0
	movl	d0,a0
L00758:
	movl	a0@,d2
	movl	a3@(304),a5
	movl	a5@,a0
	movl	d2,d6
	asll	#2,d6
	movl	a0@(0,d6:L),a2@+
	cmpl	a0@(0,d6:L),d7
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	#_nilatom+0x1400+128,a2@+	|(calling format:tyo)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a3@(308),a2@+	|(calling format:patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(4),a5
	cmpl	#0,a5@
	jle	L00759
	movl	#_nilatom+0x1400+128,a2@+	|(calling format:tyo)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00759:
	jra	L00754
L00755:
	movl	d7,d0
L00754:
	cmpl	#_nilatom+0x1400+0,a4@(4)
	jeq	L00761
	movl	d7,d0
	jra	L00762
L00761:
	movl	a3@(16),d0
	jra	L00760
L00762:
	movl	a4@(4),a5
	cmpl	#20,a5@
	jpl	L00763
	cmpl	#_nilatom+0x1400-4096,a4@(4)	|(calling format:patom)
	jle	L00764
	cmpl	#_nilatom+0x1400+4092,a4@(4)
	jle	L00765
L00764:
	movl	a4@(4),a0
	jbsr	_qoneminus
	movl	d0,a0
	jra	L00766
L00765:
	movl	a4@(4),d0
	subql	#4,d0
	movl	d0,a0
L00766:
	movl	a0@,d2
	movl	a3@(304),a5
	movl	a5@,a0
	movl	d2,d6
	asll	#2,d6
	movl	a0@(0,d6:L),a2@+
	cmpl	a0@(0,d6:L),d7
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00760
L00763:
	movl	a4@(4),a2@+	|(calling format:patom)
	|(calling quotient)
	movl	#_nilatom+0x1400+40,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+232,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a0
	movl	a0@,d2
	movl	d2,d0
	subl	#2,d0
	movl	d0,d2
	movl	a3@(312),a5
	movl	a5@,a0
	movl	d2,d6
	asll	#2,d6
	movl	a0@(0,d6:L),a2@+
	cmpl	a0@(0,d6:L),d7
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a4@(4),a2@+	|(calling remainder)
	movl	#_nilatom+0x1400+40,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(8)
	movl	a4@(8),a2@+
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@(12),d6
	jne	L00769
	movl	a4@(12),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L00770
	movl	a3@(16),d0
	jra	L00771
L00770:
	movl	d7,d0
L00771:
	jra	L00772
L00769:
	movl	d7,d0
L00772:
	subql	#4,a2
	cmpl	d0,d7
	jne	L00767
	movl	#_nilatom+0x1400+180,a2@+	|(calling format:tyo)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	#_nilatom+0x1400-4096,a4@(8)	|(calling format:patom)
	jle	L00773
	cmpl	#_nilatom+0x1400+4092,a4@(8)
	jle	L00774
L00773:
	movl	a4@(8),a0
	jbsr	_qoneminus
	movl	d0,a0
	jra	L00775
L00774:
	movl	a4@(8),d0
	subql	#4,d0
	movl	d0,a0
L00775:
	movl	a0@,d2
	movl	a3@(304),a5
	movl	a5@,a0
	movl	d2,d6
	asll	#2,d6
	movl	a0@(0,d6:L),a2@+
	cmpl	a0@(0,d6:L),d7
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+80,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00767:
L00760:
	subl	#12,a2
	moveml	a6@(-28),#L00753
	unlk	a6
	rts
L00753 = 15556
L00752 = 28
	.globl	F00776	|(fcn lambda roman-step)
F00776:
	link	a6,#-L00779
	tstb	sp@(-132)
	moveml	#L00780,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00777:
	movl	a4@,a5
	cmpl	#9,a5@
	jle	L00782
	movl	a4@,a2@+	|(calling roman-step)
	|(calling quotient)
	movl	#_nilatom+0x1400+40,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+232,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a2@+
	cmpl	#_nilatom+0x1400+4088,a4@(4)
	jle	L00783
	movl	a4@(4),a0
	jbsr	_qoneplus
	movl	d0,a2@+
	jra	L00784
L00783:
	movl	a4@(4),d0
	addql	#4,d0
	movl	d0,a2@+
L00784:
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@,a2@+	|(calling remainder)
	movl	#_nilatom+0x1400+40,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+240,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@
	jra	L00781
L00782:
	movl	d7,d0
L00781:
	cmpl	#_nilatom+0x1400+36,a4@
	jne	L00786
	movl	a3@(208),a5
	cmpl	a5@,d7
	jne	L00786
	movl	#_nilatom+0x1400+0,a2@+	|(calling roman-char)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+384,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	#_nilatom+0x1400+0,a2@+	|(calling roman-char)
	cmpl	#_nilatom+0x1400+4088,a4@(4)
	jle	L00788
	movl	a4@(4),a0
	jbsr	_qoneplus
	movl	d0,a2@+
	jra	L00789
L00788:
	movl	a4@(4),d0
	addql	#4,d0
	movl	d0,a2@+
L00789:
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+384,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00785
L00786:
	cmpl	#_nilatom+0x1400+20,a4@
	jne	L00790
	movl	#_nilatom+0x1400+4,a2@+	|(calling roman-char)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+384,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00785
L00790:
	cmpl	#_nilatom+0x1400+16,a4@
	jne	L00791
	movl	a3@(208),a5
	cmpl	a5@,d7
	jne	L00791
	movl	#_nilatom+0x1400+0,a2@+	|(calling roman-char)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+384,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	#_nilatom+0x1400+4,a2@+	|(calling roman-char)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+384,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00785
L00791:
	movl	a4@,a5
	cmpl	#5,a5@
	jle	L00794
	movl	#_nilatom+0x1400+4,a2@+	|(calling roman-char)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+384,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@,a5
	movl	a5@,d0
	subl	#5,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00795
	jbsr	_qnewint
L00795:
	movl	d0,a4@
	jra	L00793
L00794:
	movl	d7,d0
L00793:
	movl	#_nilatom+0x1400+0,a2@+	|(beginning do)
L00796:
	movl	a4@(8),a2@+	|(calling lessp)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00797
	movl	d7,d0
	jra	L00798
L00797:
	movl	#_nilatom+0x1400+0,a2@+	|(calling roman-char)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+384,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	#_nilatom+0x1400+4088,a4@(8)
	jle	L00799
	movl	a4@(8),a0
	jbsr	_qoneplus
	movl	d0,a4@(8)
	jra	L00800
L00799:
	movl	a4@(8),d0
	addql	#4,d0
	movl	d0,a4@(8)
L00800:
	jra	L00796
L00798:
	subql	#4,a2
L00785:
	subql	#8,a2
	moveml	a6@(-24),#L00780
	unlk	a6
	rts
L00780 = 15492
L00779 = 24
	.globl	F00801	|(fcn lambda roman-char)
F00801:
	link	a6,#-L00804
	tstb	sp@(-132)
	moveml	#L00805,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00802:
	movl	a4@,a5	|(calling format:tyo)
	|(calling nthcdr)
	movl	a5@,d0
	movl	a4@(4),a5
	addl	a5@,d0
	movl	d0,sp@-
	movl	sp@+,d0
	movl	a4@(4),a5
	addl	a5@,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00806
	jbsr	_qnewint
L00806:
	movl	d0,a2@+
	movl	a3@(316),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+320,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a0
	movl	a0@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+208,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#8,a2
	moveml	a6@(-24),#L00805
	unlk	a6
	rts
L00805 = 15492
L00804 = 24
	.globl	F00807	|(fcn lambda format:tyo)
F00807:
	link	a6,#-L00810
	tstb	sp@(-132)
	moveml	#L00811,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00808:
	movl	a3@(12),a5
	movl	a5@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00813
	movl	a3@(12),a5
	movl	a5@,a2@+
	movl	a4@,a2@+
	movl	a3@(12),a5
	movl	a5@,a0
	movl	a0@,a2@+
	jbsr	_qcons
	movl	d0,d1
	movl	a2@-,a0
	movl	d1,a0@
	movl	a0,d0
	jra	L00812
L00813:
	movl	a4@,a2@+	|(calling tyo)
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+392,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00812:
	subql	#4,a2
	moveml	a6@(-20),#L00811
	unlk	a6
	rts
L00811 = 15488
L00810 = 20
	.globl	F00814	|(fcn lambda format:patom)
F00814:
	link	a6,#-L00817
	tstb	sp@(-132)
	moveml	#L00818,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00815:
	movl	a4@,a2@+	|(calling format:printorpatom)
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+400,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#4,a2
	moveml	a6@(-20),#L00818
	unlk	a6
	rts
L00818 = 15488
L00817 = 20
	.globl	F00819	|(fcn lambda format:print)
F00819:
	link	a6,#-L00822
	tstb	sp@(-132)
	moveml	#L00823,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00820:
	movl	a4@,a2@+	|(calling format:printorpatom)
	movl	a3@(16),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+400,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#4,a2
	moveml	a6@(-20),#L00823
	unlk	a6
	rts
L00823 = 15488
L00822 = 20
	.globl	F00824	|(fcn lambda format:printorpatom)
F00824:
	link	a6,#-L00827
	tstb	sp@(-132)
	moveml	#L00828,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00825:
	movl	a3@(12),a5
	movl	a5@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00830
	movl	a3@(12),a5
	movl	a5@,a2@+
	cmpl	a4@(4),d7	|(calling nreconc)
	jeq	L00832
	movl	d7,a2@+
	movl	a4@,a2@+	|(beginning do)
	|(calling explode)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+408,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
L00835:
	cmpl	a4@(16),d7
	jne	L00836
	movl	d7,d0
	jra	L00837
L00836:
	movl	a4@(16),a1
	movl	a1@(4),a2@+
	movl	a4@(20),a2@+	|(calling getcharn)
	movl	#_nilatom+0x1400+4,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#4,a2
	movl	d0,a2@+
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	movl	a4@(16),a5
	movl	a5@,a4@(16)
	jra	L00835
L00837:
	subql	#4,a2	|(calling nreverse)
	movl	a4@(12),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	jra	L00831
L00832:
	movl	a4@,a2@+	|(calling exploden)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+416,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00831
	movl	d7,d0
L00831:
	movl	d0,a2@+
	movl	a3@(12),a5
	movl	a5@,a0
	movl	a0@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+424,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,d1
	movl	a2@-,a0
	movl	d1,a0@
	movl	a0,d0
	jra	L00829
L00830:
	cmpl	a4@(4),d7
	jeq	L00839
	movl	a4@,a2@+	|(calling print)
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+432,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00838
L00839:
	movl	a4@,a2@+	|(calling patom)
	movl	a3@(12),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+440,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00838:
L00829:
	subql	#8,a2
	moveml	a6@(-20),#L00828
	unlk	a6
	rts
L00828 = 15488
L00827 = 20
	.globl	F00840	|(fcn lambda format:terpr)
F00840:
	link	a6,#-L00843
	tstb	sp@(-132)
	moveml	#L00844,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00841:
	movl	a3@(12),a5
	movl	a5@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00846
	movl	a3@(12),a5
	movl	a5@,a2@+
	movl	#_nilatom+0x1400+40,a2@+
	movl	a3@(12),a5
	movl	a5@,a0
	movl	a0@,a2@+
	jbsr	_qcons
	movl	d0,d1
	movl	a2@-,a0
	movl	d1,a0@
	movl	a0,d0
	jra	L00845
L00846:
	movl	a3@(12),a5	|(calling terpr)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+448,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00845:
	moveml	a6@(-20),#L00844
	unlk	a6
	rts
L00844 = 15488
L00843 = 20
	.globl	F00847	|(fcn lambda format:fresh-line)
F00847:
	link	a6,#-L00850
	tstb	sp@(-132)
	moveml	#L00851,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00848:
	movl	a3@(12),a5
	movl	a5@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00853
	movl	a3@(12),a5
	movl	a5@,a0
	cmpl	a0@,d7
	jeq	L00855
	movl	a3@(12),a5
	movl	a5@,a0
	movl	a0@,a1
	movl	a1@(4),d0
	cmpl	#_nilatom+0x1400+40,d0
	jeq	L00855
	movl	a3@(12),a5
	movl	a5@,a2@+
	movl	#_nilatom+0x1400+40,a2@+
	movl	a3@(12),a5
	movl	a5@,a0
	movl	a0@,a2@+
	jbsr	_qcons
	movl	d0,d1
	movl	a2@-,a0
	movl	d1,a0@
	movl	a0,d0
	jra	L00854
L00855:
	movl	d7,d0
L00854:
	jra	L00852
L00853:
	movl	#_nilatom+0x1400+0,a2@+
	movl	a3@(12),a5	|(calling nwritn)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+456,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	a2@-,d6
	cmpl	d0,d6
	jeq	L00857
	movl	a3@(12),a5	|(calling terpr)
	movl	a5@,a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+448,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00858
L00857:
	movl	d7,d0
L00858:
L00852:
	moveml	a6@(-24),#L00851
	unlk	a6
	rts
L00851 = 15552
L00850 = 24
	.globl	F00859	|(fcn lambda format:string-search-char)
F00859:
	link	a6,#-L00862
	tstb	sp@(-132)
	moveml	#L00863,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00860:
	movl	a4@(8),a2@+	|(beginning do)
	movl	a4@(4),a2@+	|(calling flatc)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
L00864:
	movl	a4@(12),a5
	movl	a5@,d6
	movl	a4@(16),a5
	cmpl	a5@,d6
	jle	L00865
	movl	d7,d0
	jra	L00866
L00865:
	movl	a4@,a5
	movl	a5@,a2@+
	movl	a4@(4),a2@+	|(calling getcharn)
	cmpl	#_nilatom+0x1400+4088,a4@(12)
	jle	L00868
	movl	a4@(12),a0
	jbsr	_qoneplus
	movl	d0,a2@+
	jra	L00869
L00868:
	movl	a4@(12),d0
	addql	#4,d0
	movl	d0,a2@+
L00869:
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a0
	movl	a0@,d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00867
	movl	a4@(12),d0
	jra	L00866
L00867:
	cmpl	#_nilatom+0x1400+4088,a4@(12)
	jle	L00870
	movl	a4@(12),a0
	jbsr	_qoneplus
	movl	d0,a4@(12)
	jra	L00871
L00870:
	movl	a4@(12),d0
	addql	#4,d0
	movl	d0,a4@(12)
L00871:
	jra	L00864
L00866:
	subl	#20,a2
	moveml	a6@(-24),#L00863
	unlk	a6
	rts
L00863 = 15552
L00862 = 24
	.globl	F00872	|(fcn lambda format:nsubstring)
F00872:
	link	a6,#-L00875
	tstb	sp@(-132)
	moveml	#L00876,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00873:
	movl	a4@,a2@+	|(calling substring)
	movl	a4@(4),a5
	movl	a5@,d0
	addl	#1,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00877
	jbsr	_qnewint
L00877:
	movl	d0,a2@+
	movl	a4@(8),a5
	movl	a5@,d0
	movl	a4@(4),a5
	subl	a5@,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00878
	jbsr	_qnewint
L00878:
	movl	d0,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+464,a5
	jbsr	a5@
	lea	a2@(-12),a2
	subl	#12,a2
	moveml	a6@(-24),#L00876
	unlk	a6
	rts
L00876 = 15492
L00875 = 24
	.globl	F00883	|(fcn lexpr ferror)
F00883:
	link	a6,#-L00886
	tstb	sp@(-132)
	moveml	#L00887,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00884:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	a4@,a2@+	|(beginning do)
	movl	d7,a2@+
L00888:
	movl	a4@(4),a5
	cmpl	#1,a5@
	jpl	L00889
	movl	a4@(8),d0
	jra	L00890
L00889:
	cmpl	#_nilatom+0x1400-4096,a4@(4)
	jle	L00891
	cmpl	#_nilatom+0x1400+4092,a4@(4)
	jle	L00892
L00891:
	movl	a4@(4),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00893
L00892:
	movl	a4@(4),d0
	subql	#4,d0
	movl	d0,a2@+
L00893:
	movl	a4@(4),d0
	cmpl	a4@(4),d7
	jeq	L00894
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00894
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00895
L00894:
	movl	a4@(-4),a2@+
L00895:
	movl	a4@(8),a2@+
	jbsr	_qcons
	movl	d0,a4@(8)
	movl	a2@-,a4@(4)
	jra	L00888
L00890:
	subql	#8,a2
	movl	d0,a2@+
	movl	d7,a2@+
	movl	a4@(4),a1
	movl	a1@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jne	L00897
	movl	a3@(320),a2@+	|(calling lexpr-funcall)
	movl	d7,a2@+
	movl	a4@(4),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+472,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a4@(8)
	jra	L00896
L00897:
	movl	a3@(320),a2@+	|(calling lexpr-funcall)
	movl	d7,a2@+
	movl	a4@(4),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+472,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a4@(8)
L00896:
	movl	a4@(8),a2@+	|(calling error)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+368,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subl	#12,a2
	moveml	a6@(-20),#L00887
	unlk	a6
	rts
L00887 = 15488
L00886 = 20
	.globl	F00898	|(fcn lambda format-test)
F00898:
	link	a6,#-L00901
	tstb	sp@(-132)
	moveml	#L00902,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00899:
	movl	a3@(16),a5	|(calling format)
	movl	a5@,a2@+
	movl	a3@(324),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+480,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a3@(16),a5	|(calling format)
	movl	a5@,a2@+
	movl	a3@(328),a2@+
	movl	#_nilatom+0x1400+40,a2@+
	movl	#_nilatom+0x1400+40,a2@+
	lea	a2@(-16),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+480,a5
	jbsr	a5@
	lea	a2@(-16),a2
	movl	a3@(16),a5	|(calling format)
	movl	a5@,a2@+
	movl	a3@(332),a2@+
	movl	#_nilatom+0x1400+184,a2@+
	movl	#_nilatom+0x1400+48,a2@+
	lea	a2@(-16),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+480,a5
	jbsr	a5@
	lea	a2@(-16),a2
	movl	a3@(16),a5	|(calling format)
	movl	a5@,a2@+
	movl	a3@(336),a2@+
	movl	#_nilatom+0x1400+128,a2@+
	movl	#_nilatom+0x1400+128,a2@+
	movl	#_nilatom+0x1400+128,a2@+
	lea	a2@(-20),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+480,a5
	jbsr	a5@
	lea	a2@(-20),a2
	movl	a3@(16),a5	|(calling format)
	movl	a5@,a2@+
	movl	a3@(340),a2@+
	movl	#_nilatom+0x1400+16,a2@+
	movl	#_nilatom+0x1400+16,a2@+
	movl	#_nilatom+0x1400+16,a2@+
	lea	a2@(-20),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+480,a5
	jbsr	a5@
	lea	a2@(-20),a2
	moveml	a6@(-20),#L00902
	unlk	a6
	rts
L00902 = 15488
L00901 = 20
bind_org:
	linker_size = 	86
	trans_size = 	61
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
	.long	99
	.long	2
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
	.long	0
	.long	99
	.long	0
	.long	99
	.long	99
	.long	0
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
.asciz "ctl-string"
.asciz "arglist-index"
.asciz "format-arglist"
.asciz "Format-Standard-Output"
.asciz "t"
.asciz "poport"
.asciz "ctl-length"
.asciz "ctl-index"
.asciz "colon-flag"
.asciz "atsign-flag"
.asciz "Unmatched\\ \\\\\\ in\\ control\\ string."
.asciz "\"ch\""
.asciz "format-params-supplied"
.asciz "~C\\ is\\ an\\ unknown\\ FORMAT\\ op\\ in\\ \\\"~A\\\""
.asciz "format-handlers"
.asciz "one"
.asciz "\"arg required for ~a, but no more args\""
.asciz "lambda"
.asciz "none"
.asciz "many"
.asciz "\"Illegal format handler: ~s\""
.asciz "\\\"~S\\\"\\ is\\ not\\ defined\\ as\\ a\\ FORMAT\\ command."
.asciz "\"ch\""
.asciz "(none one many)"
.asciz "\"The format type, \\\"~a\\\" is not: none, one or many\""
.asciz "\"Bad form for name and/or arglist: ~a ~a\""
.asciz "(one many)"
.asciz "\"There should be 2 arguments to ~a\""
.asciz "\"There should be 1 argument to ~a\""
.asciz "\":format-handler\""
.asciz "progn"
.asciz "(quote compile)"
.asciz "defun"
.asciz "let"
.asciz "handler"
.asciz "assq"
.asciz "quote"
.asciz "(format-handlers)"
.asciz "cond"
.asciz "rplaca"
.asciz "(cddr handler)"
.asciz "setq"
.asciz "cons"
.asciz "list"
.asciz "(format-handlers)"
.asciz "4000"
.asciz "cardinal"
.asciz "\"%.16g\""
.asciz "float-format"
.asciz "\"%\""
.asciz "\"g\""
.asciz "ordinal"
.asciz "roman-old"
.asciz "\"\\\"~s\\\" is not a base between 2 and 36\""
.asciz "-"
.asciz "\"~s is not a legal character value\""
.asciz "format-sharpsign-vars"
.asciz "\"#\\\\\""
.asciz "\"^\""
.asciz "\"#^\""
.asciz "\"#/\""
.asciz "\"Argument required for p, but no more arguments\""
.asciz "(32 9)"
.asciz "case-scan"
.asciz "\"the [ format requires an argument\""
.asciz "\"The FORMAT \\\"[\\\" command must be given a numeric parameter\""
.asciz "\"Unbalanced conditional in FORMAT control string\""
.asciz "\"No matching \\\"}\\\" for \\\"{\\\" in format\""
.asciz "(loop-stop loop-abort)"
.asciz "loop-stop"
.asciz "loop-abort"
.asciz "\"zero\""
.asciz "\"zeroth\""
.asciz "minus"
.asciz "1000000"
.asciz "english-large"
.asciz "english-small"
.asciz "hundred"
.asciz "english-medium"
.asciz "(73 86 88 76 67 68 77)"
.asciz "format"
.asciz "\"Start test, newline:~%freshline:~&\""
.asciz "\"decimal:~d, width=5:~5d~%\""
.asciz "\"decimal pad with period:~10,vd~%\""
.asciz "\"char normal:~c, as # would read:~@c, human read:~:c~%\""
.ascii "\"cardinal:~r, roman new:~@r, roman-old:~:@r~\012   		<same line"
.ascii " I hope>~@\012		new line but at beginning~:\012   same line, but s"
.asciz "paced out~:@\012   	new line and over two tabs~%\""
.asciz "get_pname"
.asciz "format-ctl-string"
.asciz "format-ctl-list"
.asciz "nreverse"
.asciz "maknam"
.asciz "format-ctl-op"
.asciz "flatc"
.asciz "format:string-search-char"
.asciz "equal"
.asciz "format:nsubstring"
.asciz "format:patom"
.asciz "lessp"
.asciz "makhunk"
.asciz "getcharn"
.asciz "*"
.asciz "length"
.asciz "ferror"
.asciz "concat"
.asciz "ascii"
.asciz "funcall"
.asciz "append"
.asciz "roman-step"
.asciz "english-print"
.asciz "format-ctl-justify"
.asciz "format:anyradix-printer"
.asciz "format-binpr"
.asciz "format:tyo"
.asciz "minus"
.asciz "format-binpr1"
.asciz "quotient"
.asciz "remainder"
.asciz "format-prc"
.asciz "plus"
.asciz "format-ctl-ascii"
.asciz "format:print"
.asciz "flatsize"
.asciz "format-ctl-repeat-char"
.asciz "max"
.asciz "\\\\"
.asciz "rassq"
.asciz "nthcdr"
.asciz "format:terpr"
.asciz "format:fresh-line"
.asciz "greaterp"
.asciz "apply"
.asciz "case-scan"
.asciz "error"
.asciz "english-print-thousand"
.asciz "roman-char"
.asciz "tyo"
.asciz "format:printorpatom"
.asciz "explode"
.asciz "exploden"
.asciz "nreconc"
.asciz "print"
.asciz "patom"
.asciz "terpr"
.asciz "nwritn"
.asciz "substring"
.asciz "lexpr-funcall"
.asciz "format"
.ascii "(setq fcn-in-format.l \"format.l compiled by Liszt 68000 vers"
.asciz "ion 8.39a on Fri Dec 15 18:54:00 1989\")"
.asciz "(setq rcs-format- \"$Header\")"
.ascii "(setq format-sharpsign-vars (quote franz-symbolic-character-"
.asciz "names))"
.asciz "(or (boundp (quote roman-old)) (setq roman-old nil))"
.asciz "format"
.ascii "(putprop (quote format) (list (quote (2)) fcn-in-format.l) ("
.asciz "quote fcn-info))"
.asciz "format-ctl-list"
.ascii "(putprop (quote format-ctl-list) (list (quote (2 . 2)) fcn-i"
.asciz "n-format.l) (quote fcn-info))"
.asciz "format-ctl-string"
.ascii "(putprop (quote format-ctl-string) (list (quote (2 . 2)) fcn"
.asciz "-in-format.l) (quote fcn-info))"
.asciz "format-ctl-op"
.ascii "(putprop (quote format-ctl-op) (list (quote (3 . 3)) fcn-in-"
.asciz "format.l) (quote fcn-info))"
.asciz "(setq format-handlers nil)"
.asciz "defformat"
.ascii "(putprop (quote defformat) (list (quote nil) fcn-in-format.l"
.asciz ") (quote fcn-info))"
.asciz "d:format-handler"
.ascii "(putprop (quote d:format-handler) (list (quote (2 . 2)) fcn-"
.asciz "in-format.l) (quote fcn-info))"
.ascii "((lambda (handler) (cond (handler (rplaca (cddr handler) (qu"
.ascii "ote d:format-handler))) (t (setq format-handlers (cons (list"
.ascii " (quote d) (quote one) (quote d:format-handler)) format-hand"
.asciz "lers))))) (assq (quote d) format-handlers))"
.asciz "f:format-handler"
.ascii "(putprop (quote f:format-handler) (list (quote (2 . 2)) fcn-"
.asciz "in-format.l) (quote fcn-info))"
.ascii "((lambda (handler) (cond (handler (rplaca (cddr handler) (qu"
.ascii "ote f:format-handler))) (t (setq format-handlers (cons (list"
.ascii " (quote f) (quote one) (quote f:format-handler)) format-hand"
.asciz "lers))))) (assq (quote f) format-handlers))"
.asciz "r:format-handler"
.ascii "(putprop (quote r:format-handler) (list (quote (2 . 2)) fcn-"
.asciz "in-format.l) (quote fcn-info))"
.ascii "((lambda (handler) (cond (handler (rplaca (cddr handler) (qu"
.ascii "ote r:format-handler))) (t (setq format-handlers (cons (list"
.ascii " (quote r) (quote one) (quote r:format-handler)) format-hand"
.asciz "lers))))) (assq (quote r) format-handlers))"
.asciz "o:format-handler"
.ascii "(putprop (quote o:format-handler) (list (quote (2 . 2)) fcn-"
.asciz "in-format.l) (quote fcn-info))"
.ascii "((lambda (handler) (cond (handler (rplaca (cddr handler) (qu"
.ascii "ote o:format-handler))) (t (setq format-handlers (cons (list"
.ascii " (quote o) (quote one) (quote o:format-handler)) format-hand"
.asciz "lers))))) (assq (quote o) format-handlers))"
.asciz "format:anyradix-printer"
.ascii "(putprop (quote format:anyradix-printer) (list (quote (3 . 3"
.asciz ")) fcn-in-format.l) (quote fcn-info))"
.asciz "format-binpr"
.ascii "(putprop (quote format-binpr) (list (quote (2 . 2)) fcn-in-f"
.asciz "ormat.l) (quote fcn-info))"
.asciz "format-binpr1"
.ascii "(putprop (quote format-binpr1) (list (quote (2 . 2)) fcn-in-"
.asciz "format.l) (quote fcn-info))"
.asciz "format-prc"
.ascii "(putprop (quote format-prc) (list (quote (1 . 1)) fcn-in-for"
.asciz "mat.l) (quote fcn-info))"
.asciz "format-ctl-octal"
.ascii "(putprop (quote format-ctl-octal) (list (quote (2 . 2)) fcn-"
.asciz "in-format.l) (quote fcn-info))"
.asciz "a:format-handler"
.ascii "(putprop (quote a:format-handler) (list (quote (2 . 2)) fcn-"
.asciz "in-format.l) (quote fcn-info))"
.ascii "((lambda (handler) (cond (handler (rplaca (cddr handler) (qu"
.ascii "ote a:format-handler))) (t (setq format-handlers (cons (list"
.ascii " (quote a) (quote one) (quote a:format-handler)) format-hand"
.asciz "lers))))) (assq (quote a) format-handlers))"
.asciz "format-ctl-ascii"
.ascii "(putprop (quote format-ctl-ascii) (list (quote (3 . 3)) fcn-"
.asciz "in-format.l) (quote fcn-info))"
.asciz "s:format-handler"
.ascii "(putprop (quote s:format-handler) (list (quote (2 . 2)) fcn-"
.asciz "in-format.l) (quote fcn-info))"
.ascii "((lambda (handler) (cond (handler (rplaca (cddr handler) (qu"
.ascii "ote s:format-handler))) (t (setq format-handlers (cons (list"
.ascii " (quote s) (quote one) (quote s:format-handler)) format-hand"
.asciz "lers))))) (assq (quote s) format-handlers))"
.asciz "c:format-handler"
.ascii "(putprop (quote c:format-handler) (list (quote (2 . 2)) fcn-"
.asciz "in-format.l) (quote fcn-info))"
.ascii "((lambda (handler) (cond (handler (rplaca (cddr handler) (qu"
.ascii "ote c:format-handler))) (t (setq format-handlers (cons (list"
.ascii " (quote c) (quote one) (quote c:format-handler)) format-hand"
.asciz "lers))))) (assq (quote c) format-handlers))"
.asciz "p:format-handler"
.ascii "(putprop (quote p:format-handler) (list (quote (2 . 2)) fcn-"
.asciz "in-format.l) (quote fcn-info))"
.ascii "((lambda (handler) (cond (handler (rplaca (cddr handler) (qu"
.ascii "ote p:format-handler))) (t (setq format-handlers (cons (list"
.ascii " (quote p) (quote many) (quote p:format-handler)) format-han"
.asciz "dlers))))) (assq (quote p) format-handlers))"
.asciz "*:format-handler"
.ascii "(putprop (quote *:format-handler) (list (quote (2 . 2)) fcn-"
.asciz "in-format.l) (quote fcn-info))"
.ascii "((lambda (handler) (cond (handler (rplaca (cddr handler) (qu"
.ascii "ote *:format-handler))) (t (setq format-handlers (cons (list"
.ascii " (quote *) (quote many) (quote *:format-handler)) format-han"
.asciz "dlers))))) (assq (quote *) format-handlers))"
.asciz "g:format-handler"
.ascii "(putprop (quote g:format-handler) (list (quote (2 . 2)) fcn-"
.asciz "in-format.l) (quote fcn-info))"
.ascii "((lambda (handler) (cond (handler (rplaca (cddr handler) (qu"
.ascii "ote g:format-handler))) (t (setq format-handlers (cons (list"
.ascii " (quote g) (quote many) (quote g:format-handler)) format-han"
.asciz "dlers))))) (assq (quote g) format-handlers))"
.asciz "%:format-handler"
.ascii "(putprop (quote %:format-handler) (list (quote (1 . 1)) fcn-"
.asciz "in-format.l) (quote fcn-info))"
.ascii "((lambda (handler) (cond (handler (rplaca (cddr handler) (qu"
.ascii "ote %:format-handler))) (t (setq format-handlers (cons (list"
.ascii " (quote %) (quote none) (quote %:format-handler)) format-han"
.asciz "dlers))))) (assq (quote %) format-handlers))"
.asciz "ch10:format-handler"
.ascii "(putprop (quote ch10:format-handler) (list (quote (1 . 1)) f"
.asciz "cn-in-format.l) (quote fcn-info))"
.ascii "((lambda (handler) (cond (handler (rplaca (cddr handler) (qu"
.ascii "ote ch10:format-handler))) (t (setq format-handlers (cons (l"
.ascii "ist (quote ch10) (quote none) (quote ch10:format-handler)) f"
.asciz "ormat-handlers))))) (assq (quote ch10) format-handlers))"
.asciz "&:format-handler"
.ascii "(putprop (quote &:format-handler) (list (quote (1 . 1)) fcn-"
.asciz "in-format.l) (quote fcn-info))"
.ascii "((lambda (handler) (cond (handler (rplaca (cddr handler) (qu"
.ascii "ote &:format-handler))) (t (setq format-handlers (cons (list"
.ascii " (quote &) (quote none) (quote &:format-handler)) format-han"
.asciz "dlers))))) (assq (quote &) format-handlers))"
.asciz "x:format-handler"
.ascii "(putprop (quote x:format-handler) (list (quote (1 . 1)) fcn-"
.asciz "in-format.l) (quote fcn-info))"
.ascii "((lambda (handler) (cond (handler (rplaca (cddr handler) (qu"
.ascii "ote x:format-handler))) (t (setq format-handlers (cons (list"
.ascii " (quote x) (quote none) (quote x:format-handler)) format-han"
.asciz "dlers))))) (assq (quote x) format-handlers))"
.asciz "\\|:format-handler"
.ascii "(putprop (quote \\|:format-handler) (list (quote (1 . 1)) fcn"
.asciz "-in-format.l) (quote fcn-info))"
.ascii "((lambda (handler) (cond (handler (rplaca (cddr handler) (qu"
.ascii "ote \\|:format-handler))) (t (setq format-handlers (cons (lis"
.ascii "t (quote \\|) (quote none) (quote \\|:format-handler)) format-"
.asciz "handlers))))) (assq (quote \\|) format-handlers))"
.asciz "~:format-handler"
.ascii "(putprop (quote ~:format-handler) (list (quote (1 . 1)) fcn-"
.asciz "in-format.l) (quote fcn-info))"
.ascii "((lambda (handler) (cond (handler (rplaca (cddr handler) (qu"
.ascii "ote ~:format-handler))) (t (setq format-handlers (cons (list"
.ascii " (quote ~) (quote none) (quote ~:format-handler)) format-han"
.asciz "dlers))))) (assq (quote ~) format-handlers))"
.asciz "format-ctl-repeat-char"
.ascii "(putprop (quote format-ctl-repeat-char) (list (quote (2 . 2)"
.asciz ") fcn-in-format.l) (quote fcn-info))"
.asciz "format-ctl-justify"
.ascii "(putprop (quote format-ctl-justify) (list (quote (2 . 3)) fc"
.asciz "n-in-format.l) (quote fcn-info))"
.asciz "q:format-handler"
.ascii "(putprop (quote q:format-handler) (list (quote (2 . 2)) fcn-"
.asciz "in-format.l) (quote fcn-info))"
.ascii "((lambda (handler) (cond (handler (rplaca (cddr handler) (qu"
.ascii "ote q:format-handler))) (t (setq format-handlers (cons (list"
.ascii " (quote q) (quote one) (quote q:format-handler)) format-hand"
.asciz "lers))))) (assq (quote q) format-handlers))"
.asciz "case-scan"
.ascii "(putprop (quote case-scan) (list (quote (1 . 3)) fcn-in-form"
.asciz "at.l) (quote fcn-info))"
.asciz "\\[:format-handler"
.ascii "(putprop (quote \\[:format-handler) (list (quote (2 . 2)) fcn"
.asciz "-in-format.l) (quote fcn-info))"
.ascii "((lambda (handler) (cond (handler (rplaca (cddr handler) (qu"
.ascii "ote \\[:format-handler))) (t (setq format-handlers (cons (lis"
.ascii "t (quote \\[) (quote many) (quote \\[:format-handler)) format-"
.asciz "handlers))))) (assq (quote \\[) format-handlers))"
.asciz "\\]:format-handler"
.ascii "(putprop (quote \\]:format-handler) (list (quote (1 . 1)) fcn"
.asciz "-in-format.l) (quote fcn-info))"
.ascii "((lambda (handler) (cond (handler (rplaca (cddr handler) (qu"
.ascii "ote \\]:format-handler))) (t (setq format-handlers (cons (lis"
.ascii "t (quote \\]) (quote none) (quote \\]:format-handler)) format-"
.asciz "handlers))))) (assq (quote \\]) format-handlers))"
.asciz ";:format-handler"
.ascii "(putprop (quote ;:format-handler) (list (quote (1 . 1)) fcn-"
.asciz "in-format.l) (quote fcn-info))"
.ascii "((lambda (handler) (cond (handler (rplaca (cddr handler) (qu"
.ascii "ote ;:format-handler))) (t (setq format-handlers (cons (list"
.ascii " (quote ;) (quote none) (quote ;:format-handler)) format-han"
.asciz "dlers))))) (assq (quote ;) format-handlers))"
.asciz "{:format-handler"
.ascii "(putprop (quote {:format-handler) (list (quote (2 . 2)) fcn-"
.asciz "in-format.l) (quote fcn-info))"
.ascii "((lambda (handler) (cond (handler (rplaca (cddr handler) (qu"
.ascii "ote {:format-handler))) (t (setq format-handlers (cons (list"
.ascii " (quote {) (quote many) (quote {:format-handler)) format-han"
.asciz "dlers))))) (assq (quote {) format-handlers))"
.asciz "}:format-handler"
.ascii "(putprop (quote }:format-handler) (list (quote (1 . 1)) fcn-"
.asciz "in-format.l) (quote fcn-info))"
.ascii "((lambda (handler) (cond (handler (rplaca (cddr handler) (qu"
.ascii "ote }:format-handler))) (t (setq format-handlers (cons (list"
.ascii " (quote }) (quote none) (quote }:format-handler)) format-han"
.asciz "dlers))))) (assq (quote }) format-handlers))"
.asciz "^:format-handler"
.ascii "(putprop (quote ^:format-handler) (list (quote (2 . 2)) fcn-"
.asciz "in-format.l) (quote fcn-info))"
.ascii "((lambda (handler) (cond (handler (rplaca (cddr handler) (qu"
.ascii "ote ^:format-handler))) (t (setq format-handlers (cons (list"
.ascii " (quote ^) (quote many) (quote ^:format-handler)) format-han"
.asciz "dlers))))) (assq (quote ^) format-handlers))"
.asciz "make-list-array"
.ascii "(putprop (quote make-list-array) (list (quote (1 . 1)) fcn-i"
.asciz "n-format.l) (quote fcn-info))"
.ascii "(setq english-small (make-list-array (quote (one two three f"
.ascii "our five six seven eight nine ten eleven twelve thirteen fou"
.asciz "rteen fifteen sixteen seventeen eighteen nineteen))))"
.ascii "(setq english-medium (make-list-array (quote (twenty thirty "
.asciz "forty fifty sixty seventy eighty ninty))))"
.ascii "(setq english-large (make-list-array (quote (thousand millio"
.asciz "n billion trillion quadrillion quintillion))))"
.asciz "english-print"
.ascii "(putprop (quote english-print) (list (quote (2 . 2)) fcn-in-"
.asciz "format.l) (quote fcn-info))"
.asciz "english-print-thousand"
.ascii "(putprop (quote english-print-thousand) (list (quote (1 . 1)"
.asciz ") fcn-in-format.l) (quote fcn-info))"
.asciz "roman-step"
.ascii "(putprop (quote roman-step) (list (quote (2 . 2)) fcn-in-for"
.asciz "mat.l) (quote fcn-info))"
.asciz "roman-char"
.ascii "(putprop (quote roman-char) (list (quote (2 . 2)) fcn-in-for"
.asciz "mat.l) (quote fcn-info))"
.asciz "format:tyo"
.ascii "(putprop (quote format:tyo) (list (quote (1 . 1)) fcn-in-for"
.asciz "mat.l) (quote fcn-info))"
.asciz "format:patom"
.ascii "(putprop (quote format:patom) (list (quote (1 . 1)) fcn-in-f"
.asciz "ormat.l) (quote fcn-info))"
.asciz "format:print"
.ascii "(putprop (quote format:print) (list (quote (1 . 1)) fcn-in-f"
.asciz "ormat.l) (quote fcn-info))"
.asciz "format:printorpatom"
.ascii "(putprop (quote format:printorpatom) (list (quote (2 . 2)) f"
.asciz "cn-in-format.l) (quote fcn-info))"
.asciz "format:terpr"
.ascii "(putprop (quote format:terpr) (list (quote (0 . 0)) fcn-in-f"
.asciz "ormat.l) (quote fcn-info))"
.asciz "format:fresh-line"
.ascii "(putprop (quote format:fresh-line) (list (quote (0 . 0)) fcn"
.asciz "-in-format.l) (quote fcn-info))"
.asciz "format:string-search-char"
.ascii "(putprop (quote format:string-search-char) (list (quote (3 ."
.asciz " 3)) fcn-in-format.l) (quote fcn-info))"
.asciz "format:nsubstring"
.ascii "(putprop (quote format:nsubstring) (list (quote (3 . 3)) fcn"
.asciz "-in-format.l) (quote fcn-info))"
.asciz "ferror"
.ascii "(putprop (quote ferror) (list (quote (0)) fcn-in-format.l) ("
.asciz "quote fcn-info))"
.asciz "format-test"
.ascii "(putprop (quote format-test) (list (quote (0 . 0)) fcn-in-fo"
.asciz "rmat.l) (quote fcn-info))"
.asciz "(putprop (quote format) t (quote version))"
lit_end:
.data | this is just for documentation 
.asciz "@(#)Compiled by Liszt 68000 version 8.39a on Fri Dec 15 18:55:00 1989"
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
