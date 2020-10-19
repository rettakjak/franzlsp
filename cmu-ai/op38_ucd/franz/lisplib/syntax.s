	.globl	F00083	|(fcn lexpr setsyntax)
F00083:
	link	a6,#-L00086
	tstb	sp@(-132)
	moveml	#L00087,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_np,a2
L00084:
	movl	a2,a5
	subl	_lbot,a5
	addl	#_nilatom+0x1400+0,a5
	movl	a5,a2@+
	movl	a2,a4
	movl	a5,a2@+
	movl	a4@,a2@+
	movl	#_nilatom+0x1400+8,a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00091
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00092
	jra	L00093
L00091:
	subql	#8,a2
L00092:
	jra	L00089
L00093:
	movl	a4@,a2@+
	movl	#_nilatom+0x1400+12,a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00094
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00095
	jra	L00096
L00094:
	subql	#8,a2
L00095:
	jra	L00089
L00096:
	movl	a3@,a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00088
L00089:
	movl	d7,d0
L00088:
	movl	d7,a2@+
	movl	d7,a2@+
	movl	d7,a2@+
	movl	#_nilatom+0x1400+8,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a4@(4)
	movl	#_nilatom+0x1400+4,d0
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
	andw	#532,d0
	jne	L00103
	movl	a4@(8),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00103
	movl	a3@(4),a2@+	|(calling error)
	movl	a4@(8),a2@+
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
	andw	#532,d0
	jeq	L00108
	movl	a4@(4),a2@+	|(calling rassq)
	movl	a3@(8),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(12)
	cmpl	d0,d7
	jeq	L00112
	movl	a4@(12),a1
	movl	a1@(4),a4@(4)
	jra	L00111
L00112:
	movl	a3@(12),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00111:
	jra	L00107
L00108:
	movl	d7,d0
L00107:
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jne	L00114
	movl	a3@(16),d6
	cmpl	a4@(4),d6
	jne	L00116
	movl	a3@(20),a4@(4)
	jra	L00115
L00116:
	movl	a3@(24),d6
	cmpl	a4@(4),d6
	jne	L00117
	movl	a3@(28),a4@(4)
	jra	L00115
L00117:
	movl	d7,d0
L00115:
	movl	a4@(4),a2@+	|(beginning do)
	movl	a3@(32),a5
	movl	a5@,a2@+
L00120:
	cmpl	a4@(20),d7
	jne	L00121
	movl	d7,d0
	jra	L00122
L00121:
	movl	a4@(16),a2@+
	movl	a4@(20),a1
	movl	a1@(4),a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00124
	movl	a4@(20),a1
	movl	a1@(4),d0
	jra	L00122
|	jra	L00123
L00124:
	movl	d7,d0
L00123:
	movl	a4@(20),a5
	movl	a5@,a4@(20)
	jra	L00120
L00122:
	subql	#8,a2
	movl	d0,a4@(12)
	cmpl	d0,d7
	jeq	L00119
	movl	a4@(12),a5
	movl	a5@,a4@(12)
	jra	L00118
L00119:
	movl	a3@(36),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00118:
	jra	L00113
L00114:
	movl	a3@(40),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00113:
	movl	#_nilatom+0x1400+4,d0	|(calling int:setsyntax)
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	movl	a4@(12),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+24,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	a4@,a2@+
	movl	#_nilatom+0x1400+12,a2@+
	movl	a2@(-8),d6
	cmpl	a2@(-4),d6
	jeq	L00129
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+0,a5
	jbsr	a5@
	lea	a2@(-8),a2
	cmpl	d0,d7
	jne	L00130
	jra	L00128
L00129:
	subql	#8,a2
L00130:
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
	jeq	L00132
	movl	a4@(8),a2@+	|(calling ascii)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+32,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a4@(8)
	jra	L00131
L00132:
	movl	d7,d0
L00131:
	movl	a4@(8),a2@+	|(calling putprop)
	movl	#_nilatom+0x1400+12,d0
	subl	a4@(-4),d0
	movl	a4@(-8,d0:L),a2@+
	movl	a3@(44),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+40,a5
	jbsr	a5@
	lea	a2@(-12),a2
	jra	L00127
L00128:
	movl	d7,d0
L00127:
L00097:
	subl	#12,a2
	movl	a3@(48),a5
	movl	a5@,d0
	subql	#4,a2
	moveml	a6@(-24),#L00087
	unlk	a6
	rts
L00087 = 15552
L00086 = 24
	.globl	F00137	|(fcn lambda getsyntax)
F00137:
	link	a6,#-L00140
	tstb	sp@(-132)
	moveml	#L00141,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(4),a2
L00138:
	movl	a4@,a2@+	|(calling int:getsyntax)
	lea	a2@(-4),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+48,a5
	jbsr	a5@
	lea	a2@(-4),a2
	movl	d0,a2@+
	movl	d7,a2@+
	movl	a4@(4),a2@+	|(calling rassq)
	movl	a3@(32),a5
	movl	a5@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+16,a5
	jbsr	a5@
	lea	a2@(-8),a2
	movl	d0,a4@(8)
	cmpl	d0,d7
	jeq	L00143
	movl	a4@(8),a1
	movl	a1@(4),d0
	jra	L00142
L00143:
	movl	a3@(52),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00142:
	subl	#12,a2
	moveml	a6@(-20),#L00141
	unlk	a6
	rts
L00141 = 15488
L00140 = 20
	.globl	F00144	|(fcn lambda add-syntax-class)
F00144:
	link	a6,#-L00147
	tstb	sp@(-132)
	moveml	#L00148,sp@
	movl	#_nilatom,d7
	lea	linker,a3
	movl	_lbot,a4
	lea	a4@(8),a2
L00145:
	movl	a4@,d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#1,a5@(0,d0:L)
	jeq	L00150
	movl	a3@(56),a2@+	|(calling error)
	movl	a4@,a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00149
L00150:
	movl	d7,d0
L00149:
	movl	a4@(4),d0
	subl	d7,d0
	moveq	#9,d1
	asrl	d1,d0
	lea	_typetable+1,a5
	cmpb	#3,a5@(0,d0:L)
	jeq	L00152
	movl	a3@(60),a2@+	|(calling error)
	movl	a4@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
	jra	L00151
L00152:
	movl	d7,d0
L00151:
	movl	a4@(4),a2@+	|(beginning do)
	movl	#_nilatom+0x1400+0,a2@+
	movl	#_nilatom+0x1400+0,a2@+
L00153:
	cmpl	a4@(8),d7
	jne	L00154
	movl	a4@,a2@+	|(beginning do)
	movl	a3@(32),a5
	movl	a5@,a2@+
L00158:
	cmpl	a4@(24),d7
	jne	L00159
	movl	d7,d0
	jra	L00160
L00159:
	movl	a4@(20),a2@+
	movl	a4@(24),a1
	movl	a1@(4),a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00162
	movl	a4@(24),a1
	movl	a1@(4),d0
	jra	L00160
|	jra	L00161
L00162:
	movl	d7,d0
L00161:
	movl	a4@(24),a5
	movl	a5@,a4@(24)
	jra	L00158
L00160:
	subql	#8,a2
	movl	d0,a4@(12)
	cmpl	d0,d7
	jeq	L00157
	movl	a4@(12),a0
	movl	a4@(16),a0@
	movl	a0,d0
	jra	L00156
L00157:
	movl	a4@,a2@+
	movl	a4@(16),a2@+
	jbsr	_qcons
	movl	d0,a2@+
	movl	a3@(32),a5
	movl	a5@,a2@+
	jbsr	_qcons
	movl	a3@(32),a5
	movl	d0,a5@
	movl	a3@(32),a5
	movl	a5@,d0
L00156:
	jra	L00155
L00154:
	movl	a4@(8),a1	|(beginning do)
	movl	a1@(4),a2@+
	movl	a3@(64),a5
	movl	a5@,a2@+
L00165:
	cmpl	a4@(24),d7
	jne	L00166
	movl	d7,d0
	jra	L00167
L00166:
	movl	a4@(20),a2@+
	movl	a4@(24),a1
	movl	a1@(4),a0
	movl	a0@(4),d0
	movl	a2@-,d6
	cmpl	d0,d6
	jne	L00169
	movl	a4@(24),a1
	movl	a1@(4),d0
	jra	L00167
|	jra	L00168
L00169:
	movl	d7,d0
L00168:
	movl	a4@(24),a5
	movl	a5@,a4@(24)
	jra	L00165
L00167:
	subql	#8,a2
	movl	d0,a4@(12)
	cmpl	d0,d7
	jeq	L00164
	movl	#_nilatom+0x1400+28,a2@+	|(calling boole)
	movl	a4@(16),a2@+
	movl	a4@(12),a5
	movl	a5@,a2@+
	lea	a2@(-12),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+56,a5
	jbsr	a5@
	lea	a2@(-12),a2
	movl	d0,a4@(16)
	jra	L00163
L00164:
	movl	a3@(68),a2@+	|(calling error)
	movl	a4@(8),a1
	movl	a1@(4),a2@+
	lea	a2@(-8),a5
	movl	a5,_lbot
	movl	a2,_np
	movl	trantb+8,a5
	jbsr	a5@
	lea	a2@(-8),a2
L00163:
	movl	a4@(8),a5
	movl	a5@,a4@(8)
	jra	L00153
L00155:
	subl	#12,a2
	movl	a4@,d0
	subql	#8,a2
	moveml	a6@(-24),#L00148
	unlk	a6
	rts
L00148 = 15552
L00147 = 24
bind_org:
	linker_size = 	18
	trans_size = 	8
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
	.long -1
lit_org:
.asciz "\"setsyntax: 2 or 3 args required, not \""
.asciz "\"setsyntax: first arg must be a number or symbol: \""
.asciz "syntax:symbolic-to-old-fixnum"
.asciz "\"setsyntax: fixnum code is not defined: \""
.asciz "macro"
.asciz "vmacro"
.asciz "splicing"
.asciz "vsplicing-macro"
.asciz "syntax:code-to-bits"
.asciz "\"setsyntax: unknown symbolic code: \""
.asciz "\"setsyntax: second arg not symbol or fixnum: \""
.asciz "readtable"
.asciz "t"
.asciz "\"getsyntax: no symbolic code corresponds to: \""
.asciz "\"add-syntax-class: illegal name: \""
.asciz "\"add-syntax-class: illegal bits: \""
.asciz "syntax:symbolic-bits-to-fixnum"
.asciz "\"illegal syntax code \""
.asciz "equal"
.asciz "error"
.asciz "rassq"
.asciz "int:setsyntax"
.asciz "ascii"
.asciz "putprop"
.asciz "int:getsyntax"
.asciz "boole"
.ascii "(setq fcn-in-syntax.l \"syntax.l compiled by Liszt 68000 vers"
.asciz "ion 8.39a on Fri Dec 15 18:51:42 1989\")"
.ascii "(setq rcs-syntax- \"$Header: /usr/lib/lisp/syntax.l,v 1.1 83/"
.asciz "01/29 18:40:24 jkf Exp $\")"
.asciz "setsyntax"
.ascii "(putprop (quote setsyntax) (list (quote nil) fcn-in-syntax.l"
.asciz ") (quote fcn-info))"
.asciz "getsyntax"
.ascii "(putprop (quote getsyntax) (list (quote (1 . 1)) fcn-in-synt"
.asciz "ax.l) (quote fcn-info))"
.asciz "add-syntax-class"
.ascii "(putprop (quote add-syntax-class) (list (quote (2 . 2)) fcn-"
.asciz "in-syntax.l) (quote fcn-info))"
.ascii "(setq syntax:symbolic-to-old-fixnum (quote ((vnumber . 0) (v"
.ascii "sign . 1) (vcharacter . 2) (vsingle-character-symbol . 66) ("
.ascii "vleft-paren . 195) (vright-paren . 196) (vperiod . 133) (vle"
.ascii "ft-bracket . 198) (vright-bracket . 199) (veof . 200) (vsing"
.ascii "le-quote . 201) (vsymbol-delimiter . 138) (vstring-delimiter"
.ascii " . 137) (villegal . 203) (vseparator . 204) (vsplicing-macro"
.ascii " . 205) (vmacro . 206) (vescape . 143))) syntax:symbolic-bit"
.ascii "s-to-fixnum (quote ((cnumber . 0) (csign . 1) (ccharacter . "
.ascii "2) (cleft-paren . 3) (cright-paren . 4) (cperiod . 5) (cleft"
.ascii "-bracket . 6) (cright-bracket . 7) (csingle-quote . 9) (csym"
.ascii "bol-delimiter . 10) (cillegal . 11) (cseparator . 12) (cspli"
.ascii "cing-macro . 13) (cmacro . 14) (cescape . 15) (csingle-chara"
.ascii "cter-symbol . 16) (cstring-delimiter . 17) (csingle-macro . "
.ascii "18) (csingle-splicing-macro . 19) (cinfix-macro . 20) (csing"
.ascii "le-infix-macro . 21) (escape-when-unique . 64) (escape-when-"
.ascii "first . 128) (escape-always . 192) (separator . 32))) syntax"
.asciz ":code-to-bits nil)"
.asciz "(add-syntax-class (quote vnumber) (quote (cnumber)))"
.asciz "(add-syntax-class (quote vsign) (quote (csign)))"
.asciz "(add-syntax-class (quote vcharacter) (quote (ccharacter)))"
.ascii "(add-syntax-class (quote vleft-paren) (quote (cleft-paren es"
.asciz "cape-always separator)))"
.ascii "(add-syntax-class (quote vright-paren) (quote (cright-paren "
.asciz "escape-always separator)))"
.ascii "(add-syntax-class (quote vperiod) (quote (cperiod escape-whe"
.asciz "n-unique)))"
.ascii "(add-syntax-class (quote vleft-bracket) (quote (cleft-bracke"
.asciz "t escape-always separator)))"
.ascii "(add-syntax-class (quote vright-bracket) (quote (cright-brac"
.asciz "ket escape-always separator)))"
.ascii "(add-syntax-class (quote vsingle-quote) (quote (csingle-quot"
.asciz "e escape-always separator)))"
.ascii "(add-syntax-class (quote vsymbol-delimiter) (quote (csymbol-"
.asciz "delimiter escape-always)))"
.ascii "(add-syntax-class (quote villegal) (quote (cillegal escape-a"
.asciz "lways separator)))"
.ascii "(add-syntax-class (quote vseparator) (quote (cseparator esca"
.asciz "pe-always separator)))"
.ascii "(add-syntax-class (quote vsplicing-macro) (quote (csplicing-"
.asciz "macro escape-always separator)))"
.ascii "(add-syntax-class (quote vmacro) (quote (cmacro escape-alway"
.asciz "s separator)))"
.ascii "(add-syntax-class (quote vescape) (quote (cescape escape-alw"
.asciz "ays)))"
.ascii "(add-syntax-class (quote vsingle-character-symbol) (quote (c"
.asciz "single-character-symbol separator)))"
.ascii "(add-syntax-class (quote vstring-delimiter) (quote (cstring-"
.asciz "delimiter escape-always)))"
.ascii "(add-syntax-class (quote vsingle-macro) (quote (csingle-macr"
.asciz "o escape-when-unique)))"
.ascii "(add-syntax-class (quote vsingle-splicing-macro) (quote (csi"
.asciz "ngle-splicing-macro escape-when-unique)))"
.ascii "(add-syntax-class (quote vinfix-macro) (quote (cinfix-macro "
.asciz "escape-always separator)))"
.ascii "(add-syntax-class (quote vsingle-infix-macro) (quote (csingl"
.asciz "e-infix-macro escape-when-unique)))"
lit_end:
.data | this is just for documentation 
.asciz "@(#)Compiled by Liszt 68000 version 8.39a on Fri Dec 15 18:51:51 1989"
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
