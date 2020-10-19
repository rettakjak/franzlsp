	.globl	F00015	|(fcn lambda *process-send)
F00015:
	link	a6,#-L00017
	tstb	sp@(-132)
	moveml	#L00018,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00016:
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
	moveml	a6@(-20),#L00018
	unlk	a6
	rts
L00018 = 15488
L00017 = 20
	.globl	F00019	|(fcn lambda *process-receive)
F00019:
	link	a6,#-L00021
	tstb	sp@(-132)
	moveml	#L00022,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00020:
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
	moveml	a6@(-20),#L00022
	unlk	a6
	rts
L00022 = 15488
L00021 = 20
	.globl	F00023	|(fcn nlambda process)
F00023:
	link	a6,#-L00025
	tstb	sp@(-132)
	moveml	#L00026,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00024:
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
	jne	L00028
	movl	a4@(4),a2@+	|(calling *process)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00027
L00028:
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
	jeq	L00030
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
	jra	L00029
L00030:
	movl	d7,d0
L00029:
	cmpl	a4@(12),d7
	jeq	L00032
	movl	a4@(12),a2@+	|(calling set)
	movl	a4@(16),a1
	movl	a1@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00031
L00032:
	movl	d7,d0
L00031:
	movl	a4@(16),a5
	movl	a5@,a1
	movl	a1@,a0
	movl	a0@(4),d0
	subql	#4,a2
L00027:
	subl	#16,a2
	moveml	a6@(-20),#L00026
	unlk	a6
	rts
L00026 = 15488
L00025 = 20
	.globl	F00033	|(fcn macro msg)
F00033:
	link	a6,#-L00035
	tstb	sp@(-132)
	moveml	#L00036,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00034:
	movl	a4@,a5
	movl	a5@,a2@+
	movl	a4@(4),a2@+	|(beginning do)
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
L00037:
	cmpl	a4@(8),d7
	jne	L00038
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
	jra	L00039
L00038:
	movl	a4@(8),a1
	movl	a1@(4),a4@(24)
	movl	a4@(24),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00041
	movl	a4@(24),a0
	movl	a0@(4),d0
	cmpl	a3@(8),d0
	jne	L00043
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
	jra	L00042
L00043:
	movl	a4@(24),a1
	movl	a1@(4),d0
	cmpl	a3@(20),d0
	jne	L00044
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
	jra	L00042
L00044:
	movl	a4@(24),a0
	movl	a0@(4),d0
	cmpl	a3@(28),d0
	jne	L00045
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
	jra	L00042
L00045:
	movl	a4@(24),a1
	movl	a1@(4),d0
	cmpl	a3@(36),d0
	jne	L00046
	movl	a4@(24),a5
	movl	a5@,a0
	movl	a0@(4),a4@(20)
	jra	L00042
L00046:
	movl	a4@(24),a0
	movl	a0@(4),d0
	cmpl	a3@(40),d0
	jne	L00047
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
	jra	L00042
L00047:
	movl	a3@(52),a2@+
	movl	a4@(24),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
L00042:
	jra	L00040
L00041:
	movl	a4@(24),d6
	cmpl	a3@(8),d6
	jne	L00048
	movl	a3@(56),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	jra	L00040
L00048:
	movl	a4@(24),d6
	cmpl	a3@(20),d6
	jne	L00049
	movl	a3@(60),a2@+
	movl	#_nilatom+0x1400+128,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
	jra	L00040
L00049:
	movl	a4@(24),d6
	cmpl	a3@(64),d6
	jne	L00050
	movl	a3@(68),a4@(16)
	jra	L00040
L00050:
	movl	a3@(52),a2@+
	movl	a4@(24),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a4@(16)
L00040:
	cmpl	a4@(16),d7
	jeq	L00052
	cmpl	a4@(20),d7
	jeq	L00054
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
	jra	L00053
L00054:
	movl	a4@(16),d0
L00053:
	movl	d0,a2@+
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	jra	L00051
L00052:
	movl	d7,d0
L00051:
	movl	a4@(8),a5
	movl	a5@,a2@+
	movl	d7,a4@(16)
	movl	a2@-,a4@(8)
	jra	L00037
L00039:
	subl	#28,a2
	moveml	a6@(-24),#L00036
	unlk	a6
	rts
L00036 = 15552
L00035 = 24
	.globl	F00057	|(fcn lexpr msg-tyo-char)
F00057:
	link	a6,#-L00059
	tstb	sp@(-132)
	moveml	#L00060,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00058:
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
	jle	L00066
	movl	d7,a4@(12)
	jra	L00065
L00066:
	movl	#_nilatom+0x1400+12,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(12)
L00065:
	movl	a4@(8),a2@+	|(beginning do)
L00069:
	movl	a4@(16),a5
	cmpl	#1,a5@
	jpl	L00070
	movl	d7,d0
	jra	L00071
L00070:
	cmpl	#_nilatom+0x1400+40,a4@(4)
	jne	L00073
	movl	a4@(12),a2@+	|(calling terpr)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00072
L00073:
	movl	a4@(4),a2@+	|(calling tyo)
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00072:
	cmpl	#_nilatom+0x1400-4096,a4@(16)
	jle	L00074
	cmpl	#_nilatom+0x1400+4092,a4@(16)
	jle	L00075
L00074:
	movl	a4@(16),a0
	jbsr	_qoneminus
	movl	d0,a4@(16)
	jra	L00076
L00075:
	movl	a4@(16),d0
	subql	#4,d0
	movl	d0,a4@(16)
L00076:
	jra	L00069
L00071:
	subl	#20,a2
	moveml	a6@(-24),#L00060
	unlk	a6
	rts
L00060 = 15552
L00059 = 24
	.globl	F00079	|(fcn lexpr msg-print)
F00079:
	link	a6,#-L00081
	tstb	sp@(-132)
	moveml	#L00082,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00080:
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
	jle	L00086
	movl	d7,a4@(8)
	jra	L00085
L00086:
	movl	#_nilatom+0x1400+8,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(8)
L00085:
	movl	a4@(4),a2@+	|(calling patom)
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subl	#12,a2
	moveml	a6@(-24),#L00082
	unlk	a6
	rts
L00082 = 15552
L00081 = 24
	.globl	F00089	|(fcn lambda printblanks)
F00089:
	link	a6,#-L00091
	tstb	sp@(-132)
	moveml	#L00092,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00090:
	movl	a4@,d5
	movl	a3@(72),d0
	cmpl	d0,d7
	jeq	L00094
	movl	d0,a0
L00095:
	cmpl	a0@(4),d5
	jeq	L00093
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00095
	movl	a0,d0
L00094:
	movl	d0,a2@+
	jra	L00096
L00093:
	movl	a0,a2@+
L00096:
	cmpl	a4@(8),d7
	jeq	L00098
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
	jra	L00097
L00098:
	movl	a4@,a2@+	|(beginning do)
L00099:
	movl	a4@(12),a5
	cmpl	#1,a5@
	jpl	L00100
	movl	d7,d0
	jra	L00101
L00100:
	movl	a3@(76),a2@+	|(calling patom)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	#_nilatom+0x1400-4096,a4@(12)
	jle	L00102
	cmpl	#_nilatom+0x1400+4092,a4@(12)
	jle	L00103
L00102:
	movl	a4@(12),a0
	jbsr	_qoneminus
	movl	d0,a4@(12)
	jra	L00104
L00103:
	movl	a4@(12),d0
	subql	#4,d0
	movl	d0,a4@(12)
L00104:
	jra	L00099
L00101:
	subql	#4,a2
L00097:
	subl	#12,a2
	moveml	a6@(-24),#L00092
	unlk	a6
	rts
L00092 = 15520
L00091 = 24
	.globl	F00105	|(fcn nlambda linelength)
F00105:
	link	a6,#-L00107
	tstb	sp@(-132)
	moveml	#L00108,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00106:
	cmpl	a4@,d7
	jne	L00110
	movl	a3@(80),a5
	movl	a5@,d0
	jra	L00109
L00110:
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
	jeq	L00111
	movl	a4@,a0
	movl	a3@(80),a5
	movl	a0@(4),a5@
	movl	a3@(80),a5
	movl	a5@,d0
	jra	L00109
L00111:
	movl	a3@(80),a5
	movl	a5@,d0
L00109:
	subql	#4,a2
	moveml	a6@(-20),#L00108
	unlk	a6
	rts
L00108 = 15488
L00107 = 20
	.globl	F00114	|(fcn lambda charcnt)
F00114:
	link	a6,#-L00116
	tstb	sp@(-132)
	moveml	#L00117,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00115:
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
	jcs	L00118
	jbsr	_qnewint
L00118:
	subql	#4,a2
	moveml	a6@(-24),#L00117
	unlk	a6
	rts
L00117 = 15492
L00116 = 24
	.globl	F00119	|(fcn lambda nthcdr)
F00119:
	link	a6,#-L00121
	tstb	sp@(-132)
	moveml	#L00122,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00120:
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
	jeq	L00124
	movl	a4@,a5
	cmpl	#0,a5@
	jpl	L00128
	movl	d7,a2@+
	movl	a4@(4),a2@+
	jbsr	_qcons
	jra	L00127
L00128:
	cmpl	#_nilatom+0x1400+0,a4@
	jne	L00129
	movl	a4@(4),d0
	jra	L00127
L00129:
	cmpl	#_nilatom+0x1400-4096,a4@	|(calling nthcdr)
	jle	L00130
	cmpl	#_nilatom+0x1400+4092,a4@
	jle	L00131
L00130:
	movl	a4@,a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00132
L00131:
	movl	a4@,d0
	subql	#4,d0
	movl	d0,a2@+
L00132:
	movl	a4@(4),a5
	movl	a5@,a2@+
	movl	_lbot,a5
	movl	a4,a5
	movl	a2@(-8),a5@
	movl	a2@(-4),a5@(4)
	movl	a5,a2
	addql	#8,a2
	jra	L00120
L00127:
	jra	L00123
L00124:
	movl	a3@(84),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00123:
	subql	#8,a2
	moveml	a6@(-20),#L00122
	unlk	a6
	rts
L00122 = 15488
L00121 = 20
	.globl	F00134	|(fcn macro nthcdr::cmacro:g00133)
F00134:
	link	a6,#-L00136
	tstb	sp@(-132)
	moveml	#L00137,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00135:
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
	jeq	L00139
	cmpl	#_nilatom+0x1400+0,a4@(4)
	jne	L00139
	movl	a4@(8),d0
	jra	L00138
L00139:
	movl	a4@(4),a2@+	|(beginning do)
	movl	a3@(88),a2@+
L00143:
	cmpl	a4@(16),d7
	jne	L00144
	movl	d7,d0
	jra	L00145
L00144:
	movl	a4@(12),a2@+
	movl	a4@(16),a1
	movl	a1@(4),a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00147
	movl	a4@(16),a1
	movl	a1@(4),d0
	jra	L00145
|	jra	L00146
L00147:
	movl	d7,d0
L00146:
	movl	a4@(16),a5
	movl	a5@,a4@(16)
	jra	L00143
L00145:
	subql	#8,a2
	movl	d0,a2@+
	cmpl	a4@(12),d7
	jeq	L00149
	movl	a4@(12),a5
	movl	a5@,a2@+
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00148
L00149:
	movl	a3@(92),a2@+
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
L00148:
	subql	#4,a2
L00138:
	subl	#12,a2
	moveml	a6@(-24),#L00137
	unlk	a6
	rts
L00137 = 15552
L00136 = 24
	.globl	F00150	|(fcn lambda nth)
F00150:
	link	a6,#-L00152
	tstb	sp@(-132)
	moveml	#L00153,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00151:
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
	moveml	a6@(-20),#L00153
	unlk	a6
	rts
L00153 = 15488
L00152 = 20
	.globl	F00155	|(fcn macro nth::cmacro:g00154)
F00155:
	link	a6,#-L00157
	tstb	sp@(-132)
	moveml	#L00158,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00156:
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
	moveml	a6@(-20),#L00158
	unlk	a6
	rts
L00158 = 15488
L00157 = 20
	.globl	F00159	|(fcn lambda listp)
F00159:
	link	a6,#-L00161
	tstb	sp@(-132)
	moveml	#L00162,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00160:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jeq	L00164
	movl	d7,d0
	jra	L00165
L00164:
	movl	a3@,d0
	jra	L00163
L00165:
	cmpl	a4@,d7
	jne	L00166
	movl	a3@,d0
	jra	L00167
L00166:
	movl	d7,d0
L00167:
	jra	L00168
L00163:
	movl	d0,d0
L00168:
	subql	#4,a2
	moveml	a6@(-20),#L00162
	unlk	a6
	rts
L00162 = 15488
L00161 = 20
	.globl	F00171	|(fcn lexpr remq)
F00171:
	link	a6,#-L00173
	tstb	sp@(-132)
	moveml	#L00174,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00172:
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
	jle	L00180
	movl	#_nilatom+0x1400-4,a4@(12)
	jra	L00179
L00180:
	movl	#_nilatom+0x1400+12,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(12)
L00179:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a4@(8),a2@+	|(beginning do)
	movl	d7,a2@+
L00183:
	cmpl	a4@(24),d7
	jne	L00184
	movl	a4@(16),d0
	jra	L00185
L00184:
	movl	a4@(24),a1
	movl	a1@(4),d0
	cmpl	a4@(4),d0
	jne	L00188
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@(12),d6
	jne	L00187
L00188:
	movl	a4@(24),a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a4@(28)
	cmpl	a4@(16),d7
	jne	L00190
	movl	a4@(28),a4@(16)
	jra	L00189
L00190:
	movl	a4@(20),a0
	movl	a4@(28),a0@
	movl	a0,d0
L00189:
	movl	a4@(28),a4@(20)
	jra	L00186
L00187:
	cmpl	#_nilatom+0x1400-4096,a4@(12)
	jle	L00191
	cmpl	#_nilatom+0x1400+4092,a4@(12)
	jle	L00192
L00191:
	movl	a4@(12),a0
	jbsr	_qoneminus
	movl	d0,a4@(12)
	jra	L00193
L00192:
	movl	a4@(12),d0
	subql	#4,d0
	movl	d0,a4@(12)
L00193:
L00186:
	movl	a4@(24),a5
	movl	a5@,a4@(24)
	jra	L00183
L00185:
	subl	#32,a2
	moveml	a6@(-24),#L00174
	unlk	a6
	rts
L00174 = 15552
L00173 = 24
	.globl	F00194	|(fcn lexpr tab)
F00194:
	link	a6,#-L00196
	tstb	sp@(-132)
	moveml	#L00197,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00195:
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
	jle	L00202
	movl	#_nilatom+0x1400+8,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(8)
	jra	L00201
L00202:
	movl	d7,d0
L00201:
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
	jle	L00206
	movl	a4@(8),a2@+	|(calling terpri)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+88,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	#_nilatom+0x1400+0,a4@(12)
	jra	L00205
L00206:
	movl	d7,d0
L00205:
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
	jcs	L00207
	jbsr	_qnewint
L00207:
	movl	d0,a2@+
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+96,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d7,d0
L00198:
	subl	#16,a2
	moveml	a6@(-24),#L00197
	unlk	a6
	rts
L00197 = 15492
L00196 = 24
	.globl	F00208	|(fcn lambda charcnt)
F00208:
	link	a6,#-L00210
	tstb	sp@(-132)
	moveml	#L00211,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00209:
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
	jcs	L00212
	jbsr	_qnewint
L00212:
	subql	#4,a2
	moveml	a6@(-24),#L00211
	unlk	a6
	rts
L00211 = 15492
L00210 = 24
	.globl	F00213	|(fcn lambda $patom1)
F00213:
	link	a6,#-L00215
	tstb	sp@(-132)
	moveml	#L00216,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00214:
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
	moveml	a6@(-20),#L00216
	unlk	a6
	rts
L00216 = 15488
L00215 = 20
	.globl	F00217	|(fcn lambda attach)
F00217:
	link	a6,#-L00219
	tstb	sp@(-132)
	moveml	#L00220,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00218:
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00222
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
	jra	L00221
L00222:
	movl	a3@(104),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00221:
	subql	#8,a2
	moveml	a6@(-20),#L00220
	unlk	a6
	rts
L00220 = 15488
L00219 = 20
	.globl	F00223	|(fcn lambda Cnth)
F00223:
	link	a6,#-L00225
	tstb	sp@(-132)
	moveml	#L00226,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00224:
	movl	#1,d6
	movl	a4@(4),a5
	cmpl	a5@,d6
	jle	L00228
	movl	d7,a2@+
	movl	a4@,a2@+
	jbsr	_qcons
	jra	L00227
L00228:
L00229:
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
	jne	L00233
	cmpl	#_nilatom+0x1400+4,a4@(4)
	jne	L00232
L00233:
	movl	a4@,d0
	jra	L00230
|	jra	L00231
L00232:
	movl	d7,d0
L00231:
	movl	a4@,a5
	movl	a5@,a4@
	cmpl	#_nilatom+0x1400-4096,a4@(4)
	jle	L00236
	cmpl	#_nilatom+0x1400+4092,a4@(4)
	jle	L00237
L00236:
	movl	a4@(4),a0
	jbsr	_qoneminus
	movl	d0,a4@(4)
	jra	L00238
L00237:
	movl	a4@(4),d0
	subql	#4,d0
	movl	d0,a4@(4)
L00238:
	jra	L00229
|	movl	d7,d0
L00230:
L00227:
	subql	#8,a2
	moveml	a6@(-24),#L00226
	unlk	a6
	rts
L00226 = 15552
L00225 = 24
	.globl	F00239	|(fcn lambda dsubst)
F00239:
	link	a6,#-L00241
	tstb	sp@(-132)
	moveml	#L00242,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00240:
	movl	d7,a2@+
	movl	a4@(4),a2@+
	movl	a4@(8),a4@(12)
	movl	a4@(12),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00246
	movl	a4@,a2@+	|(calling copy)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+104,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00244
|	jra	L00245
L00246:
	movl	d7,d0
L00245:
L00243:
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
	jeq	L00248
	movl	a4@(12),d0
	jra	L00244
|	jra	L00247
L00248:
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00253
	movl	a4@(4),a2@+
	movl	a4@(8),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jeq	L00254
	movl	d7,d0
	jra	L00255
L00254:
	movl	a3@,d0
L00255:
	jra	L00252
L00253:
	movl	a4@(4),a2@+
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00256
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00257
	movl	d7,d0
	jra	L00258
L00256:
	subql	#8,a2
L00257:
	movl	a3@,d0
L00258:
L00252:
	cmpl	d0,d7
	jeq	L00251
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
	jra	L00247
L00251:
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
L00247:
	cmpl	a4@(4),d7
	jeq	L00260
	movl	a4@(4),d6
	movl	a4@(8),a5
	cmpl	a5@,d6
	jne	L00260
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
	jra	L00244
|	jra	L00259
L00260:
	movl	d7,d0
L00259:
	movl	a4@(8),a5
	movl	a5@,a4@(8)
	jra	L00243
|	movl	d7,d0
L00244:
	subl	#16,a2
	moveml	a6@(-24),#L00242
	unlk	a6
	rts
L00242 = 15552
L00241 = 24
	.globl	F00262	|(fcn lambda insert)
F00262:
	link	a6,#-L00264
	tstb	sp@(-132)
	moveml	#L00265,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(16),a2
L00263:
	cmpl	a4@(4),d7
	jne	L00267
	movl	a4@,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	jra	L00266
L00267:
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
	jeq	L00268
	movl	a3@(108),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00266
L00268:
	cmpl	a4@(12),d7
	jeq	L00271
	movl	a4@,a2@+	|(calling member)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+128,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00271
	movl	a4@(4),d0
	jra	L00266
L00271:
	cmpl	a4@(8),d7
	jne	L00274
	movl	a3@(112),a4@(8)
	jra	L00273
L00274:
	movl	d7,d0
L00273:
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
L00275:
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
	jpl	L00278
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
	jne	L00282
	movl	a4@(32),a1
	cmpl	a1@(8),d7
	jeq	L00282
	movl	a4@(32),a1
	movl	a1@(8),a4@(32)
	cmpl	a1@(8),d7
	jra	L00281
L00282:
	movl	d7,d0
L00281:
	movl	a4@(32),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00285
	movl	a3@(116),a2@+
	movl	a4@(32),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00285
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-12),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00284
L00285:
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00284:
	cmpl	d0,d7
	jeq	L00280
	movl	a4@,a2@+
	movl	a4@(28),a1
	movl	a1@(4),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00289
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00290
	jra	L00291
L00289:
	subql	#8,a2
L00290:
	jra	L00288
L00291:
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
	jra	L00287
L00288:
	movl	d7,d0
L00287:
	jra	L00279
L00280:
	cmpl	#_nilatom+0x1400+4,a4@(20)
	jne	L00292
	movl	a4@(28),a2@+
	movl	a4@,a2@+
	movl	a4@(28),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	d0,d1
	movl	a2@-,a0
	movl	d1,a0@
	movl	a0,d0
	jra	L00279
L00292:
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
	jne	L00295
	movl	a4@(32),a1
	cmpl	a1@(8),d7
	jeq	L00295
	movl	a4@(32),a1
	movl	a1@(8),a4@(32)
	cmpl	a1@(8),d7
	jra	L00294
L00295:
	movl	d7,d0
L00294:
	movl	a4@(32),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00298
	movl	a3@(116),a2@+
	movl	a4@(32),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00298
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-12),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00297
L00298:
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00297:
	cmpl	d0,d7
	jeq	L00293
	movl	a4@,a2@+
	movl	a4@(28),a5
	movl	a5@,a1
	movl	a1@(4),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00302
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00303
	jra	L00304
L00302:
	subql	#8,a2
L00303:
	jra	L00301
L00304:
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
	jra	L00300
L00301:
	movl	d7,d0
L00300:
	jra	L00279
L00293:
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
L00279:
	jra	L00277
L00278:
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
	movl	a3@(116),a2@+
	movl	a4@(32),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00310
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-12),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00309
L00310:
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00309:
	cmpl	d0,d7
	jeq	L00305
	movl	a4@,a2@+
	movl	a4@(28),a1
	movl	a1@(4),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00314
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00315
	jra	L00316
L00314:
	subql	#8,a2
L00315:
	jra	L00313
L00316:
	movl	a4@(24),a2@+	|(calling sub1)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+176,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(20)
	jra	L00275
|	jra	L00312
L00313:
	movl	d7,d0
L00312:
	jra	L00277
L00305:
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
	jcs	L00317
	jbsr	_qnewint
L00317:
	movl	d0,a4@(20)
	jra	L00275
L00277:
L00276:
	subl	#16,a2
	movl	a4@(4),d0
L00266:
	subl	#16,a2
	moveml	a6@(-28),#L00265
	unlk	a6
	rts
L00265 = 15556
L00264 = 28
	.globl	F00318	|(fcn lambda kwote)
F00318:
	link	a6,#-L00320
	tstb	sp@(-132)
	moveml	#L00321,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00319:
	movl	a3@(120),a2@+
	movl	a4@,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	subql	#4,a2
	moveml	a6@(-20),#L00321
	unlk	a6
	rts
L00321 = 15488
L00320 = 20
	.globl	F00322	|(fcn lambda lconc)
F00322:
	link	a6,#-L00324
	tstb	sp@(-132)
	moveml	#L00325,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00323:
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
	jeq	L00328
	movl	a4@,d0
	jra	L00327
L00328:
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
	jeq	L00332
	movl	a4@(4),a2@+
	movl	a4@(8),a2@+
	jbsr	_qcons
	jra	L00331
L00332:
	movl	a4@,a5
	movl	a5@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00335
	movl	a4@,a5
	movl	a5@,a0
	movl	a4@(4),a0@
	movl	a0,d0
	movl	a4@,a0
	movl	a4@(8),a0@
	movl	a0,d0
	jra	L00331
L00335:
	movl	a4@,a0
	movl	a4@(8),a0@
	movl	a0,d0
	movl	d0,a0
	movl	a4@(4),a0@(4)
	movl	a0,d0
L00331:
L00327:
	jra	L00326
|	movl	d7,d0
L00326:
	subl	#12,a2
	moveml	a6@(-20),#L00325
	unlk	a6
	rts
L00325 = 15488
L00324 = 20
	.globl	F00336	|(fcn lambda ldiff)
F00336:
	link	a6,#-L00338
	tstb	sp@(-132)
	moveml	#L00339,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00337:
	movl	a4@,d6
	cmpl	a4@(4),d6
	jne	L00341
	movl	d7,d0
	jra	L00340
L00341:
	cmpl	a4@(4),d7
	jne	L00342
	movl	a4@,d0
	jra	L00340
L00342:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a4@,a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a4@(8)
	movl	a4@(8),a4@(12)
L00343:
	movl	a4@,a5
	movl	a5@,a4@
	movl	a4@,d6
	cmpl	a4@(4),d6
	jne	L00346
	movl	a4@(12),d0
	jra	L00344
|	jra	L00345
L00346:
	cmpl	a4@,d7
	jne	L00347
	movl	a3@(124),a2@+	|(calling error)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00345
L00347:
	movl	d7,d0
L00345:
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
	jra	L00343
|	movl	d7,d0
L00344:
	subql	#8,a2
L00340:
	subql	#8,a2
	moveml	a6@(-24),#L00339
	unlk	a6
	rts
L00339 = 15552
L00338 = 24
	.globl	F00348	|(fcn lambda lsubst)
F00348:
	link	a6,#-L00350
	tstb	sp@(-132)
	moveml	#L00351,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00349:
	cmpl	a4@(8),d7
	jne	L00353
	movl	d7,d0
	jra	L00352
L00353:
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
	jeq	L00354
	movl	a4@(4),d6
	cmpl	a4@(8),d6
	jne	L00358
	movl	a4@,d0
	jra	L00357
L00358:
	movl	a4@(8),d0
L00357:
	jra	L00352
L00354:
	movl	a4@(4),a2@+
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00360
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00361
	jra	L00359
L00360:
	subql	#8,a2
L00361:
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
	jra	L00352
L00359:
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
L00352:
	subl	#12,a2
	moveml	a6@(-24),#L00351
	unlk	a6
	rts
L00351 = 15552
L00350 = 24
	.globl	F00362	|(fcn lambda merge)
F00362:
	link	a6,#-L00364
	tstb	sp@(-132)
	moveml	#L00365,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00363:
	movl	_bnp,a1
	movl	a3@(128),a5
	movl	a5@,a1@+
	movl	a3@(128),a1@+
	movl	a3@(128),a5
	movl	a4@(8),a5@
	movl	a1,_bnp
	movl	a3@(128),a5
	cmpl	a5@,d7
	jne	L00367
	movl	a3@(128),a5
	movl	a3@(112),a5@
	jra	L00366
L00367:
	movl	d7,d0
L00366:
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
	moveml	a6@(-20),#L00365
	unlk	a6
	rts
L00365 = 15488
L00364 = 20
	.globl	F00368	|(fcn lambda merge1)
F00368:
	link	a6,#-L00370
	tstb	sp@(-132)
	moveml	#L00371,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00369:
	cmpl	a4@,d7
	jne	L00373
	movl	a4@(4),d0
	jra	L00372
L00373:
	cmpl	a4@(4),d7
	jne	L00374
	movl	a4@,d0
	jra	L00372
L00374:
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
	jne	L00380
	movl	a4@(16),a1
	cmpl	a1@(8),d7
	jeq	L00380
	movl	a4@(16),a1
	movl	a1@(8),a4@(16)
	cmpl	a1@(8),d7
	jra	L00379
L00380:
	movl	d7,d0
L00379:
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00383
	movl	a3@(116),a2@+
	movl	a4@(16),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00383
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-12),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00382
L00383:
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00382:
	cmpl	d0,d7
	jeq	L00378
	movl	a4@,a2@+
	movl	a4@,a5
	movl	a5@,a4@
	movl	a4@(16),d0
	subql	#4,a2
	jra	L00377
L00378:
	movl	a4@(4),a2@+
	movl	a4@(4),a5
	movl	a5@,a4@(4)
	movl	a4@(16),d0
	subql	#4,a2
L00377:
	movl	d0,a4@(12)
	movl	a4@(12),a4@(8)
L00375:
	cmpl	a4@,d7
	jne	L00388
	movl	a4@(12),a0
	movl	a4@(4),a0@
	movl	a0,d0
	movl	a4@(8),d0
	jra	L00376
|	jra	L00387
L00388:
	cmpl	a4@(4),d7
	jne	L00389
	movl	a4@(12),a0
	movl	a4@,a0@
	movl	a0,d0
	movl	a4@(8),d0
	jra	L00376
|	jra	L00387
L00389:
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
	jne	L00392
	movl	a4@(16),a1
	cmpl	a1@(8),d7
	jeq	L00392
	movl	a4@(16),a1
	movl	a1@(8),a4@(16)
	cmpl	a1@(8),d7
	jra	L00391
L00392:
	movl	d7,d0
L00391:
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00395
	movl	a3@(116),a2@+
	movl	a4@(16),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00395
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-12),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00394
L00395:
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00394:
	cmpl	d0,d7
	jeq	L00390
	movl	a4@(12),a0
	movl	a4@,a0@
	movl	a0,d0
	movl	a4@,a5
	movl	a5@,a4@
	jra	L00387
L00390:
	movl	a4@(12),a0
	movl	a4@(4),a0@
	movl	a0,d0
	movl	a4@(4),a5
	movl	a5@,a4@(4)
L00387:
	movl	a4@(12),a5
	movl	a5@,a4@(12)
	jra	L00375
|	movl	d7,d0
L00376:
	subql	#8,a2
L00372:
	subql	#8,a2
	moveml	a6@(-24),#L00371
	unlk	a6
	rts
L00371 = 15552
L00370 = 24
	.globl	F00397	|(fcn macro neq)
F00397:
	link	a6,#-L00399
	tstb	sp@(-132)
	moveml	#L00400,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00398:
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
	moveml	a6@(-20),#L00400
	unlk	a6
	rts
L00400 = 15488
L00399 = 20
	.globl	F00401	|(fcn macro quote!)
F00401:
	link	a6,#-L00403
	tstb	sp@(-132)
	moveml	#L00404,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00402:
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
	moveml	a6@(-20),#L00404
	unlk	a6
	rts
L00404 = 15488
L00403 = 20
	.globl	F00405	|(fcn lambda quote!-expr-mac)
F00405:
	link	a6,#-L00407
	tstb	sp@(-132)
	moveml	#L00408,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00406:
	cmpl	a4@,d7
	jne	L00410
	movl	d7,d0
	jra	L00409
L00410:
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
	jeq	L00411
	movl	a3@(120),a2@+
	movl	a4@,a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a2@+
	jbsr	_qcons
	jra	L00409
L00411:
	movl	a4@,a1
	movl	a1@(4),d0
	cmpl	a3@(140),d0
	jne	L00414
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
	jra	L00409
L00414:
	movl	a4@,a0
	movl	a0@(4),d0
	cmpl	a3@(148),d0
	jne	L00415
	movl	a4@,a5
	movl	a5@,a1
	cmpl	a1@,d7
	jeq	L00417
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
	jra	L00416
L00417:
	movl	a4@,a5
	movl	a5@,a0
	movl	a0@(4),d0
L00416:
	jra	L00409
L00415:
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
L00409:
	subql	#4,a2
	moveml	a6@(-20),#L00408
	unlk	a6
	rts
L00408 = 15488
L00407 = 20
	.globl	F00420	|(fcn lexpr remove)
F00420:
	link	a6,#-L00422
	tstb	sp@(-132)
	moveml	#L00423,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00421:
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
	jle	L00429
	movl	#_nilatom+0x1400-4,a4@(12)
	jra	L00428
L00429:
	movl	#_nilatom+0x1400+12,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(12)
L00428:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	a4@(8),a2@+	|(beginning do)
	movl	d7,a2@+
L00432:
	cmpl	a4@(24),d7
	jne	L00433
	movl	a4@(16),d0
	jra	L00434
L00433:
	movl	a4@(24),a1
	movl	a1@(4),a2@+
	movl	a4@(4),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00438
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00439
	jra	L00437
L00438:
	subql	#8,a2
L00439:
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@(12),d6
	jne	L00436
	movl	a4@(12),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L00436
L00437:
	movl	a4@(24),a1
	movl	a1@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a4@(28)
	cmpl	a4@(16),d7
	jne	L00442
	movl	a4@(28),a4@(16)
	jra	L00441
L00442:
	movl	a4@(20),a0
	movl	a4@(28),a0@
	movl	a0,d0
L00441:
	movl	a4@(28),a4@(20)
	jra	L00435
L00436:
	cmpl	#_nilatom+0x1400-4096,a4@(12)
	jle	L00443
	cmpl	#_nilatom+0x1400+4092,a4@(12)
	jle	L00444
L00443:
	movl	a4@(12),a0
	jbsr	_qoneminus
	movl	d0,a4@(12)
	jra	L00445
L00444:
	movl	a4@(12),d0
	subql	#4,d0
	movl	d0,a4@(12)
L00445:
L00435:
	movl	a4@(24),a5
	movl	a5@,a4@(24)
	jra	L00432
L00434:
	subl	#32,a2
	moveml	a6@(-24),#L00423
	unlk	a6
	rts
L00423 = 15552
L00422 = 24
	.globl	F00446	|(fcn lambda subpair)
F00446:
	link	a6,#-L00448
	tstb	sp@(-132)
	moveml	#L00449,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00447:
	cmpl	a4@,d7
	jeq	L00451
	movl	a4@(8),a2@+	|(calling subpr)
	movl	a4@,a2@+
	movl	a4@(4),d0
	cmpl	a4@(4),d7
	jne	L00452
	movl	a3@(156),a2@+
	jra	L00453
L00452:
	movl	d0,a2@+
L00453:
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+216,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00450
L00451:
	movl	a4@(8),d0
L00450:
	subl	#12,a2
	moveml	a6@(-20),#L00449
	unlk	a6
	rts
L00449 = 15488
L00448 = 20
	.globl	F00454	|(fcn lambda subpr)
F00454:
	link	a6,#-L00456
	tstb	sp@(-132)
	moveml	#L00457,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00455:
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
	jeq	L00461
	jra	L00458
|	jra	L00460
L00461:
	movl	a4@,a5
	movl	a5@,a4@(12)
	cmpl	a5@,d7
	jeq	L00464
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
	jra	L00460
L00464:
	movl	d7,d0
L00460:
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
	jne	L00467
	movl	a4@(12),d6
	movl	a4@,a5
	cmpl	a5@,d6
	jeq	L00466
L00467:
	movl	a4@(16),a2@+
	movl	a4@(12),a2@+
	jbsr	_qcons
	jra	L00465
L00466:
	movl	a4@,d0
L00465:
	jra	L00459
L00458:
	cmpl	a4@(4),d7
	jne	L00469
	movl	a4@,d0
	jra	L00459
|	jra	L00468
L00469:
	cmpl	a4@(8),d7
	jeq	L00470
	movl	a4@,a2@+
	movl	a4@(4),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00472
	movl	a4@(8),a0
	movl	a0@(4),d0
	jra	L00459
|	jra	L00471
L00472:
	movl	d7,d0
L00471:
	jra	L00468
L00470:
	movl	a4@,a2@+
	movl	a4@(4),a1
	movl	a1@(4),a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00474
	movl	a4@(4),a1
	movl	a1@(4),a5
	movl	a5@,d0
	jra	L00459
|	jra	L00473
L00474:
	movl	d7,d0
L00473:
L00468:
	movl	a4@(4),a5
	movl	a5@,a4@(4)
	cmpl	a4@(8),d7
	jeq	L00475
	movl	a4@(8),a5
	movl	a5@,d0
	movl	a4@(8),a5
	cmpl	a5@,d7
	jne	L00476
	movl	a3@(160),a4@(8)
	jra	L00477
L00476:
	movl	d0,a4@(8)
L00477:
L00475:
	jra	L00458
|	movl	d7,d0
L00459:
	subl	#20,a2
	moveml	a6@(-24),#L00457
	unlk	a6
	rts
L00457 = 15552
L00456 = 24
	.globl	F00478	|(fcn lambda tailp)
F00478:
	link	a6,#-L00480
	tstb	sp@(-132)
	moveml	#L00481,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00479:
	cmpl	a4@,d7
	jeq	L00482
L00483:
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
	jeq	L00486
	movl	d7,d0
	jra	L00484
|	jra	L00485
L00486:
	movl	a4@,d6
	cmpl	a4@(4),d6
	jne	L00489
	movl	a4@,d0
	jra	L00484
|	jra	L00485
L00489:
	movl	d7,d0
L00485:
	movl	a4@(4),a5
	movl	a5@,a4@(4)
	jra	L00483
|	movl	d7,d0
L00484:
	jra	L00490
L00482:
	movl	d7,d0
L00490:
	subql	#8,a2
	moveml	a6@(-24),#L00481
	unlk	a6
	rts
L00481 = 15552
L00480 = 24
	.globl	F00491	|(fcn lambda tconc)
F00491:
	link	a6,#-L00493
	tstb	sp@(-132)
	moveml	#L00494,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00492:
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
	jeq	L00496
	movl	a4@(4),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a4@(4)
	movl	a4@(4),a2@+
	movl	a4@(4),a2@+
	jbsr	_qcons
	jra	L00495
L00496:
	movl	a4@,a5
	movl	a5@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00499
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
	jra	L00495
L00499:
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
L00495:
	subql	#8,a2
	moveml	a6@(-20),#L00494
	unlk	a6
	rts
L00494 = 15488
L00493 = 20
	.globl	F00500	|(fcn lambda int:vector-range-error)
F00500:
	link	a6,#-L00502
	tstb	sp@(-132)
	moveml	#L00503,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00501:
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
	moveml	a6@(-20),#L00503
	unlk	a6
	rts
L00503 = 15488
L00502 = 20
	.globl	F00504	|(fcn lexpr int:wrong-number-of-args-error)
F00504:
	link	a6,#-L00506
	tstb	sp@(-132)
	moveml	#L00507,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00505:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	a4@,d0
	cmpl	a4@,d7
	jeq	L00508
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00508
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00509
L00508:
	movl	a4@(-4),a2@+
L00509:
	cmpl	#_nilatom+0x1400-4096,a4@
	jle	L00512
	cmpl	#_nilatom+0x1400+4092,a4@
	jle	L00513
L00512:
	movl	a4@,a0
	jbsr	_qoneminus
	jra	L00514
L00513:
	movl	a4@,d0
	subql	#4,d0
L00514:
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00510
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00511
L00510:
	movl	a4@(-4),a2@+
L00511:
	movl	a4@,a5
	movl	a5@,d0
	subl	#2,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00517
	jbsr	_qnewint
L00517:
	cmpl	d0,d7
	jeq	L00515
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00515
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00516
L00515:
	movl	a4@(-4),a2@+
L00516:
	movl	a4@,a5	|(beginning do)
	movl	a5@,d0
	subl	#3,d0
	movl	d0,d2
	movl	d2,d0
	asll	#2,d0
	addl	#_nilatom+0x1400+0,d0
	movl	d2,d1
	subl	#1024,d1
	jcs	L00520
	jbsr	_qnewint
L00520:
	movl	d0,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
L00518:
	movl	a4@(16),a5
	cmpl	#1,a5@
	jpl	L00519
	movl	a4@(8),a5
	movl	a5@,d6
	movl	a4@(4),a5
	cmpl	a5@,d6
	jne	L00523
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
	jra	L00522
L00523:
	cmpl	#_nilatom+0x1400-4,a4@(4)
	jne	L00524
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
	jra	L00522
L00524:
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
L00522:
	movl	a4@(20),a2@+	|(calling error)
	movl	a4@(24),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00521
L00519:
	movl	a4@(16),d0
	cmpl	a4@(16),d7
	jeq	L00525
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00525
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00526
L00525:
	movl	a4@(-4),a2@+
L00526:
	movl	a4@(24),a2@+
	jbsr	_qcons
	movl	d0,a4@(24)
	cmpl	#_nilatom+0x1400-4096,a4@(16)
	jle	L00527
	cmpl	#_nilatom+0x1400+4092,a4@(16)
	jle	L00528
L00527:
	movl	a4@(16),a0
	jbsr	_qoneminus
	movl	d0,a4@(16)
	jra	L00529
L00528:
	movl	a4@(16),d0
	subql	#4,d0
	movl	d0,a4@(16)
L00529:
	jra	L00518
L00521:
	subl	#28,a2
	moveml	a6@(-28),#L00507
	unlk	a6
	rts
L00507 = 15556
L00506 = 28
	.globl	F00530	|(fcn lambda filestat:mode)
F00530:
	link	a6,#-L00532
	tstb	sp@(-132)
	moveml	#L00533,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00531:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00535
	movl	a4@,a0
	moveq	#0,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00536
	jmp	vecindexerr
L00536:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,d0
	jra	L00537
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
L00537:
	jra	L00534
L00535:
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
L00534:
	subql	#4,a2
	moveml	a6@(-24),#L00533
	unlk	a6
	rts
L00533 = 15492
L00532 = 24
	.globl	F00538	|(fcn lambda filestat:type)
F00538:
	link	a6,#-L00540
	tstb	sp@(-132)
	moveml	#L00541,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00539:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00543
	movl	a4@,a0
	moveq	#1,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00544
	jmp	vecindexerr
L00544:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,d0
	jra	L00542
L00543:
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
L00542:
	subql	#4,a2
	moveml	a6@(-24),#L00541
	unlk	a6
	rts
L00541 = 15492
L00540 = 24
	.globl	F00545	|(fcn lambda filestat:nlink)
F00545:
	link	a6,#-L00547
	tstb	sp@(-132)
	moveml	#L00548,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00546:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00550
	movl	a4@,a0
	moveq	#2,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00551
	jmp	vecindexerr
L00551:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,d0
	jra	L00549
L00550:
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
L00549:
	subql	#4,a2
	moveml	a6@(-24),#L00548
	unlk	a6
	rts
L00548 = 15492
L00547 = 24
	.globl	F00552	|(fcn lambda filestat:uid)
F00552:
	link	a6,#-L00554
	tstb	sp@(-132)
	moveml	#L00555,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00553:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00557
	movl	a4@,a0
	moveq	#3,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00558
	jmp	vecindexerr
L00558:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,d0
	jra	L00556
L00557:
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
L00556:
	subql	#4,a2
	moveml	a6@(-24),#L00555
	unlk	a6
	rts
L00555 = 15492
L00554 = 24
	.globl	F00559	|(fcn lambda filestat:gid)
F00559:
	link	a6,#-L00561
	tstb	sp@(-132)
	moveml	#L00562,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00560:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00564
	movl	a4@,a0
	moveq	#4,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00565
	jmp	vecindexerr
L00565:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,d0
	jra	L00563
L00564:
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
L00563:
	subql	#4,a2
	moveml	a6@(-24),#L00562
	unlk	a6
	rts
L00562 = 15492
L00561 = 24
	.globl	F00566	|(fcn lambda filestat:size)
F00566:
	link	a6,#-L00568
	tstb	sp@(-132)
	moveml	#L00569,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00567:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00571
	movl	a4@,a0
	moveq	#5,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00572
	jmp	vecindexerr
L00572:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,d0
	jra	L00570
L00571:
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
L00570:
	subql	#4,a2
	moveml	a6@(-24),#L00569
	unlk	a6
	rts
L00569 = 15492
L00568 = 24
	.globl	F00573	|(fcn lambda filestat:atime)
F00573:
	link	a6,#-L00575
	tstb	sp@(-132)
	moveml	#L00576,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00574:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00578
	movl	a4@,a0
	moveq	#6,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00579
	jmp	vecindexerr
L00579:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,d0
	jra	L00577
L00578:
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
L00577:
	subql	#4,a2
	moveml	a6@(-24),#L00576
	unlk	a6
	rts
L00576 = 15492
L00575 = 24
	.globl	F00580	|(fcn lambda filestat:mtime)
F00580:
	link	a6,#-L00582
	tstb	sp@(-132)
	moveml	#L00583,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00581:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00585
	movl	a4@,a0
	moveq	#7,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00586
	jmp	vecindexerr
L00586:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,d0
	jra	L00584
L00585:
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
L00584:
	subql	#4,a2
	moveml	a6@(-24),#L00583
	unlk	a6
	rts
L00583 = 15492
L00582 = 24
	.globl	F00587	|(fcn lambda filestat:ctime)
F00587:
	link	a6,#-L00589
	tstb	sp@(-132)
	moveml	#L00590,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00588:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00592
	movl	a4@,a0
	moveq	#8,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00593
	jmp	vecindexerr
L00593:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,d0
	jra	L00591
L00592:
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
L00591:
	subql	#4,a2
	moveml	a6@(-24),#L00590
	unlk	a6
	rts
L00590 = 15492
L00589 = 24
	.globl	F00594	|(fcn lambda filestat:dev)
F00594:
	link	a6,#-L00596
	tstb	sp@(-132)
	moveml	#L00597,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00595:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00599
	movl	a4@,a0
	moveq	#9,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00600
	jmp	vecindexerr
L00600:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,d0
	jra	L00598
L00599:
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
L00598:
	subql	#4,a2
	moveml	a6@(-24),#L00597
	unlk	a6
	rts
L00597 = 15492
L00596 = 24
	.globl	F00601	|(fcn lambda filestat:rdev)
F00601:
	link	a6,#-L00603
	tstb	sp@(-132)
	moveml	#L00604,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00602:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00606
	movl	a4@,a0
	moveq	#10,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00607
	jmp	vecindexerr
L00607:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,d0
	jra	L00605
L00606:
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
L00605:
	subql	#4,a2
	moveml	a6@(-24),#L00604
	unlk	a6
	rts
L00604 = 15492
L00603 = 24
	.globl	F00608	|(fcn lambda filestat:ino)
F00608:
	link	a6,#-L00610
	tstb	sp@(-132)
	moveml	#L00611,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00609:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#18,a5@(0,d0:L)
	jne	L00613
	movl	a4@,a0
	moveq	#11,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00614
	jmp	vecindexerr
L00614:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,d0
	jra	L00612
L00613:
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
L00612:
	subql	#4,a2
	moveml	a6@(-24),#L00611
	unlk	a6
	rts
L00611 = 15492
L00610 = 24
	.globl	F00615	|(fcn nlambda showstack)
F00615:
	link	a6,#-L00617
	tstb	sp@(-132)
	moveml	#L00618,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00616:
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
	moveml	a6@(-20),#L00618
	unlk	a6
	rts
L00618 = 15488
L00617 = 20
	.globl	F00619	|(fcn nlambda baktrace)
F00619:
	link	a6,#-L00621
	tstb	sp@(-132)
	moveml	#L00622,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00620:
	movl	a4@,a2@+	|(calling showstack-baktrace)
	movl	d7,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+248,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#4,a2
	moveml	a6@(-20),#L00622
	unlk	a6
	rts
L00622 = 15488
L00621 = 20
	.globl	F00623	|(fcn lambda showstack-baktrace)
F00623:
	link	a6,#-L00625
	tstb	sp@(-132)
	moveml	#L00626,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00624:
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
L00627:
	cmpl	a4@(40),d7
	jne	L00628
	movl	d7,d0
	jra	L00629
L00628:
	movl	a3@,a5
	movl	a5@,a2@+
	movl	a4@(40),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00631
	movl	a3@,a5
	movl	a5@,a4@(8)
	jra	L00630
L00631:
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
	jeq	L00632
	movl	a4@(40),a1
	movl	a1@(4),a4@(12)
	jra	L00630
L00632:
	movl	a3@(248),a2@+
	movl	a4@(40),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00635
	movl	a4@(40),a5
	movl	a5@,a4@(40)
	movl	a4@(40),a0
	movl	a3@(244),a5
	movl	a0@(4),a5@
	jra	L00630
L00635:
	movl	a3@(252),a2@+
	movl	a4@(40),a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00636
	movl	a4@(40),a5
	movl	a5@,a4@(40)
	movl	a4@(40),a1
	movl	a3@(240),a5
	movl	a1@(4),a5@
	jra	L00630
L00636:
	movl	d7,d0
L00630:
	movl	a4@(40),a5
	movl	a5@,a4@(40)
	jra	L00627
L00629:
	subql	#4,a2	|(beginning do)
	movl	a4@(12),a2@+
	movl	a3@,a5
	movl	a5@,a2@+
L00637:
	movl	#_nilatom+0x1400+0,a2@+
	movl	a4@(36),a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00641
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+112,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00642
	jra	L00643
L00641:
	subql	#8,a2
L00642:
	jra	L00640
L00643:
	movl	#_nilatom+0x1400+0,d6
	cmpl	a4@(40),d6
	jne	L00638
	movl	a4@(40),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L00638
L00640:
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00639
L00638:
	movl	a4@(36),a2@+	|(calling int:showstack)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+256,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(24)
	cmpl	a4@(24),d7
	jne	L00646
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d7,d0
	jra	L00639
|	jra	L00645
L00646:
	movl	d7,d0
L00645:
	movl	a4@(24),a5
	movl	a5@,a4@(36)
	movl	a4@(24),a1
	movl	a1@(4),a4@(24)
	cmpl	a4@(8),d7
	jne	L00649
	movl	a4@(24),a2@+	|(calling trace-funp)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+264,a5
	jbsr	a5@
	lea	a2@(-4),a2
	cmpl	d0,d7
	jne	L00648
L00649:
	cmpl	a4@(32),d7
	jeq	L00651
	cmpl	a4@(4),d7
	jeq	L00651
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
	jra	L00650
L00651:
	movl	a4@(24),a4@(28)
L00650:
	cmpl	a4@(4),d7
	jeq	L00654
	movl	a3@(260),a5
	movl	a5@,a2@+
	movl	a4@(28),a2@+
	movl	a4@(48),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00656
	movl	a4@(48),a1
	cmpl	a1@(8),d7
	jeq	L00656
	movl	a4@(48),a1
	movl	a1@(8),a4@(48)
	cmpl	a1@(8),d7
	jra	L00655
L00656:
	movl	d7,d0
L00655:
	movl	a4@(48),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#5,a5@(0,d0:L)
	jne	L00659
	movl	a3@(116),a2@+
	movl	a4@(48),a1
	movl	a1@(4),d0
	cmpl	a1@(4),d7
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00659
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	a2@(-8),a5
	movl	a5@,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00658
L00659:
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+168,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00658:
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00653
L00654:
	movl	a4@(28),a2@+	|(calling baktraceprint)
	movl	a4@(44),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+280,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00653:
	cmpl	#_nilatom+0x1400-4096,a4@(40)
	jle	L00661
	cmpl	#_nilatom+0x1400+4092,a4@(40)
	jle	L00662
L00661:
	movl	a4@(40),a0
	jbsr	_qoneminus
	movl	d0,a4@(40)
	jra	L00663
L00662:
	movl	a4@(40),d0
	subql	#4,d0
	movl	d0,a4@(40)
L00663:
	movl	a4@(24),a4@(32)
	jra	L00647
L00648:
	movl	d7,d0
L00647:
	movl	d7,a4@(44)
	jra	L00637
L00639:
	subql	#8,a2
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1,_bnp
	subl	#16,_bnp
	subl	#40,a2
	moveml	a6@(-24),#L00626
	unlk	a6
	rts
L00626 = 15552
L00625 = 24
	.globl	F00664	|(fcn lambda baktraceprint)
F00664:
	link	a6,#-L00666
	tstb	sp@(-132)
	moveml	#L00667,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00665:
	cmpl	a4@(4),d7
	jne	L00669
	movl	a3@(264),a2@+	|(calling patom)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00668
L00669:
	movl	d7,d0
L00668:
	lea	a2@,a5	|(calling nwritn)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+64,a5
	jbsr	a5@
	lea	a2@,a2
	movl	d0,a0
	movl	a0@,d0
	cmpl	#65,d0
	jle	L00671
	lea	a2@,a5	|(calling terpr)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00670
L00671:
	movl	d7,d0
L00670:
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
	jeq	L00673
	movl	a4@,a2@+	|(calling print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+288,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00672
L00673:
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
	jne	L00677
	movl	a4@,a1	|(calling print)
	movl	a1@(4),a2@+
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+288,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00676
L00677:
	movl	a4@,a2@+	|(calling print)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+288,a5
	jbsr	a5@
	lea	a2@(-4),a2
L00676:
	movl	_bnp,a1
	movl	a1@(-4),a5
	movl	a1@(-8),a5@
	movl	a1@(-12),a5
	movl	a1@(-16),a5@
	movl	a1,_bnp
	subl	#16,_bnp
	subql	#8,a2
L00672:
	subql	#8,a2
	moveml	a6@(-20),#L00667
	unlk	a6
	rts
L00667 = 15488
L00666 = 20
	.globl	F00678	|(fcn lambda trace-funp)
F00678:
	link	a6,#-L00680
	tstb	sp@(-132)
	moveml	#L00681,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00679:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00683
	movl	a4@,d5
	movl	a3@(268),d0
	cmpl	d0,d7
	jeq	L00685
	movl	d0,a0
L00686:
	cmpl	a0@(4),d5
	jeq	L00684
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00686
	movl	a0,d0
L00685:
	movl	d0,d0
	jra	L00687
L00684:
	movl	a0,d0
	jra	L00682
L00687:
	jra	L00688
L00683:
	movl	d7,d0
L00688:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00689
	movl	a4@,a1
	movl	a1@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00691
	movl	a4@,a0
	movl	a0@(4),d5
	movl	a3@(272),d0
	cmpl	d0,d7
	jeq	L00693
	movl	d0,a0
L00694:
	cmpl	a0@(4),d5
	jeq	L00692
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00694
	movl	a0,d0
L00693:
	movl	d0,d0
	jra	L00695
L00692:
	movl	a0,d0
L00695:
	jra	L00690
L00691:
	movl	a4@,a0
	movl	a0@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00696
	movl	a3@(116),a2@+
	movl	a4@,a1
	movl	a1@(4),a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00697
	movl	a3@(276),a2@+
	movl	a4@,a1
	movl	a1@(4),a5
	movl	a5@,a0
	movl	a0@(4),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jeq	L00698
	movl	d7,d0
	jra	L00699
L00698:
	movl	a3@,d0
L00699:
	jra	L00700
L00697:
	movl	d7,d0
L00700:
	jra	L00690
L00696:
	movl	d7,d0
L00690:
	jra	L00701
L00689:
	movl	d7,d0
L00701:
	jra	L00702
L00682:
	movl	d0,d0
L00702:
	subql	#4,a2
	moveml	a6@(-28),#L00681
	unlk	a6
	rts
L00681 = 15584
L00680 = 28
	.globl	F00703	|(fcn lambda subst-eq)
F00703:
	link	a6,#-L00705
	tstb	sp@(-132)
	moveml	#L00706,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(12),a2
L00704:
	movl	a4@(4),d6
	cmpl	a4@(8),d6
	jne	L00708
	movl	a4@,d0
	jra	L00707
L00708:
	movl	a4@(8),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00709
	movl	a4@(4),a2@+	|(calling subst-eqp)
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+296,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jeq	L00709
	movl	a4@(4),a2@+
	movl	a4@(8),a1
	movl	a1@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00712
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
	jra	L00711
L00712:
	movl	a4@(8),a0
	movl	a0@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00713
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
	jra	L00711
L00713:
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
L00711:
	jra	L00707
L00709:
	movl	a4@(8),d0
L00707:
	subl	#12,a2
	moveml	a6@(-24),#L00706
	unlk	a6
	rts
L00706 = 15552
L00705 = 24
	.globl	F00714	|(fcn lambda subst-eqp)
F00714:
	link	a6,#-L00716
	tstb	sp@(-132)
	moveml	#L00717,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00715:
	movl	a4@,d6
	cmpl	a4@(4),d6
	jne	L00719
	movl	a3@,a5
	movl	a5@,d0
	jra	L00718
L00719:
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00720
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
	jne	L00721
	movl	a4@,a2@+	|(calling subst-eqp)
	movl	a4@(4),a5
	movl	a5@,a2@+
	movl	_lbot,a5
	movl	a4,a5
	movl	a2@(-8),a5@
	movl	a2@(-4),a5@(4)
	movl	a5,a2
	addql	#8,a2
	jra	L00715
|	jra	L00722
L00721:
	movl	d0,d0
L00722:
	jra	L00718
L00720:
	movl	d7,d0
L00718:
	subql	#8,a2
	moveml	a6@(-24),#L00717
	unlk	a6
	rts
L00717 = 15552
L00716 = 24
	.globl	F00723	|(fcn macro environment)
F00723:
	link	a6,#-L00725
	tstb	sp@(-132)
	moveml	#L00726,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00724:
	movl	a4@,a5
	movl	a5@,a2@+
	movl	a4@(4),a2@+	|(beginning do)
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
L00727:
	cmpl	a4@(8),d7
	jne	L00728
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
	jra	L00729
L00728:
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
	jeq	L00731
	movl	a4@(12),a2@+
	movl	d7,a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	jra	L00730
L00731:
	movl	d7,d0
L00730:
	movl	a4@(16),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jne	L00735
	movl	a4@(16),a1
	movl	a1@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00735
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
	jra	L00734
L00735:
	movl	d7,d0
L00734:
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
	jra	L00727
L00729:
	subl	#24,a2
	moveml	a6@(-20),#L00726
	unlk	a6
	rts
L00726 = 15488
L00725 = 20
	.globl	F00737	|(fcn nlambda environment-files)
F00737:
	link	a6,#-L00739
	tstb	sp@(-132)
	moveml	#L00740,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00738:
	movl	d7,a2@+
	movl	a4@,a4@(4)	|(beginning do)
	movl	a4@(4),a2@+
L00743:
	cmpl	a4@(8),d7
	jne	L00744
	movl	d7,d0
	jra	L00745
L00744:
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	a4@(12),a2@+
	movl	a3@(292),a2@+
	jbsr	_qget
	cmpl	d0,d7
	jne	L00747
	movl	a4@(12),a2@+	|(calling load)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+304,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00746
L00747:
	movl	d7,d0
L00746:
	subql	#4,a2
	movl	a4@(8),a5
	movl	a5@,a4@(8)
	jra	L00743
L00745:
	subql	#4,a2
	movl	a4@(4),d0
	subql	#8,a2
	moveml	a6@(-20),#L00740
	unlk	a6
	rts
L00740 = 15488
L00739 = 20
	.globl	F00748	|(fcn nlambda environment-syntax)
F00748:
	link	a6,#-L00750
	tstb	sp@(-132)
	moveml	#L00751,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00749:
	movl	d7,a2@+
	movl	a4@,a4@(4)	|(beginning do)
	movl	a4@(4),a2@+
L00754:
	cmpl	a4@(8),d7
	jne	L00755
	movl	d7,d0
	jra	L00756
L00755:
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	movl	a4@(12),d6
	cmpl	a3@(296),d6
	jne	L00758
	lea	a2@,a5	|(calling cvttomaclisp)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+312,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00757
L00758:
	movl	a4@(12),d6
	cmpl	a3@(300),d6
	jne	L00759
	lea	a2@,a5	|(calling cvttointlisp)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+320,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00757
L00759:
	movl	a4@(12),d6
	cmpl	a3@(304),d6
	jne	L00760
	lea	a2@,a5	|(calling cvttoucilisp)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+328,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00757
L00760:
	movl	a4@(12),d5
	movl	a3@(308),d0
	cmpl	d0,d7
	jeq	L00761
	movl	d0,a0
L00763:
	cmpl	a0@(4),d5
	jeq	L00762
	movl	a0@,a0
	cmpl	a0,d7
	jne	L00763
	movl	a0,d0
	jra	L00761
L00762:
	lea	a2@,a5	|(calling cvttofranzlisp)
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+336,a5
	jbsr	a5@
	lea	a2@,a2
	jra	L00757
L00761:
	movl	a3@(312),a2@+	|(calling error)
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00757:
	subql	#4,a2
	movl	a4@(8),a5
	movl	a5@,a4@(8)
	jra	L00754
L00756:
	subql	#4,a2
	movl	a4@(4),d0
	subql	#8,a2
	moveml	a6@(-28),#L00751
	unlk	a6
	rts
L00751 = 15584
L00750 = 28
	.globl	F00764	|(fcn macro environment-maclisp)
F00764:
	link	a6,#-L00766
	tstb	sp@(-132)
	moveml	#L00767,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00765:
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
	moveml	a6@(-20),#L00767
	unlk	a6
	rts
L00767 = 15488
L00766 = 20
	.globl	F00768	|(fcn macro environment-lmlisp)
F00768:
	link	a6,#-L00770
	tstb	sp@(-132)
	moveml	#L00771,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00769:
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
	moveml	a6@(-20),#L00771
	unlk	a6
	rts
L00771 = 15488
L00770 = 20
	.globl	F00772	|(fcn lambda infile)
F00772:
	link	a6,#-L00774
	tstb	sp@(-132)
	moveml	#L00775,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00773:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00777
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jeq	L00777
	movl	a3@(352),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00776
L00777:
	movl	d7,d0
L00776:
	movl	a3@(356),a5
	cmpl	a5@,d7
	jeq	L00780
	movl	a4@,a2@+	|(calling tilde-expand)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@
	jra	L00779
L00780:
	movl	d7,d0
L00779:
	movl	a4@,a2@+	|(calling int:infile)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+352,a5
	jbsr	a5@
	lea	a2@(-4),a2
	subql	#4,a2
	moveml	a6@(-20),#L00775
	unlk	a6
	rts
L00775 = 15488
L00774 = 20
	.globl	F00783	|(fcn lexpr outfile)
F00783:
	link	a6,#-L00785
	tstb	sp@(-132)
	moveml	#L00786,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00784:
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
	jle	L00790
	movl	d7,a4@(8)
	jra	L00789
L00790:
	movl	#_nilatom+0x1400+8,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(8)
L00789:
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00794
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jeq	L00794
	movl	a3@(360),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00793
L00794:
	movl	d7,d0
L00793:
	movl	a3@(356),a5
	cmpl	a5@,d7
	jeq	L00797
	movl	a4@(4),a2@+	|(calling tilde-expand)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(4)
	jra	L00796
L00797:
	movl	d7,d0
L00796:
	movl	a4@(4),a2@+	|(calling int:outfile)
	movl	a4@(8),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+360,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subl	#12,a2
	moveml	a6@(-24),#L00786
	unlk	a6
	rts
L00786 = 15552
L00785 = 24
	.globl	F00798	|(fcn lambda fileopen)
F00798:
	link	a6,#-L00800
	tstb	sp@(-132)
	moveml	#L00801,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00799:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00803
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jeq	L00803
	movl	a3@(364),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00802
L00803:
	movl	d7,d0
L00802:
	movl	a3@(356),a5
	cmpl	a5@,d7
	jeq	L00806
	movl	a4@,a2@+	|(calling tilde-expand)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@
	jra	L00805
L00806:
	movl	d7,d0
L00805:
	movl	a4@,a2@+	|(calling int:fileopen)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+368,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#8,a2
	moveml	a6@(-20),#L00801
	unlk	a6
	rts
L00801 = 15488
L00800 = 20
	.globl	F00811	|(fcn lexpr fasl)
F00811:
	link	a6,#-L00813
	tstb	sp@(-132)
	moveml	#L00814,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00812:
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
L00817:
	movl	a4@(8),a5
	cmpl	#2,a5@
	jpl	L00818
	movl	a4@(12),d0
	jra	L00819
L00818:
	cmpl	#_nilatom+0x1400-4096,a4@(8)
	jle	L00820
	cmpl	#_nilatom+0x1400+4092,a4@(8)
	jle	L00821
L00820:
	movl	a4@(8),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00822
L00821:
	movl	a4@(8),d0
	subql	#4,d0
	movl	d0,a2@+
L00822:
	movl	a4@(8),d0
	cmpl	a4@(8),d7
	jeq	L00823
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00823
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00824
L00823:
	movl	a4@(-4),a2@+
L00824:
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	movl	a2@-,a4@(8)
	jra	L00817
L00819:
	subql	#8,a2
	movl	d0,a2@+
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00826
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jeq	L00826
	movl	a3@(368),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00825
L00826:
	movl	d7,d0
L00825:
	movl	a3@(356),a5
	cmpl	a5@,d7
	jeq	L00829
	movl	a4@(4),a2@+	|(calling tilde-expand)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(4)
	jra	L00828
L00829:
	movl	d7,d0
L00828:
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
	moveml	a6@(-20),#L00814
	unlk	a6
	rts
L00814 = 15488
L00813 = 20
	.globl	F00834	|(fcn lexpr cfasl)
F00834:
	link	a6,#-L00836
	tstb	sp@(-132)
	moveml	#L00837,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00835:
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
L00840:
	movl	a4@(8),a5
	cmpl	#2,a5@
	jpl	L00841
	movl	a4@(12),d0
	jra	L00842
L00841:
	cmpl	#_nilatom+0x1400-4096,a4@(8)
	jle	L00843
	cmpl	#_nilatom+0x1400+4092,a4@(8)
	jle	L00844
L00843:
	movl	a4@(8),a0
	jbsr	_qoneminus
	movl	d0,a2@+
	jra	L00845
L00844:
	movl	a4@(8),d0
	subql	#4,d0
	movl	d0,a2@+
L00845:
	movl	a4@(8),d0
	cmpl	a4@(8),d7
	jeq	L00846
	cmpl	#_nilatom+0x1400+0,d0
	jeq	L00846
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	jra	L00847
L00846:
	movl	a4@(-4),a2@+
L00847:
	movl	a4@(12),a2@+
	jbsr	_qcons
	movl	d0,a4@(12)
	movl	a2@-,a4@(8)
	jra	L00840
L00842:
	subql	#8,a2
	movl	d0,a2@+
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00849
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jeq	L00849
	movl	a3@(376),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00848
L00849:
	movl	d7,d0
L00848:
	movl	a3@(356),a5
	cmpl	a5@,d7
	jeq	L00852
	movl	a4@(4),a2@+	|(calling tilde-expand)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(4)
	jra	L00851
L00852:
	movl	d7,d0
L00851:
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
	moveml	a6@(-20),#L00837
	unlk	a6
	rts
L00837 = 15488
L00836 = 20
	.globl	F00853	|(fcn lambda probef)
F00853:
	link	a6,#-L00855
	tstb	sp@(-132)
	moveml	#L00856,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00854:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00858
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jeq	L00858
	movl	a3@(384),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00857
L00858:
	movl	d7,d0
L00857:
	movl	a4@,a2@+	|(calling sys:access)
	movl	#_nilatom+0x1400+0,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+384,a5
	jbsr	a5@
	lea	a2@(-8),a2
	subql	#4,a2
	moveml	a6@(-20),#L00856
	unlk	a6
	rts
L00856 = 15488
L00855 = 20
	.globl	F00860	|(fcn lambda username-to-dir)
F00860:
	link	a6,#-L00862
	tstb	sp@(-132)
	moveml	#L00863,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00861:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00865
	movl	a4@,a2@+	|(calling get_pname)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+392,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@
	jra	L00864
L00865:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jeq	L00864
	movl	a3@(388),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00864:
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
	jne	L00867
	movl	a4@,a2@+	|(calling sys:getpwnam)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+408,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(4)
	cmpl	a4@(4),d7
	jeq	L00869
	movl	a4@,a2@+
	movl	a4@(4),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(392),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	a3@(392),a5
	movl	d0,a5@
	jra	L00868
L00869:
	movl	d7,d0
L00868:
	jra	L00866
L00867:
	movl	a4@(4),a5
	movl	a5@,a4@(4)
L00866:
	cmpl	a4@(4),d7
	jeq	L00871
	movl	a4@(4),a2@+	|(calling sys:getpwnam-dir)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+416,a5
	jbsr	a5@
	lea	a2@(-4),a2
	jra	L00870
L00871:
	movl	d7,d0
L00870:
	subql	#8,a2
	moveml	a6@(-20),#L00863
	unlk	a6
	rts
L00863 = 15488
L00862 = 20
	.globl	F00872	|(fcn lambda username-to-dir-flush-cache)
F00872:
	link	a6,#-L00874
	tstb	sp@(-132)
	moveml	#L00875,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00873:
	movl	a3@(392),a5
	movl	d7,a5@
	movl	a3@(392),a5
	movl	a5@,d0
	moveml	a6@(-20),#L00875
	unlk	a6
	rts
L00875 = 15488
L00874 = 20
	.globl	F00876	|(fcn lambda sys:getpwnam)
F00876:
	link	a6,#-L00878
	tstb	sp@(-132)
	moveml	#L00879,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00877:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00882
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jne	L00881
L00882:
	movl	#_nilatom+0x1400+4,a2@+	|(calling int:franz-call)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+424,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00880
L00881:
	movl	a3@(396),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00880:
	subql	#4,a2
	moveml	a6@(-20),#L00879
	unlk	a6
	rts
L00879 = 15488
L00878 = 20
	.globl	F00883	|(fcn lambda sys:getpwnam-dir)
F00883:
	link	a6,#-L00885
	tstb	sp@(-132)
	moveml	#L00886,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00884:
	movl	a4@,a0
	moveq	#3,d2
	movl	a0@(-8),d0
	asrl	#2,d0
	cmpl	d0,d2
	jmi	L00887
	jmp	vecindexerr
L00887:
	movl	d2,d0
	asll	#2,d0
	addl	a0,d0
	movl	d0,a1
	movl	a1@,d0
	subql	#4,a2
	moveml	a6@(-24),#L00886
	unlk	a6
	rts
L00886 = 15492
L00885 = 24
	.globl	F00888	|(fcn lambda sys:access)
F00888:
	link	a6,#-L00890
	tstb	sp@(-132)
	moveml	#L00891,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00889:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00895
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jne	L00893
L00895:
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
	jeq	L00893
	movl	a3@(356),a5
	cmpl	a5@,d7
	jeq	L00899
	movl	a4@,a2@+	|(calling tilde-expand)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@
	jra	L00898
L00899:
	movl	d7,d0
L00898:
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
	jne	L00901
	movl	a4@(8),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L00902
	movl	a3@,d0
	jra	L00903
L00902:
	movl	d7,d0
L00903:
	jra	L00904
L00901:
	movl	d7,d0
L00904:
	subql	#4,a2
	jra	L00892
L00893:
	movl	a3@(400),a2@+	|(calling error)
	movl	a4@,a2@+
	movl	a4@(4),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00892:
	subql	#8,a2
	moveml	a6@(-24),#L00891
	unlk	a6
	rts
L00891 = 15552
L00890 = 24
	.globl	F00905	|(fcn lambda chdir)
F00905:
	link	a6,#-L00907
	tstb	sp@(-132)
	moveml	#L00908,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00906:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00911
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jne	L00910
L00911:
	movl	a3@(356),a5
	cmpl	a5@,d7
	jeq	L00913
	movl	a4@,a2@+	|(calling tilde-expand)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@
	jra	L00912
L00913:
	movl	d7,d0
L00912:
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
	jne	L00916
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L00917
	movl	a3@,d0
	jra	L00918
L00917:
	movl	d7,d0
L00918:
	jra	L00919
L00916:
	movl	d7,d0
L00919:
	subql	#4,a2
	cmpl	d0,d7
	jne	L00914
	movl	a3@(404),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00914:
	jra	L00909
L00910:
	movl	a3@(408),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00909:
	subql	#4,a2
	moveml	a6@(-24),#L00908
	unlk	a6
	rts
L00908 = 15552
L00907 = 24
	.globl	F00920	|(fcn lambda sys:unlink)
F00920:
	link	a6,#-L00922
	tstb	sp@(-132)
	moveml	#L00923,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00921:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00926
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jne	L00925
L00926:
	movl	a3@(356),a5
	cmpl	a5@,d7
	jeq	L00928
	movl	a4@,a2@+	|(calling tilde-expand)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@
	jra	L00927
L00928:
	movl	d7,d0
L00927:
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
	jne	L00931
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L00932
	movl	a3@,d0
	jra	L00933
L00932:
	movl	d7,d0
L00933:
	jra	L00934
L00931:
	movl	d7,d0
L00934:
	subql	#4,a2
	cmpl	d0,d7
	jne	L00929
	movl	a3@(412),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00929:
	jra	L00924
L00925:
	movl	a3@(416),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00924:
	subql	#4,a2
	moveml	a6@(-24),#L00923
	unlk	a6
	rts
L00923 = 15552
L00922 = 24
	.globl	F00935	|(fcn lambda sys:link)
F00935:
	link	a6,#-L00937
	tstb	sp@(-132)
	moveml	#L00938,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00936:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00941
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jne	L00940
L00941:
	movl	a3@(356),a5
	cmpl	a5@,d7
	jeq	L00943
	movl	a4@,a2@+	|(calling tilde-expand)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@
	jra	L00942
L00943:
	movl	d7,d0
L00942:
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00946
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jne	L00945
L00946:
	movl	a3@(356),a5
	cmpl	a5@,d7
	jeq	L00948
	movl	a4@(4),a2@+	|(calling tilde-expand)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(4)
	jra	L00947
L00948:
	movl	d7,d0
L00947:
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
	jne	L00951
	movl	a4@(8),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L00952
	movl	a3@,d0
	jra	L00953
L00952:
	movl	d7,d0
L00953:
	jra	L00954
L00951:
	movl	d7,d0
L00954:
	subql	#4,a2
	cmpl	d0,d7
	jne	L00949
	movl	a3@(420),a2@+	|(calling error)
	movl	a4@,a2@+
	movl	a4@(4),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00949:
	jra	L00944
L00945:
	movl	a3@(424),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00944:
	jra	L00939
L00940:
	movl	a3@(428),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00939:
	subql	#8,a2
	moveml	a6@(-24),#L00938
	unlk	a6
	rts
L00938 = 15552
L00937 = 24
	.globl	F00955	|(fcn lambda sys:time)
F00955:
	link	a6,#-L00957
	tstb	sp@(-132)
	moveml	#L00958,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00956:
	movl	#_nilatom+0x1400+20,a2@+	|(calling int:franz-call)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+424,a5
	jbsr	a5@
	lea	a2@(-4),a2
	moveml	a6@(-20),#L00958
	unlk	a6
	rts
L00958 = 15488
L00957 = 20
	.globl	F00959	|(fcn lambda sys:chmod)
F00959:
	link	a6,#-L00961
	tstb	sp@(-132)
	moveml	#L00962,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00960:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jeq	L00966
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00964
L00966:
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
	jeq	L00964
	movl	a3@(356),a5
	cmpl	a5@,d7
	jeq	L00970
	movl	a4@,a2@+	|(calling tilde-expand)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@
	jra	L00969
L00970:
	movl	d7,d0
L00969:
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
	jne	L00973
	movl	a4@(8),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#9,a5@(0,d0:L)
	jeq	L00974
	movl	a3@,d0
	jra	L00975
L00974:
	movl	d7,d0
L00975:
	jra	L00976
L00973:
	movl	d7,d0
L00976:
	subql	#4,a2
	cmpl	d0,d7
	jne	L00971
	movl	a3@(432),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00971:
	jra	L00963
L00964:
	movl	a3@(436),a2@+	|(calling error)
	movl	a4@,a2@+
	movl	a4@(4),a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-12),a2
L00963:
	subql	#8,a2
	moveml	a6@(-24),#L00962
	unlk	a6
	rts
L00962 = 15552
L00961 = 24
	.globl	F00977	|(fcn lambda sys:getpid)
F00977:
	link	a6,#-L00979
	tstb	sp@(-132)
	moveml	#L00980,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00978:
	movl	#_nilatom+0x1400+28,a2@+	|(calling int:franz-call)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+424,a5
	jbsr	a5@
	lea	a2@(-4),a2
	moveml	a6@(-20),#L00980
	unlk	a6
	rts
L00980 = 15488
L00979 = 20
	.globl	F00981	|(fcn lambda filestat)
F00981:
	link	a6,#-L00983
	tstb	sp@(-132)
	moveml	#L00984,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00982:
	movl	d7,a2@+
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00987
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#0,a5@(0,d0:L)
	jne	L00986
L00987:
	movl	a3@(356),a5
	cmpl	a5@,d7
	jeq	L00989
	movl	a4@,a2@+	|(calling tilde-expand)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+344,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@
	jra	L00988
L00989:
	movl	d7,d0
L00988:
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
	jne	L00991
	movl	a3@(440),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00990
L00991:
	movl	a4@(4),d0
L00990:
	jra	L00985
L00986:
	movl	a3@(444),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00985:
	subql	#8,a2
	moveml	a6@(-20),#L00984
	unlk	a6
	rts
L00984 = 15488
L00983 = 20
	.globl	F00992	|(fcn lambda sys:gethostname)
F00992:
	link	a6,#-L00994
	tstb	sp@(-132)
	moveml	#L00995,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@,a2
L00993:
	movl	#_nilatom+0x1400+36,a2@+	|(calling int:franz-call)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+424,a5
	jbsr	a5@
	lea	a2@(-4),a2
	moveml	a6@(-20),#L00995
	unlk	a6
	rts
L00995 = 15488
L00994 = 20
	.globl	F00996	|(fcn lambda sleep)
F00996:
	link	a6,#-L00998
	tstb	sp@(-132)
	moveml	#L00999,sp@
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
	addl	d0,a5
	movb	a5@,d0
	extw	d0
	extl	d0
	moveq	#1,d1
	asll	d0,d1
	movl	d1,d0
	andw	#516,d0
	jeq	L01001
	movl	#_nilatom+0x1400+44,a2@+	|(calling int:franz-call)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+424,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L01000
L01001:
	movl	a3@(448),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L01000:
	subql	#4,a2
	moveml	a6@(-20),#L00999
	unlk	a6
	rts
L00999 = 15488
L00998 = 20
	.globl	F01004	|(fcn lambda sys:nice)
F01004:
	link	a6,#-L01006
	tstb	sp@(-132)
	moveml	#L01007,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L01005:
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
	jeq	L01009
	movl	#_nilatom+0x1400+48,a2@+	|(calling int:franz-call)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+424,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L01008
L01009:
	movl	a3@(452),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+72,a5
	jbsr	a5@
	lea	a2@(-8),a2
L01008:
	subql	#4,a2
	moveml	a6@(-20),#L01007
	unlk	a6
	rts
L01007 = 15488
L01006 = 20
bind_org:
	linker_size = 	114
	trans_size = 	54
	.long	99
	.long	0
	.long	0
	.long	1
	.long	2
	.long	0
	.long	0
	.long	0
	.long	99
	.long	1
	.long	0
	.long	0
	.long	2
	.long	99
	.long	99
	.long	0
	.long	2
	.long	99
	.long	99
	.long	0
	.long	99
	.long	99
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	99
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	99
	.long	2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	1
	.long	1
	.long	2
	.long	2
	.long	99
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	99
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
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
.ascii "(setq rcs-common2- \"$Header: common2.l,v 1.10 84/02/29 19:32"
.asciz ":00 jkf Exp $\")"
.asciz "*process-send"
.asciz "*process-receive"
.asciz "process"
.asciz "msg"
.asciz "msg-tyo-char"
.asciz "msg-print"
.asciz "printblanks"
.asciz "(setq linel 80)"
.asciz "linelength"
.asciz "charcnt"
.asciz "nthcdr"
.asciz "nthcdr::cmacro:g00133"
.ascii "(putprop (quote nthcdr) (getd (quote nthcdr::cmacro:g00133))"
.asciz " (quote cmacro))"
.asciz "(remob (quote nthcdr::cmacro:g00133))"
.asciz "nth"
.asciz "nth::cmacro:g00154"
.ascii "(putprop (quote nth) (getd (quote nth::cmacro:g00154)) (quot"
.asciz "e cmacro))"
.asciz "(remob (quote nth::cmacro:g00154))"
.asciz "listp"
.ascii "(quote (def apply* (nlambda ($x$) (eval (cons (eval (car $x$"
.asciz ")) (cdr $x$))))))"
.asciz "(putd (quote apply*) (getd (quote funcall)))"
.asciz "remq"
.asciz "tab"
.asciz "charcnt"
.asciz "$patom1"
.asciz "attach"
.asciz "Cnth"
.asciz "dsubst"
.asciz "(putd (quote eqstr) (getd (quote equal)))"
.asciz "insert"
.asciz "kwote"
.asciz "lconc"
.asciz "ldiff"
.asciz "lsubst"
.asciz "merge"
.asciz "merge1"
.asciz "neq"
.asciz "(putd (quote nthchar) (getd (quote getchar)))"
.asciz "quote!"
.asciz "quote!-expr-mac"
.asciz "remove"
.asciz "subpair"
.asciz "subpr"
.asciz "tailp"
.asciz "tconc"
.asciz "int:vector-range-error"
.asciz "int:wrong-number-of-args-error"
.asciz "filestat:mode"
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
.asciz "baktrace"
.asciz "showstack-baktrace"
.asciz "baktraceprint"
.asciz "trace-funp"
.asciz "subst-eq"
.asciz "subst-eqp"
.asciz "environment"
.asciz "environment-files"
.asciz "environment-syntax"
.asciz "environment-maclisp"
.asciz "environment-lmlisp"
.ascii "(cond ((null (getd (quote int:infile))) (putd (quote int:inf"
.ascii "ile) (getd (quote infile))) (putd (quote int:outfile) (getd "
.ascii "(quote outfile))) (putd (quote int:fileopen) (getd (quote fi"
.ascii "leopen))) (putd (quote int:cfasl) (getd (quote cfasl))) (put"
.asciz "d (quote int:fasl) (getd (quote fasl)))))"
.asciz "infile"
.asciz "outfile"
.asciz "fileopen"
.asciz "fasl"
.asciz "cfasl"
.asciz "probef"
.ascii "(or (boundp (quote user-name-to-dir-cache)) (setq user-name-"
.asciz "to-dir-cache nil))"
.asciz "username-to-dir"
.asciz "username-to-dir-flush-cache"
.asciz "sys:getpwnam"
.asciz "sys:getpwnam-dir"
.asciz "sys:access"
.asciz "chdir"
.asciz "sys:unlink"
.asciz "sys:link"
.asciz "sys:time"
.asciz "sys:chmod"
.asciz "sys:getpid"
.asciz "filestat"
.asciz "sys:gethostname"
.asciz "sleep"
.asciz "sys:nice"
lit_end:
.data | this is just for documentation 
.asciz "@(#)Compiled by Liszt 68000 version 8.39a on Fri Feb  3 04:38:24 1989"
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
