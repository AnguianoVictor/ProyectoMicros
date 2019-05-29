opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 9453"

opt pagewidth 120

	opt lm

	processor	16F887
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 13 "C:\PIC_PROGS\ProyectoMicros\PIC\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 13 "C:\PIC_PROGS\ProyectoMicros\PIC\main.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 14 "C:\PIC_PROGS\ProyectoMicros\PIC\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 14 "C:\PIC_PROGS\ProyectoMicros\PIC\main.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_init_comms
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_lcd_puts
	FNCALL	_main,_pause
	FNCALL	_main,_lcd_clear
	FNCALL	_main,_getch
	FNCALL	_main,_printf
	FNCALL	_main,___lwtoft
	FNCALL	_main,___ftmul
	FNCALL	_main,___ftdiv
	FNCALL	_main,_sprintf
	FNCALL	_main,___ftge
	FNCALL	_sprintf,__doprnt
	FNCALL	_printf,__doprnt
	FNCALL	_lcd_init,_pause
	FNCALL	_lcd_init,_lcd_write
	FNCALL	_lcd_init,_lcd_clear
	FNCALL	__doprnt,Fake
	FNCALL	__doprnt,_putch
	FNCALL	__doprnt,___wmul
	FNCALL	__doprnt,_isdigit
	FNCALL	__doprnt,___ftge
	FNCALL	__doprnt,___ftneg
	FNCALL	__doprnt,___awdiv
	FNCALL	__doprnt,_scale
	FNCALL	__doprnt,___ftmul
	FNCALL	__doprnt,_fround
	FNCALL	__doprnt,___ftadd
	FNCALL	__doprnt,___fttol
	FNCALL	__doprnt,__div_to_l_
	FNCALL	__doprnt,__tdiv_to_l_
	FNCALL	__doprnt,___lltoft
	FNCALL	__doprnt,___ftsub
	FNCALL	__doprnt,___lldiv
	FNCALL	__doprnt,___llmod
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_lcd_clear,_pause
	FNCALL	_lcd_puts,_lcd_write
	FNCALL	_lcd_goto,_lcd_write
	FNCALL	___ftsub,___ftadd
	FNCALL	_scale,___awmod
	FNCALL	_scale,___bmul
	FNCALL	_scale,___awdiv
	FNCALL	_scale,___ftmul
	FNCALL	_fround,___awmod
	FNCALL	_fround,___bmul
	FNCALL	_fround,___awdiv
	FNCALL	_fround,___ftmul
	FNCALL	_lcd_write,_pause
	FNCALL	___lltoft,___ftpack
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_pause,_msecbase
	FNROOT	_main
	global	_dpowers
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
	line	350
_dpowers:
	retlw	01h
	retlw	0
	retlw	0
	retlw	0

	retlw	0Ah
	retlw	0
	retlw	0
	retlw	0

	retlw	064h
	retlw	0
	retlw	0
	retlw	0

	retlw	0E8h
	retlw	03h
	retlw	0
	retlw	0

	retlw	010h
	retlw	027h
	retlw	0
	retlw	0

	retlw	0A0h
	retlw	086h
	retlw	01h
	retlw	0

	retlw	040h
	retlw	042h
	retlw	0Fh
	retlw	0

	retlw	080h
	retlw	096h
	retlw	098h
	retlw	0

	retlw	0
	retlw	0E1h
	retlw	0F5h
	retlw	05h

	retlw	0
	retlw	0CAh
	retlw	09Ah
	retlw	03Bh

	global	__npowers_
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\powers.c"
	line	39
__npowers_:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0xcd
	retlw	0xcc
	retlw	0x3d

	retlw	0xd7
	retlw	0x23
	retlw	0x3c

	retlw	0x12
	retlw	0x83
	retlw	0x3a

	retlw	0xb7
	retlw	0xd1
	retlw	0x38

	retlw	0xc6
	retlw	0x27
	retlw	0x37

	retlw	0x38
	retlw	0x86
	retlw	0x35

	retlw	0xc0
	retlw	0xd6
	retlw	0x33

	retlw	0xcc
	retlw	0x2b
	retlw	0x32

	retlw	0x70
	retlw	0x89
	retlw	0x30

	retlw	0xe7
	retlw	0xdb
	retlw	0x2e

	retlw	0xe5
	retlw	0x3c
	retlw	0x1e

	retlw	0x42
	retlw	0xa2
	retlw	0xd

	global	__powers_
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\powers.c"
	line	7
__powers_:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0x0
	retlw	0x20
	retlw	0x41

	retlw	0x0
	retlw	0xc8
	retlw	0x42

	retlw	0x0
	retlw	0x7a
	retlw	0x44

	retlw	0x40
	retlw	0x1c
	retlw	0x46

	retlw	0x50
	retlw	0xc3
	retlw	0x47

	retlw	0x24
	retlw	0x74
	retlw	0x49

	retlw	0x97
	retlw	0x18
	retlw	0x4b

	retlw	0xbc
	retlw	0xbe
	retlw	0x4c

	retlw	0x6b
	retlw	0x6e
	retlw	0x4e

	retlw	0x3
	retlw	0x15
	retlw	0x50

	retlw	0x79
	retlw	0xad
	retlw	0x60

	retlw	0xf3
	retlw	0x49
	retlw	0x71

	global	_dpowers
	global	__npowers_
	global	__powers_
	global	_a
	global	_b
	global	_VADC
	global	_VADCH
	global	_VADCL
	global	_input
	global	_str
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCP2CON
_CCP2CON	set	29
	global	_CCPR1L
_CCPR1L	set	21
	global	_CCPR2L
_CCPR2L	set	27
	global	_INTCON
_INTCON	set	11
	global	_PORTD
_PORTD	set	8
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_T2CON
_T2CON	set	18
	global	_TMR0
_TMR0	set	1
	global	_TXREG
_TXREG	set	25
	global	_ADON
_ADON	set	248
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_GO_DONE
_GO_DONE	set	249
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RA4
_RA4	set	44
	global	_RB0
_RB0	set	48
	global	_RCIF
_RCIF	set	101
	global	_T0IF
_T0IF	set	90
	global	_TMR2IF
_TMR2IF	set	97
	global	_TXIF
_TXIF	set	100
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_OPTION
_OPTION	set	129
	global	_PR2
_PR2	set	146
	global	_SPBRG
_SPBRG	set	153
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_TXSTA
_TXSTA	set	152
	global	_TRISB5
_TRISB5	set	1077
	global	_TRISB7
_TRISB7	set	1079
	global	_CM1CON0
_CM1CON0	set	263
	global	_CM2CON0
_CM2CON0	set	264
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	global	_BAUDCTL
_BAUDCTL	set	391
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	
STR_2:	
	retlw	112	;'p'
	retlw	117	;'u'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	73	;'I'
	retlw	47	;'/'
	retlw	79	;'O'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_6:	
	retlw	84	;'T'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	115	;'s'
	retlw	109	;'m'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_9:	
	retlw	84	;'T'
	retlw	109	;'m'
	retlw	112	;'p'
	retlw	111	;'o'
	retlw	98	;'b'
	retlw	106	;'j'
	retlw	61	;'='
	retlw	37	;'%'
	retlw	105	;'i'
	retlw	37	;'%'
	retlw	46	;'.'
	retlw	49	;'1'
	retlw	102	;'f'
	retlw	0
psect	strings
	
STR_1:	
	retlw	67	;'C'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	102	;'f'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	0
psect	strings
	
STR_5:	
	retlw	73	;'I'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	99	;'c'
	retlw	105	;'i'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	0
psect	strings
	
STR_8:	
	retlw	84	;'T'
	retlw	109	;'m'
	retlw	112	;'p'
	retlw	61	;'='
	retlw	37	;'%'
	retlw	46	;'.'
	retlw	49	;'1'
	retlw	102	;'f'
	retlw	0
psect	strings
	
STR_4:	
	retlw	80	;'P'
	retlw	87	;'W'
	retlw	77	;'M'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_7:	
	retlw	37	;'%'
	retlw	105	;'i'
	retlw	13
	retlw	10
	retlw	0
psect	strings
STR_3	equ	STR_1+0
	file	"UART.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_a:
       ds      3

_b:
       ds      3

_VADC:
       ds      2

_VADCH:
       ds      2

_VADCL:
       ds      2

_input:
       ds      2

psect	bssBANK3,class=BANK3,space=1
global __pbssBANK3
__pbssBANK3:
_str:
       ds      80

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+0Eh)
	fcall	clear_ram
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+050h)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	__doprnt$5168
__doprnt$5168:	; 4 bytes @ 0x0
	ds	4
	global	__doprnt@flag
__doprnt@flag:	; 2 bytes @ 0x4
	ds	2
	global	__doprnt@integ
__doprnt@integ:	; 3 bytes @ 0x6
	ds	3
	global	__doprnt@exp
__doprnt@exp:	; 2 bytes @ 0x9
	ds	2
	global	__doprnt@_val
__doprnt@_val:	; 4 bytes @ 0xB
	ds	4
	global	__doprnt@prec
__doprnt@prec:	; 2 bytes @ 0xF
	ds	2
	global	__doprnt@fval
__doprnt@fval:	; 3 bytes @ 0x11
	ds	3
	global	__doprnt@c
__doprnt@c:	; 1 bytes @ 0x14
	ds	1
	global	__doprnt@pb
__doprnt@pb:	; 1 bytes @ 0x15
	ds	1
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0x16
	global	printf@f
printf@f:	; 1 bytes @ 0x16
	ds	1
	global	printf@ap
printf@ap:	; 1 bytes @ 0x17
	ds	1
	global	sprintf@wh
sprintf@wh:	; 1 bytes @ 0x18
	global	printf@pb
printf@pb:	; 2 bytes @ 0x18
	ds	1
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x19
	ds	1
	global	sprintf@pb
sprintf@pb:	; 2 bytes @ 0x1A
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x1C
	ds	3
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_init_comms
?_init_comms:	; 0 bytes @ 0x0
	global	??_init_comms
??_init_comms:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_pause
?_pause:	; 0 bytes @ 0x0
	global	?_lcd_clear
?_lcd_clear:	; 0 bytes @ 0x0
	global	??_getch
??_getch:	; 0 bytes @ 0x0
	global	?_isdigit
?_isdigit:	; 1 bit 
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_lcd_write
?_lcd_write:	; 0 bytes @ 0x0
	global	?_msecbase
?_msecbase:	; 0 bytes @ 0x0
	global	??_msecbase
??_msecbase:	; 0 bytes @ 0x0
	global	?___ftge
?___ftge:	; 1 bit 
	global	?_getch
?_getch:	; 1 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x0
	global	?__tdiv_to_l_
?__tdiv_to_l_:	; 4 bytes @ 0x0
	global	?__div_to_l_
?__div_to_l_:	; 4 bytes @ 0x0
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x0
	global	_isdigit$5676
_isdigit$5676:	; 1 bytes @ 0x0
	global	pause@usvalue
pause@usvalue:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	__tdiv_to_l_@f1
__tdiv_to_l_@f1:	; 3 bytes @ 0x0
	global	__div_to_l_@f1
__div_to_l_@f1:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x0
	ds	1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	ds	1
	global	??_pause
??_pause:	; 0 bytes @ 0x2
	global	pause@x
pause@x:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??___ftneg
??___ftneg:	; 0 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	global	__tdiv_to_l_@f2
__tdiv_to_l_@f2:	; 3 bytes @ 0x3
	global	__div_to_l_@f2
__div_to_l_@f2:	; 3 bytes @ 0x3
	ds	1
	global	??_lcd_write
??_lcd_write:	; 0 bytes @ 0x4
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	global	lcd_write@c
lcd_write@c:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x6
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x6
	global	?_lcd_puts
?_lcd_puts:	; 0 bytes @ 0x6
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x6
	global	??__tdiv_to_l_
??__tdiv_to_l_:	; 0 bytes @ 0x6
	global	??__div_to_l_
??__div_to_l_:	; 0 bytes @ 0x6
	global	??___ftge
??___ftge:	; 0 bytes @ 0x6
	global	lcd_goto@pos
lcd_goto@pos:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	global	lcd_puts@s
lcd_puts@s:	; 2 bytes @ 0x6
	ds	1
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x7
	global	lcd_init@init_value
lcd_init@init_value:	; 1 bytes @ 0x7
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x7
	ds	1
	global	??_lcd_puts
??_lcd_puts:	; 0 bytes @ 0x8
	global	??___lldiv
??___lldiv:	; 0 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x8
	ds	1
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x9
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x9
	ds	2
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0xB
	global	??___lwtoft
??___lwtoft:	; 0 bytes @ 0xB
	ds	1
	global	??___bmul
??___bmul:	; 0 bytes @ 0xC
	global	??___lltoft
??___lltoft:	; 0 bytes @ 0xC
	ds	1
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0xD
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0xD
	ds	1
	global	??_putch
??_putch:	; 0 bytes @ 0xE
	global	??___ftsub
??___ftsub:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?___llmod
?___llmod:	; 4 bytes @ 0x0
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x0
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x0
	global	__tdiv_to_l_@quot
__tdiv_to_l_@quot:	; 4 bytes @ 0x0
	global	__div_to_l_@quot
__div_to_l_@quot:	; 4 bytes @ 0x0
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x1
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x2
	ds	2
	global	?___bmul
?___bmul:	; 1 bytes @ 0x4
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x4
	global	__tdiv_to_l_@cntr
__tdiv_to_l_@cntr:	; 1 bytes @ 0x4
	global	__div_to_l_@cntr
__div_to_l_@cntr:	; 1 bytes @ 0x4
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x4
	ds	1
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x5
	global	__tdiv_to_l_@exp1
__tdiv_to_l_@exp1:	; 1 bytes @ 0x5
	global	__div_to_l_@exp1
__div_to_l_@exp1:	; 1 bytes @ 0x5
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x6
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x7
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x7
	ds	1
	global	??___llmod
??___llmod:	; 0 bytes @ 0x8
	ds	1
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x9
	ds	1
	global	?_putch
?_putch:	; 0 bytes @ 0xA
	global	putch@byte
putch@byte:	; 1 bytes @ 0xA
	ds	1
	global	??___fttol
??___fttol:	; 0 bytes @ 0xB
	ds	4
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0xF
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x10
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x14
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x15
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x15
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x18
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x1B
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x1F
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x20
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x23
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x24
	ds	1
	global	?_scale
?_scale:	; 3 bytes @ 0x25
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x25
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x25
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x25
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x25
	ds	3
	global	??_scale
??_scale:	; 0 bytes @ 0x28
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x28
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x28
	ds	2
	global	_scale$6158
_scale$6158:	; 3 bytes @ 0x2A
	ds	1
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x2B
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x2B
	ds	2
	global	scale@scl
scale@scl:	; 1 bytes @ 0x2D
	ds	2
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x2F
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x2F
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x30
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x30
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x31
	ds	1
	global	?_fround
?_fround:	; 3 bytes @ 0x32
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x32
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x32
	ds	1
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x33
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x34
	ds	1
	global	??_fround
??_fround:	; 0 bytes @ 0x35
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x35
	ds	6
	global	_fround$6157
_fround$6157:	; 3 bytes @ 0x3B
	ds	3
	global	_fround$6156
_fround$6156:	; 3 bytes @ 0x3E
	ds	3
	global	fround@prec
fround@prec:	; 1 bytes @ 0x41
	ds	1
	global	?__doprnt
?__doprnt:	; 2 bytes @ 0x42
	global	__doprnt@f
__doprnt@f:	; 1 bytes @ 0x42
	ds	1
	global	__doprnt@ap
__doprnt@ap:	; 1 bytes @ 0x43
	ds	1
	global	??__doprnt
??__doprnt:	; 0 bytes @ 0x44
	ds	6
	global	?_printf
?_printf:	; 2 bytes @ 0x4A
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x4A
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x4A
	ds	2
	global	??_printf
??_printf:	; 0 bytes @ 0x4C
	ds	4
;;Data sizes: Strings 88, constant 118, data 0, bss 94, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     80      80
;; BANK1           80     31      45
;; BANK3           96      0      80
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; ?___lldiv	unsigned long  size(1) Largest target is 0
;;
;; ?___llmod	unsigned long  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; ?___ftsub	float  size(1) Largest target is 0
;;
;; ?___lltoft	float  size(1) Largest target is 0
;;
;; ?__tdiv_to_l_	unsigned long  size(1) Largest target is 0
;;
;; ?__div_to_l_	unsigned long  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; ?___ftadd	float  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; ?___ftneg	float  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; ?_scale	float  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?_fround	int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___lwtoft	float  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 14
;;		 -> STR_9(CODE[14]), STR_8(CODE[9]), 
;;
;; ?_sprintf	int  size(1) Largest target is 80
;;		 -> NULL(NULL[0]), str(BANK3[80]), 
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; sprintf@wh	PTR unsigned char  size(1) Largest target is 80
;;		 -> str(BANK3[80]), 
;;
;; pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; pb.ptr	PTR unsigned char  size(1) Largest target is 80
;;		 -> NULL(NULL[0]), str(BANK3[80]), 
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 5
;;		 -> STR_7(CODE[5]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; pb.ptr	PTR unsigned char  size(1) Largest target is 80
;;		 -> NULL(NULL[0]), str(BANK3[80]), 
;;
;; _doprnt@ap	PTR PTR void  size(1) Largest target is 2
;;		 -> sprintf@ap(BANK1[1]), printf@ap(BANK1[1]), 
;;
;; _doprnt@f	PTR const unsigned char  size(1) Largest target is 14
;;		 -> STR_9(CODE[14]), STR_8(CODE[9]), STR_7(CODE[5]), 
;;
;; S5104__prbuf$func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; _doprnt@pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; S5104__prbuf$ptr	PTR unsigned char  size(1) Largest target is 80
;;		 -> NULL(NULL[0]), str(BANK3[80]), 
;;
;; _doprnt@pb.ptr	PTR unsigned char  size(1) Largest target is 80
;;		 -> NULL(NULL[0]), str(BANK3[80]), 
;;
;; _doprnt@pb	PTR struct __prbuf size(1) Largest target is 3
;;		 -> sprintf@pb(BANK1[2]), printf@pb(BANK1[2]), 
;;
;; S5150$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; lcd_puts@s	PTR const unsigned char  size(2) Largest target is 80
;;		 -> str(BANK3[80]), STR_6(CODE[15]), STR_5(CODE[10]), STR_4(CODE[7]), 
;;		 -> STR_3(CODE[13]), STR_2(CODE[15]), STR_1(CODE[13]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _lcd_init->_lcd_write
;;   __doprnt->__div_to_l_
;;   __doprnt->___lltoft
;;   __doprnt->___lldiv
;;   _lcd_clear->_lcd_write
;;   _lcd_puts->_lcd_write
;;   _lcd_goto->_lcd_write
;;   ___ftsub->___lltoft
;;   _scale->___bmul
;;   _fround->___bmul
;;   _lcd_write->_pause
;;   ___lltoft->___ftpack
;;   ___lwtoft->___ftpack
;;   ___ftmul->___bmul
;;   ___ftadd->___bmul
;;   ___llmod->___lldiv
;;   ___awdiv->___awmod
;;   ___fttol->___bmul
;;   ___bmul->___awdiv
;;   _putch->___lldiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_sprintf
;;   _sprintf->__doprnt
;;   _printf->__doprnt
;;   __doprnt->_fround
;;   ___ftsub->___ftadd
;;   _scale->___ftmul
;;   _fround->___ftadd
;;   ___ftmul->___fttol
;;   ___ftdiv->___ftmul
;;   ___ftadd->___ftmul
;;   ___fttol->___bmul
;;   ___bmul->___awdiv
;;   _putch->___llmod
;;
;; Critical Paths under _main in BANK1
;;
;;   _main->_sprintf
;;   _sprintf->__doprnt
;;   _printf->__doprnt
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0   24213
;;                                             28 BANK1      3     3      0
;;                         _init_comms
;;                           _lcd_init
;;                           _lcd_goto
;;                           _lcd_puts
;;                              _pause
;;                          _lcd_clear
;;                              _getch
;;                             _printf
;;                           ___lwtoft
;;                            ___ftmul
;;                            ___ftdiv
;;                            _sprintf
;;                             ___ftge
;; ---------------------------------------------------------------------------------
;; (1) _sprintf                                             12     6      6   11077
;;                                             74 BANK0      6     0      6
;;                                             22 BANK1      6     6      0
;;                            __doprnt
;; ---------------------------------------------------------------------------------
;; (1) _printf                                               8     6      2   11021
;;                                             74 BANK0      4     2      2
;;                                             22 BANK1      4     4      0
;;                            __doprnt
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             2     2      0     295
;;                                              6 COMMON     2     2      0
;;                              _pause
;;                          _lcd_write
;;                          _lcd_clear
;; ---------------------------------------------------------------------------------
;; (2) __doprnt                                             36    34      2   10880
;;                                             66 BANK0      8     6      2
;;                                              0 BANK1     22    22      0
;;                   Absolute function
;;                              _putch
;;                             ___wmul
;;                            _isdigit
;;                             ___ftge
;;                            ___ftneg
;;                            ___awdiv
;;                              _scale
;;                            ___ftmul
;;                             _fround
;;                            ___ftadd
;;                            ___fttol
;;                         __div_to_l_
;;                        __tdiv_to_l_
;;                           ___lltoft
;;                            ___ftsub
;;                            ___lldiv
;;                            ___llmod
;; ---------------------------------------------------------------------------------
;; (1) _lcd_clear                                            0     0      0     136
;;                          _lcd_write
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (1) _lcd_puts                                             2     0      2     135
;;                                              6 COMMON     2     0      2
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_goto                                             1     1      0     112
;;                                              6 COMMON     1     1      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (3) ___ftsub                                              6     0      6    1094
;;                                             50 BANK0      6     0      6
;;                            ___ftadd
;;                           ___lltoft (ARG)
;; ---------------------------------------------------------------------------------
;; (3) _scale                                               12     9      3    1688
;;                                             37 BANK0      9     6      3
;;                            ___awmod
;;                             ___bmul
;;                            ___awdiv
;;                            ___ftmul
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (3) _fround                                              19    16      3    1490
;;                                             50 BANK0     16    13      3
;;                            ___awmod
;;                             ___bmul
;;                            ___awdiv
;;                            ___ftmul
;;                            ___ftadd (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _lcd_write                                            2     2      0      90
;;                                              4 COMMON     2     2      0
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (3) ___lltoft                                             6     2      4     278
;;                                              8 COMMON     6     2      4
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (1) ___lwtoft                                             4     1      3     231
;;                                              8 COMMON     4     1      3
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (4) ___ftmul                                             16    10      6     535
;;                                             21 BANK0     16    10      6
;;                           ___ftpack
;;                           ___lwtoft (ARG)
;;                            ___fttol (ARG)
;;                             ___bmul (ARG)
;;                            ___awdiv (ARG)
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___ftdiv                                             16    10      6     489
;;                                             37 BANK0     16    10      6
;;                           ___ftpack
;;                            ___ftmul (ARG)
;;                           ___lwtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___ftadd                                             13     7      6    1049
;;                                             37 BANK0     13     7      6
;;                           ___ftpack
;;                            ___awmod (ARG)
;;                             ___bmul (ARG)
;;                            ___awdiv (ARG)
;;                            ___ftmul (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _pause                                                4     2      2      46
;;                                              0 COMMON     4     2      2
;;                           _msecbase
;; ---------------------------------------------------------------------------------
;; (4) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (3) ___lldiv                                             14     6      8     162
;;                                              0 COMMON    14     6      8
;; ---------------------------------------------------------------------------------
;; (1) ___ftge                                              12     6      6     136
;;                                              0 COMMON    12     6      6
;; ---------------------------------------------------------------------------------
;; (3) ___ftneg                                              3     0      3      45
;;                                              0 COMMON     3     0      3
;; ---------------------------------------------------------------------------------
;; (3) ___llmod                                             10     2      8     159
;;                                              0 BANK0     10     2      8
;;                            ___lldiv (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___awdiv                                              9     5      4     300
;;                                              7 COMMON     5     1      4
;;                                              0 BANK0      4     4      0
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___fttol                                             14    10      4     252
;;                                              7 BANK0     14    10      4
;;                           ___ftpack (ARG)
;;                            ___awmod (ARG)
;;                             ___bmul (ARG)
;;                            ___awdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (5) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (3) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (4) ___bmul                                               4     3      1      68
;;                                             12 COMMON     1     1      0
;;                                              4 BANK0      3     2      1
;;                            ___awmod (ARG)
;;                            ___awdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (3) __div_to_l_                                          20    14      6     446
;;                                              0 COMMON    14     8      6
;;                                              0 BANK0      6     6      0
;; ---------------------------------------------------------------------------------
;; (3) __tdiv_to_l_                                         16    10      6     303
;;                                              0 COMMON    10     4      6
;;                                              0 BANK0      6     6      0
;; ---------------------------------------------------------------------------------
;; (3) _isdigit                                              2     2      0      68
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (3) Absolute function(Fake)                               1     0      1       0
;;                                              0 COMMON     1     0      1
;; ---------------------------------------------------------------------------------
;; (3) _putch                                                1     0      1      22
;;                                             10 BANK0      1     0      1
;;                            ___llmod (ARG)
;;                            ___lldiv (ARG)
;; ---------------------------------------------------------------------------------
;; (3) _msecbase                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _getch                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _init_comms                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _init_comms
;;   _lcd_init
;;     _pause
;;       _msecbase
;;     _lcd_write
;;       _pause
;;         _msecbase
;;     _lcd_clear
;;       _lcd_write
;;         _pause
;;           _msecbase
;;       _pause
;;         _msecbase
;;   _lcd_goto
;;     _lcd_write
;;       _pause
;;         _msecbase
;;   _lcd_puts
;;     _lcd_write
;;       _pause
;;         _msecbase
;;   _pause
;;     _msecbase
;;   _lcd_clear
;;     _lcd_write
;;       _pause
;;         _msecbase
;;     _pause
;;       _msecbase
;;   _getch
;;   _printf
;;     __doprnt
;;       Absolute function(Fake)
;;       _putch
;;         ___llmod (ARG)
;;           ___lldiv (ARG)
;;         ___lldiv (ARG)
;;       ___wmul
;;       _isdigit
;;       ___ftge
;;       ___ftneg
;;       ___awdiv
;;         ___awmod (ARG)
;;       _scale
;;         ___awmod
;;         ___bmul
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;         ___awdiv
;;           ___awmod (ARG)
;;         ___ftmul
;;           ___ftpack
;;           ___lwtoft (ARG)
;;             ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___awmod (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;       ___ftmul
;;         ___ftpack
;;         ___lwtoft (ARG)
;;           ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___awmod (ARG)
;;       _fround
;;         ___awmod
;;         ___bmul
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;         ___awdiv
;;           ___awmod (ARG)
;;         ___ftmul
;;           ___ftpack
;;           ___lwtoft (ARG)
;;             ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___awmod (ARG)
;;         ___ftadd (ARG)
;;           ___ftpack
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___lwtoft (ARG)
;;               ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               ___awmod (ARG)
;;               ___bmul (ARG)
;;                 ___awmod (ARG)
;;                 ___awdiv (ARG)
;;                   ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___awmod (ARG)
;;       ___ftadd
;;         ___ftpack
;;         ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___ftmul (ARG)
;;           ___ftpack
;;           ___lwtoft (ARG)
;;             ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___awmod (ARG)
;;       ___fttol
;;         ___ftpack (ARG)
;;         ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;       __div_to_l_
;;       __tdiv_to_l_
;;       ___lltoft
;;         ___ftpack
;;       ___ftsub
;;         ___ftadd
;;           ___ftpack
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___lwtoft (ARG)
;;               ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               ___awmod (ARG)
;;               ___bmul (ARG)
;;                 ___awmod (ARG)
;;                 ___awdiv (ARG)
;;                   ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___awmod (ARG)
;;         ___lltoft (ARG)
;;           ___ftpack
;;       ___lldiv
;;       ___llmod
;;         ___lldiv (ARG)
;;   ___lwtoft
;;     ___ftpack
;;   ___ftmul
;;     ___ftpack
;;     ___lwtoft (ARG)
;;       ___ftpack
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;       ___awmod (ARG)
;;       ___bmul (ARG)
;;         ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;       ___awdiv (ARG)
;;         ___awmod (ARG)
;;     ___bmul (ARG)
;;       ___awmod (ARG)
;;       ___awdiv (ARG)
;;         ___awmod (ARG)
;;     ___awdiv (ARG)
;;       ___awmod (ARG)
;;     ___awmod (ARG)
;;   ___ftdiv
;;     ___ftpack
;;     ___ftmul (ARG)
;;       ___ftpack
;;       ___lwtoft (ARG)
;;         ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;       ___bmul (ARG)
;;         ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;       ___awdiv (ARG)
;;         ___awmod (ARG)
;;       ___awmod (ARG)
;;     ___lwtoft (ARG)
;;       ___ftpack
;;   _sprintf
;;     __doprnt
;;       Absolute function(Fake)
;;       _putch
;;         ___llmod (ARG)
;;           ___lldiv (ARG)
;;         ___lldiv (ARG)
;;       ___wmul
;;       _isdigit
;;       ___ftge
;;       ___ftneg
;;       ___awdiv
;;         ___awmod (ARG)
;;       _scale
;;         ___awmod
;;         ___bmul
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;         ___awdiv
;;           ___awmod (ARG)
;;         ___ftmul
;;           ___ftpack
;;           ___lwtoft (ARG)
;;             ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___awmod (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;       ___ftmul
;;         ___ftpack
;;         ___lwtoft (ARG)
;;           ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___awmod (ARG)
;;       _fround
;;         ___awmod
;;         ___bmul
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;         ___awdiv
;;           ___awmod (ARG)
;;         ___ftmul
;;           ___ftpack
;;           ___lwtoft (ARG)
;;             ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___awmod (ARG)
;;         ___ftadd (ARG)
;;           ___ftpack
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___lwtoft (ARG)
;;               ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               ___awmod (ARG)
;;               ___bmul (ARG)
;;                 ___awmod (ARG)
;;                 ___awdiv (ARG)
;;                   ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___awmod (ARG)
;;       ___ftadd
;;         ___ftpack
;;         ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___ftmul (ARG)
;;           ___ftpack
;;           ___lwtoft (ARG)
;;             ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___awmod (ARG)
;;       ___fttol
;;         ___ftpack (ARG)
;;         ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;       __div_to_l_
;;       __tdiv_to_l_
;;       ___lltoft
;;         ___ftpack
;;       ___ftsub
;;         ___ftadd
;;           ___ftpack
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___lwtoft (ARG)
;;               ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               ___awmod (ARG)
;;               ___bmul (ARG)
;;                 ___awmod (ARG)
;;                 ___awdiv (ARG)
;;                   ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___awmod (ARG)
;;         ___lltoft (ARG)
;;           ___ftpack
;;       ___lldiv
;;       ___llmod
;;         ___lldiv (ARG)
;;   ___ftge
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       5       2        0.0%
;;ABS                  0      0      DB       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     50      50       5      100.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     1F      2D       7       56.3%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0      50       9       83.3%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      E0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 21 in file "C:\PIC_PROGS\ProyectoMicros\PIC\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       3       0       0
;;      Totals:         0       0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_init_comms
;;		_lcd_init
;;		_lcd_goto
;;		_lcd_puts
;;		_pause
;;		_lcd_clear
;;		_getch
;;		_printf
;;		___lwtoft
;;		___ftmul
;;		___ftdiv
;;		_sprintf
;;		___ftge
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\PIC_PROGS\ProyectoMicros\PIC\main.c"
	line	21
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	23
	
l10454:	
;main.c: 23: ANSEL = 0xE0;
	movlw	(0E0h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	24
	
l10456:	
;main.c: 24: ANSELH = 0;
	clrf	(393)^0180h	;volatile
	line	25
	
l10458:	
;main.c: 25: CM1CON0 = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(263)^0100h	;volatile
	line	26
	
l10460:	
;main.c: 26: CM2CON0 = 0;
	clrf	(264)^0100h	;volatile
	line	27
	
l10462:	
;main.c: 27: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	28
	
l10464:	
;main.c: 28: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	29
	
l10466:	
;main.c: 29: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	30
	
l10468:	
;main.c: 30: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	31
	
l10470:	
;main.c: 31: TRISE = 0x07;
	movlw	(07h)
	movwf	(137)^080h	;volatile
	line	32
;main.c: 32: ADCON1= 0x00;
	clrf	(159)^080h	;volatile
	line	33
	
l10472:	
;main.c: 33: init_comms();
	fcall	_init_comms
	line	34
	
l10474:	
;main.c: 34: lcd_init();
	fcall	_lcd_init
	line	35
	
l10476:	
;main.c: 35: lcd_goto(0x00);
	movlw	(0)
	fcall	_lcd_goto
	line	37
	
l10478:	
;main.c: 37: lcd_puts("Configurando");
	movlw	low((STR_1-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	38
	
l10480:	
;main.c: 38: lcd_goto(0x40);
	movlw	(040h)
	fcall	_lcd_goto
	line	39
	
l10482:	
;main.c: 39: lcd_puts("puertos I/O...");
	movlw	low((STR_2-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	40
	
l10484:	
;main.c: 40: pause(500);
	movlw	low(01F4h)
	movwf	(?_pause)
	movlw	high(01F4h)
	movwf	((?_pause))+1
	fcall	_pause
	line	41
	
l10486:	
;main.c: 41: lcd_clear();
	fcall	_lcd_clear
	line	43
	
l10488:	
;main.c: 43: lcd_puts("Configurando");
	movlw	low((STR_3-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	44
	
l10490:	
;main.c: 44: lcd_goto(0x40);
	movlw	(040h)
	fcall	_lcd_goto
	line	45
	
l10492:	
;main.c: 45: lcd_puts("PWM...");
	movlw	low((STR_4-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	46
	
l10494:	
;main.c: 46: pause(500);
	movlw	low(01F4h)
	movwf	(?_pause)
	movlw	high(01F4h)
	movwf	((?_pause))+1
	fcall	_pause
	line	47
	
l10496:	
;main.c: 47: lcd_clear();
	fcall	_lcd_clear
	line	48
	
l10498:	
;main.c: 48: PR2= 0xBF;
	movlw	(0BFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	49
	
l10500:	
;main.c: 49: CCPR1L=0x80;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	50
	
l10502:	
;main.c: 50: CCPR2L=0x80;
	movlw	(080h)
	movwf	(27)	;volatile
	line	51
	
l10504:	
;main.c: 51: CCP1CON=0x0C;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	52
	
l10506:	
;main.c: 52: CCP2CON=0x0C;
	movlw	(0Ch)
	movwf	(29)	;volatile
	line	53
	
l10508:	
;main.c: 53: T2CON=0x07;
	movlw	(07h)
	movwf	(18)	;volatile
	line	54
;main.c: 54: while (TMR2IF ==0);
	goto	l1057
	
l1058:	
	
l1057:	
	btfss	(97/8),(97)&7
	goto	u5391
	goto	u5390
u5391:
	goto	l1057
u5390:
	goto	l10510
	
l1059:	
	line	55
	
l10510:	
;main.c: 55: INTCON=0;
	clrf	(11)	;volatile
	line	57
;main.c: 57: CCPR1L=0x00;
	clrf	(21)	;volatile
	line	58
;main.c: 58: CCPR2L=0x00;
	clrf	(27)	;volatile
	line	59
;main.c: 59: VADCH=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_VADCH)^080h
	clrf	(_VADCH+1)^080h
	line	60
;main.c: 60: VADCL=0;
	clrf	(_VADCL)^080h
	clrf	(_VADCL+1)^080h
	line	61
;main.c: 61: VADC=0;
	clrf	(_VADC)^080h
	clrf	(_VADC+1)^080h
	line	62
	
l10512:	
;main.c: 62: a=0;
	movlw	0x0
	movwf	(_a)^080h
	movlw	0x0
	movwf	(_a+1)^080h
	movlw	0x0
	movwf	(_a+2)^080h
	line	63
	
l10514:	
;main.c: 63: lcd_goto(0x00);
	movlw	(0)
	fcall	_lcd_goto
	line	64
	
l10516:	
;main.c: 64: lcd_puts("Iniciando");
	movlw	low((STR_5-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	65
	
l10518:	
;main.c: 65: lcd_goto(0x40);
	movlw	(040h)
	fcall	_lcd_goto
	line	66
	
l10520:	
;main.c: 66: lcd_puts("Transmision...");
	movlw	low((STR_6-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	67
	
l10522:	
;main.c: 67: pause(700);
	movlw	low(02BCh)
	movwf	(?_pause)
	movlw	high(02BCh)
	movwf	((?_pause))+1
	fcall	_pause
	goto	l10524
	line	69
;main.c: 69: while(1)
	
l1060:	
	line	74
	
l10524:	
;main.c: 70: {
;main.c: 74: input = getch();
	fcall	_getch
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	movwf	(_input)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(_input+1)^080h
	line	75
	
l10526:	
;main.c: 75: ADCON0=0XD4;
	movlw	(0D4h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	76
	
l10528:	
;main.c: 76: ADON=1;
	bsf	(248/8),(248)&7
	line	77
	
l10530:	
;main.c: 77: GO_DONE=1;
	bsf	(249/8),(249)&7
	line	78
;main.c: 78: while(GO_DONE==1);
	goto	l1061
	
l1062:	
	
l1061:	
	btfsc	(249/8),(249)&7
	goto	u5401
	goto	u5400
u5401:
	goto	l1061
u5400:
	goto	l10532
	
l1063:	
	line	79
	
l10532:	
;main.c: 79: VADCH=ADRESH;
	movf	(30),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	movwf	(_VADCH)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(_VADCH+1)^080h
	line	80
;main.c: 80: VADCL=ADRESL;
	movf	(158)^080h,w	;volatile
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	movwf	(_VADCL)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(_VADCL+1)^080h
	line	81
	
l10534:	
;main.c: 81: VADC=(ADRESH<<2)+(ADRESL>>6);
	movf	(158)^080h,w	;volatile
	movwf	(??_main+0)^080h+0
	movlw	06h
u5415:
	clrc
	rrf	(??_main+0)^080h+0,f
	addlw	-1
	skipz
	goto	u5415
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+1)^080h+0
	clrf	(??_main+1)^080h+0+1
	movlw	02h
	movwf	btemp+1
u5425:
	clrc
	rlf	(??_main+1)^080h+0,f
	rlf	(??_main+1)^080h+1,f
	decfsz	btemp+1,f
	goto	u5425
	movf	0+(??_main+0)^080h+0,w
	addwf	0+(??_main+1)^080h+0,w
	movwf	(_VADC)^080h
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_main+1)^080h+0,w
	movwf	1+(_VADC)^080h
	line	82
	
l10536:	
;main.c: 82: ADON=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(248/8),(248)&7
	line	83
	
l10538:	
;main.c: 83: printf("%i\r\n",VADC);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_VADC+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_printf+1)
	addwf	(?_printf+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_VADC)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_printf)
	addwf	(?_printf)

	movlw	((STR_7-__stringbase))&0ffh
	fcall	_printf
	line	84
	
l10540:	
;main.c: 84: a=(float)VADC*500/1024;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movlw	0x80
	movwf	(?___ftdiv+1)
	movlw	0x44
	movwf	(?___ftdiv+2)
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0xfa
	movwf	(?___ftmul+1)
	movlw	0x43
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_VADC+1)^080h,w
	clrf	(?___lwtoft+1)
	addwf	(?___lwtoft+1)
	movf	(_VADC)^080h,w
	clrf	(?___lwtoft)
	addwf	(?___lwtoft)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___lwtoft)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___lwtoft)),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	0+(?___ftdiv)+03h
	movf	(1+(?___ftmul)),w
	movwf	1+(?___ftdiv)+03h
	movf	(2+(?___ftmul)),w
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_a)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_a+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_a+2)^080h
	line	85
	
l10542:	
;main.c: 85: b=(float)input;
	movf	(_input+1)^080h,w
	clrf	(?___lwtoft+1)
	addwf	(?___lwtoft+1)
	movf	(_input)^080h,w
	clrf	(?___lwtoft)
	addwf	(?___lwtoft)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_b)^080h
	movf	(1+(?___lwtoft)),w
	movwf	(_b+1)^080h
	movf	(2+(?___lwtoft)),w
	movwf	(_b+2)^080h
	line	86
	
l10544:	
;main.c: 86: lcd_clear();
	fcall	_lcd_clear
	line	87
	
l10546:	
;main.c: 87: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	88
	
l10548:	
;main.c: 88: sprintf(str,"Tmp=%.1f",a);
	movlw	((STR_8-__stringbase))&0ffh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_sprintf)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_a)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_a+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_a+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?_sprintf)+01h
	movlw	(_str)&0ffh
	fcall	_sprintf
	line	89
	
l10550:	
;main.c: 89: lcd_puts(str);
	movlw	(_str&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x3/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	90
	
l10552:	
;main.c: 90: lcd_goto(0x40);
	movlw	(040h)
	fcall	_lcd_goto
	line	91
	
l10554:	
;main.c: 91: sprintf(str,"Tmpobj=%i%.1f",input,b);
	movlw	((STR_9-__stringbase))&0ffh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_sprintf)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_input+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_input)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_b)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_sprintf)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_b+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?_sprintf)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_b+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?_sprintf)+03h
	movlw	(_str)&0ffh
	fcall	_sprintf
	line	92
	
l10556:	
;main.c: 92: lcd_puts(str);
	movlw	(_str&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x3/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	95
	
l10558:	
;main.c: 95: if(a>=b)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_a)^080h,w
	movwf	(?___ftge)
	movf	(_a+1)^080h,w
	movwf	(?___ftge+1)
	movf	(_a+2)^080h,w
	movwf	(?___ftge+2)
	movf	(_b)^080h,w
	movwf	0+(?___ftge)+03h
	movf	(_b+1)^080h,w
	movwf	1+(?___ftge)+03h
	movf	(_b+2)^080h,w
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u5431
	goto	u5430
u5431:
	goto	l1064
u5430:
	line	97
	
l10560:	
;main.c: 96: {
;main.c: 97: RB0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	line	98
	
l10562:	
;main.c: 98: CCPR2L=0x00;
	clrf	(27)	;volatile
	line	99
;main.c: 99: CCPR1L=0x00;
	clrf	(21)	;volatile
	line	101
;main.c: 101: }
	goto	l1065
	line	102
	
l1064:	
	line	104
;main.c: 102: else
;main.c: 103: {
;main.c: 104: RB0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	line	105
	
l10564:	
;main.c: 105: CCPR2L=input;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_input)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(27)	;volatile
	line	106
	
l1065:	
	line	108
;main.c: 106: }
;main.c: 108: CCP1CON=0x0C;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	110
;main.c: 110: CCP2CON=0x0C;
	movlw	(0Ch)
	movwf	(29)	;volatile
	goto	l10524
	line	113
	
l1066:	
	line	69
	goto	l10524
	
l1067:	
	line	115
	
l1068:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_sprintf
psect	text719,local,class=CODE,delta=2
global __ptext719
__ptext719:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\sprintf.c"
;; Parameters:    Size  Location     Type
;;  wh              1    wreg     PTR unsigned char 
;;		 -> str(80), 
;;  f               1   74[BANK0 ] PTR const unsigned char 
;;		 -> STR_9(14), STR_8(9), 
;; Auto vars:     Size  Location     Type
;;  wh              1   24[BANK1 ] PTR unsigned char 
;;		 -> str(80), 
;;  pb              2   26[BANK1 ] struct __prbuf
;;  ap              1   25[BANK1 ] PTR void [1]
;;		 -> ?_sprintf(2), ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   74[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       4       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       6       6       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		__doprnt
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text719
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\sprintf.c"
	line	14
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
	opt	stack 3
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@wh stored from wreg
	line	31
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@wh)^080h
	
l10444:	
	movf	(sprintf@wh)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	movwf	(sprintf@pb)^080h
	line	32
	
l10446:	
	clrf	(0+sprintf@pb+01h)^080h
	line	33
	movlw	(?_sprintf+01h)&0ffh
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	movwf	(sprintf@ap)^080h
	line	34
	
l10448:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@f),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?__doprnt)
	movlw	(sprintf@ap)&0ffh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_sprintf+1)^080h+0
	movf	(??_sprintf+1)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(0+?__doprnt+01h)
	movlw	(sprintf@pb)&0ffh
	fcall	__doprnt
	line	35
	
l10450:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@pb)^080h,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	clrf	indf
	goto	l5951
	line	36
	
l10452:	
	line	38
;	Return value of _sprintf is never used
	
l5951:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	_printf
psect	text720,local,class=CODE,delta=2
global __ptext720
__ptext720:

;; *************** function _printf *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\printf.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_7(5), 
;; Auto vars:     Size  Location     Type
;;  f               1   22[BANK1 ] PTR const unsigned char 
;;		 -> STR_7(5), 
;;  pb              2   24[BANK1 ] struct __prbuf
;;  ap              1   23[BANK1 ] PTR void [1]
;;		 -> ?_sprintf(2), ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   74[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       4       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       4       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		__doprnt
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text720
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\printf.c"
	line	14
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 3
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printf@f stored from wreg
	line	23
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(printf@f)^080h
	
l10436:	
	clrf	(printf@pb)^080h
	line	24
	
l10438:	
	movlw	((fp__putch-fpbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(0+printf@pb+01h)^080h
	line	25
	movlw	(?_printf)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(printf@ap)^080h
	line	26
	
l10440:	
;	Return value of _printf is never used
	movf	(printf@f)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(?__doprnt)
	movlw	(printf@ap)&0ffh
	movwf	(??_printf+1)+0
	movf	(??_printf+1)+0,w
	movwf	(0+?__doprnt+01h)
	movlw	(printf@pb)&0ffh
	fcall	__doprnt
	goto	l5944
	
l10442:	
	line	28
	
l5944:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_lcd_init
psect	text721,local,class=CODE,delta=2
global __ptext721
__ptext721:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 89 in file "C:\PIC_PROGS\ProyectoMicros\PIC\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  init_value      1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_pause
;;		_lcd_write
;;		_lcd_clear
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text721
	file	"C:\PIC_PROGS\ProyectoMicros\PIC\lcd.c"
	line	89
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 3
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	92
	
l10386:	
;lcd.c: 90: char init_value;
;lcd.c: 92: ANSEL = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	94
	
l10388:	
;lcd.c: 94: init_value = 0x3;
	movlw	(03h)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(lcd_init@init_value)
	line	95
	
l10390:	
;lcd.c: 95: TRISA=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	96
	
l10392:	
;lcd.c: 96: TRISD=0;
	clrf	(136)^080h	;volatile
	line	97
	
l10394:	
;lcd.c: 97: RA2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
	line	98
	
l10396:	
;lcd.c: 98: RA1 = 0;
	bcf	(41/8),(41)&7
	line	99
	
l10398:	
;lcd.c: 99: RA4 = 0;
	bcf	(44/8),(44)&7
	line	101
	
l10400:	
;lcd.c: 101: pause (15);
	movlw	low(0Fh)
	movwf	(?_pause)
	movlw	high(0Fh)
	movwf	((?_pause))+1
	fcall	_pause
	line	102
	
l10402:	
;lcd.c: 102: PORTD = init_value;
	movf	(lcd_init@init_value),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	103
	
l10404:	
;lcd.c: 103: ((RA1 = 1),(RA1=0));
	bsf	(41/8),(41)&7
	
l10406:	
	bcf	(41/8),(41)&7
	line	104
	
l10408:	
;lcd.c: 104: pause(10);
	movlw	low(0Ah)
	movwf	(?_pause)
	movlw	high(0Ah)
	movwf	((?_pause))+1
	fcall	_pause
	line	105
	
l10410:	
;lcd.c: 105: ((RA1 = 1),(RA1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	
l10412:	
	bcf	(41/8),(41)&7
	line	106
	
l10414:	
;lcd.c: 106: pause(10);
	movlw	low(0Ah)
	movwf	(?_pause)
	movlw	high(0Ah)
	movwf	((?_pause))+1
	fcall	_pause
	line	107
	
l10416:	
;lcd.c: 107: ((RA1 = 1),(RA1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	
l10418:	
	bcf	(41/8),(41)&7
	line	108
	
l10420:	
;lcd.c: 108: pause(10);
	movlw	low(0Ah)
	movwf	(?_pause)
	movlw	high(0Ah)
	movwf	((?_pause))+1
	fcall	_pause
	line	109
	
l10422:	
;lcd.c: 109: PORTD = 2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	110
	
l10424:	
;lcd.c: 110: ((RA1 = 1),(RA1=0));
	bsf	(41/8),(41)&7
	
l10426:	
	bcf	(41/8),(41)&7
	line	112
	
l10428:	
;lcd.c: 112: lcd_write(0x28);
	movlw	(028h)
	fcall	_lcd_write
	line	113
	
l10430:	
;lcd.c: 113: lcd_write(0xC);
	movlw	(0Ch)
	fcall	_lcd_write
	line	115
	
l10432:	
;lcd.c: 115: lcd_clear();
	fcall	_lcd_clear
	line	116
	
l10434:	
;lcd.c: 116: lcd_write(0x6);
	movlw	(06h)
	fcall	_lcd_write
	line	117
	
l1923:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	__doprnt
psect	text722,local,class=CODE,delta=2
global __ptext722
__ptext722:

;; *************** function __doprnt *****************
;; Defined at:
;;		line 455 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  pb              1    wreg     PTR struct __prbuf
;;		 -> sprintf@pb(2), printf@pb(2), 
;;  f               1   66[BANK0 ] PTR const unsigned char 
;;		 -> STR_9(14), STR_8(9), STR_7(5), 
;;  ap              1   67[BANK0 ] PTR PTR void 
;;		 -> sprintf@ap(1), printf@ap(1), 
;; Auto vars:     Size  Location     Type
;;  pb              1   21[BANK1 ] PTR struct __prbuf
;;		 -> sprintf@pb(2), printf@pb(2), 
;;  _val            4   11[BANK1 ] struct .
;;  fval            3   17[BANK1 ] struct .
;;  integ           3    6[BANK1 ] struct .
;;  ival            3    0        struct .
;;  prec            2   15[BANK1 ] int 
;;  exp             2    9[BANK1 ] int 
;;  flag            2    4[BANK1 ] unsigned short 
;;  width           2    0        int 
;;  c               1   20[BANK1 ] char 
;;  d               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2   66[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0      22       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0       8      22       0       0
;;Total ram usage:       30 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Absolute function
;;		_putch
;;		___wmul
;;		_isdigit
;;		___ftge
;;		___ftneg
;;		___awdiv
;;		_scale
;;		___ftmul
;;		_fround
;;		___ftadd
;;		___fttol
;;		__div_to_l_
;;		__tdiv_to_l_
;;		___lltoft
;;		___ftsub
;;		___lldiv
;;		___llmod
;; This function is called by:
;;		_printf
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text722
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	455
	global	__size_of__doprnt
	__size_of__doprnt	equ	__end_of__doprnt-__doprnt
	
__doprnt:	
	opt	stack 3
; Regs used in __doprnt: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;__doprnt@pb stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@pb)^080h
	line	540
	
l10126:	
	goto	l10380
	
l4862:	
	line	542
	
l10128:	
	movf	(__doprnt@c)^080h,w
	xorlw	025h
	skipnz
	goto	u4841
	goto	u4840
u4841:
	goto	l10138
u4840:
	line	545
	
l10130:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u4851
	goto	u4850
u4851:
	goto	l10134
u4850:
	
l10132:	
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	movf	(??__doprnt+0)+0,w
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l10380
	
l4864:	
	
l10134:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??__doprnt+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l10136:	
	movlw	(01h)
	movwf	(??__doprnt+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??__doprnt+0)+0,w
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	goto	l10380
	
l4865:	
	line	546
	goto	l10380
	line	547
	
l4863:	
	line	552
	
l10138:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(__doprnt@flag)^080h
	clrf	(__doprnt@flag+1)^080h
	line	614
	
l10140:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__doprnt@f),w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u4861
	goto	u4860
u4861:
	goto	l10154
u4860:
	line	615
	
l10142:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(__doprnt@flag)^080h+(14/8),(14)&7
	line	616
	
l10144:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	movf	(??__doprnt+0)+0,w
	addwf	(__doprnt@f),f
	line	624
	
l10146:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(__doprnt@prec)^080h
	clrf	(__doprnt@prec+1)^080h
	line	625
	goto	l10152
	
l4868:	
	line	626
	
l10148:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@prec+1)^080h,w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(__doprnt@prec)^080h,w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__doprnt@f),w
	movwf	fsr0
	fcall	stringdir
	addwf	(0+(?___wmul)),w
	movwf	(??__doprnt+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??__doprnt+0)+0
	movf	0+(??__doprnt+0)+0,w
	addlw	low(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@prec)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??__doprnt+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(__doprnt@prec)^080h
	
l10150:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	movf	(??__doprnt+0)+0,w
	addwf	(__doprnt@f),f
	goto	l10152
	
l4867:	
	line	625
	
l10152:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(__doprnt@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u4871
	goto	u4870
u4871:
	goto	l10148
u4870:
	goto	l10160
	
l4869:	
	line	628
	goto	l10160
	
l4866:	
	line	629
	
l10154:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(__doprnt@prec)^080h
	clrf	(__doprnt@prec+1)^080h
	line	631
	
l10156:	
	bsf	(__doprnt@flag)^080h+(12/8),(12)&7
	goto	l10160
	line	633
	
l4870:	
	line	638
	goto	l10160
	line	640
	
l4872:	
	line	641
	goto	l10382
	line	665
	
l4874:	
	line	666
	bsf	(__doprnt@flag)^080h+(10/8),(10)&7
	line	667
	goto	l10162
	line	700
	
l4876:	
	goto	l10162
	line	701
	
l4877:	
	line	702
	goto	l10162
	line	805
	
l4878:	
	line	816
	goto	l10380
	line	825
	
l10158:	
	goto	l10162
	line	638
	
l4871:	
	
l10160:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(__doprnt@f),f
	movlw	-01h
	addwf	(__doprnt@f),w
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@c)^080h
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; jumptable            260     6 (fixed)
; rangetable           110     6 (fixed)
; spacedrange          218     9 (fixed)
; locatedrange         106     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l10382
	xorlw	100^0	; case 100
	skipnz
	goto	l10162
	xorlw	102^100	; case 102
	skipnz
	goto	l4874
	xorlw	105^102	; case 105
	skipnz
	goto	l10162
	goto	l10380
	opt asmopt_on

	line	825
	
l4875:	
	line	828
	
l10162:	
	movlw	low(0700h)
	andwf	(__doprnt@flag)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	movlw	high(0700h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(__doprnt@flag+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(??__doprnt+0)+0
	movf	1+(??__doprnt+0)+0,w
	iorwf	0+(??__doprnt+0)+0,w
	skipnz
	goto	u4881
	goto	u4880
u4881:
	goto	l10322
u4880:
	line	830
	
l10164:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(__doprnt@flag+1)^080h,(12)&7
	goto	u4891
	goto	u4890
u4891:
	goto	l10168
u4890:
	line	832
	
l10166:	
	movlw	low(06h)
	movwf	(__doprnt@prec)^080h
	movlw	high(06h)
	movwf	((__doprnt@prec)^080h)+1
	goto	l10168
	
l4880:	
	line	833
	
l10168:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__doprnt@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	((??__doprnt+0)+0)
	movlw	03h
	addwf	indf,f
	movf	((??__doprnt+0)+0),w
	movwf	fsr0
	movf	indf,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@fval)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(__doprnt@fval+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(__doprnt@fval+2)^080h
	line	834
	
l10170:	
	movf	(__doprnt@fval)^080h,w
	movwf	(?___ftge)
	movf	(__doprnt@fval+1)^080h,w
	movwf	(?___ftge+1)
	movf	(__doprnt@fval+2)^080h,w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x0
	movwf	1+(?___ftge)+03h
	movlw	0x0
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u4901
	goto	u4900
u4901:
	goto	l10176
u4900:
	line	835
	
l10172:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@fval)^080h,w
	movwf	(?___ftneg)
	movf	(__doprnt@fval+1)^080h,w
	movwf	(?___ftneg+1)
	movf	(__doprnt@fval+2)^080h,w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@fval)^080h
	movf	(1+(?___ftneg)),w
	movwf	(__doprnt@fval+1)^080h
	movf	(2+(?___ftneg)),w
	movwf	(__doprnt@fval+2)^080h
	line	836
	
l10174:	
	movlw	low(03h)
	iorwf	(__doprnt@flag)^080h,f
	movlw	high(03h)
	iorwf	(__doprnt@flag+1)^080h,f
	goto	l10176
	line	837
	
l4881:	
	line	838
	
l10176:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(__doprnt@exp)^080h
	clrf	(__doprnt@exp+1)^080h
	line	839
	
l10178:	
	movf	(__doprnt@fval+2)^080h,w
	iorwf	(__doprnt@fval+1)^080h,w
	iorwf	(__doprnt@fval)^080h,w
	skipnz
	goto	u4911
	goto	u4910
u4911:
	goto	l10204
u4910:
	line	840
	
l10180:	
	movlw	low(__doprnt@fval)
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__doprnt+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__doprnt+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__doprnt+0)+0+3
	movlw	0Fh
u4925:
	clrc
	rrf	(??__doprnt+0)+3,f
	rrf	(??__doprnt+0)+2,f
	rrf	(??__doprnt+0)+1,f
	rrf	(??__doprnt+0)+0,f
u4920:
	addlw	-1
	skipz
	goto	u4925
	movlw	low(0FFh)
	andwf	0+(??__doprnt+0)+0,w
	movwf	(??__doprnt+4)+0
	movlw	high(0FFh)
	andwf	1+(??__doprnt+0)+0,w
	movwf	1+(??__doprnt+4)+0
	movf	0+(??__doprnt+4)+0,w
	addlw	low(-126)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@exp)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??__doprnt+4)+0,w
	skipnc
	addlw	1
	addlw	high(-126)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(__doprnt@exp)^080h
	line	841
	
l10182:	
	movlw	low(-1)
	addwf	(__doprnt@exp)^080h,f
	skipnc
	incf	(__doprnt@exp+1)^080h,f
	movlw	high(-1)
	addwf	(__doprnt@exp+1)^080h,f
	line	842
	
l10184:	
	movlw	low(03h)
	movwf	(?___wmul)
	movlw	high(03h)
	movwf	((?___wmul))+1
	movf	(__doprnt@exp+1)^080h,w
	clrf	1+(?___wmul)+02h
	addwf	1+(?___wmul)+02h
	movf	(__doprnt@exp)^080h,w
	clrf	0+(?___wmul)+02h
	addwf	0+(?___wmul)+02h

	fcall	___wmul
	movf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(__doprnt@exp+1)^080h
	addwf	(__doprnt@exp+1)^080h
	movf	(0+(?___wmul)),w
	clrf	(__doprnt@exp)^080h
	addwf	(__doprnt@exp)^080h

	line	843
	
l10186:	
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(__doprnt@exp+1)^080h,w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(__doprnt@exp)^080h,w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(__doprnt@exp+1)^080h
	addwf	(__doprnt@exp+1)^080h
	movf	(0+(?___awdiv)),w
	clrf	(__doprnt@exp)^080h
	addwf	(__doprnt@exp)^080h

	line	844
	
l10188:	
	btfss	(__doprnt@exp+1)^080h,7
	goto	u4931
	goto	u4930
u4931:
	goto	l10192
u4930:
	line	845
	
l10190:	
	movlw	low(-1)
	addwf	(__doprnt@exp)^080h,f
	skipnc
	incf	(__doprnt@exp+1)^080h,f
	movlw	high(-1)
	addwf	(__doprnt@exp+1)^080h,f
	goto	l10192
	
l4883:	
	line	849
	
l10192:	
	decf	(__doprnt@exp)^080h,w
	xorlw	0ffh
	fcall	_scale
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@integ+2)^080h
	line	850
	
l10194:	
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@integ+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@integ+2)^080h
	line	851
	
l10196:	
	movf	(__doprnt@integ)^080h,w
	movwf	(?___ftge)
	movf	(__doprnt@integ+1)^080h,w
	movwf	(?___ftge+1)
	movf	(__doprnt@integ+2)^080h,w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x80
	movwf	1+(?___ftge)+03h
	movlw	0x3f
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u4941
	goto	u4940
u4941:
	goto	l10200
u4940:
	line	852
	
l10198:	
	movlw	low(-1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@exp)^080h,f
	skipnc
	incf	(__doprnt@exp+1)^080h,f
	movlw	high(-1)
	addwf	(__doprnt@exp+1)^080h,f
	goto	l10204
	line	853
	
l4884:	
	
l10200:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@integ)^080h,w
	movwf	(?___ftge)
	movf	(__doprnt@integ+1)^080h,w
	movwf	(?___ftge+1)
	movf	(__doprnt@integ+2)^080h,w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x20
	movwf	1+(?___ftge)+03h
	movlw	0x41
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u4951
	goto	u4950
u4951:
	goto	l10204
u4950:
	line	854
	
l10202:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@exp)^080h,f
	skipnc
	incf	(__doprnt@exp+1)^080h,f
	movlw	high(01h)
	addwf	(__doprnt@exp+1)^080h,f
	goto	l10204
	
l4886:	
	goto	l10204
	line	855
	
l4885:	
	goto	l10204
	
l4882:	
	line	1115
	
l10204:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u4965
	movlw	low(0Dh)
	subwf	(__doprnt@prec)^080h,w
u4965:

	skipnc
	goto	u4961
	goto	u4960
u4961:
	goto	l10208
u4960:
	line	1116
	
l10206:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@prec)^080h,w
	fcall	_fround
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_fround)),w
	movwf	(?___ftadd)
	movf	(1+(?_fround)),w
	movwf	(?___ftadd+1)
	movf	(2+(?_fround)),w
	movwf	(?___ftadd+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@fval+2)^080h
	goto	l10208
	
l4887:	
	line	1119
	
l10208:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4975
	movlw	low(0Ah)
	subwf	(__doprnt@exp)^080h,w
u4975:

	skipnc
	goto	u4971
	goto	u4970
u4971:
	goto	l10216
u4970:
	
l10210:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@fval+2)^080h,w
	iorwf	(__doprnt@fval+1)^080h,w
	iorwf	(__doprnt@fval)^080h,w
	skipnz
	goto	u4981
	goto	u4980
u4981:
	goto	l10232
u4980:
	
l10212:	
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___fttol)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___fttol+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
	iorwf	(2+(?___fttol)),w
	iorwf	(1+(?___fttol)),w
	iorwf	(0+(?___fttol)),w
	skipz
	goto	u4991
	goto	u4990
u4991:
	goto	l10232
u4990:
	
l10214:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5005
	movlw	low(02h)
	subwf	(__doprnt@exp)^080h,w
u5005:

	skipc
	goto	u5001
	goto	u5000
u5001:
	goto	l10232
u5000:
	goto	l10216
	
l4890:	
	line	1123
	
l10216:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@integ)^080h,w
	movwf	(?___ftge)
	movf	(__doprnt@integ+1)^080h,w
	movwf	(?___ftge+1)
	movf	(__doprnt@integ+2)^080h,w
	movwf	(?___ftge+2)
	movlw	0x70
	movwf	0+(?___ftge)+03h
	movlw	0x89
	movwf	1+(?___ftge)+03h
	movlw	0x40
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u5011
	goto	u5010
u5011:
	goto	l10220
u5010:
	line	1124
	
l10218:	
	movlw	low(-9)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@exp)^080h,f
	skipnc
	incf	(__doprnt@exp+1)^080h,f
	movlw	high(-9)
	addwf	(__doprnt@exp+1)^080h,f
	line	1125
	goto	l10222
	
l4891:	
	line	1126
	
l10220:	
	movlw	low(-8)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@exp)^080h,f
	skipnc
	incf	(__doprnt@exp+1)^080h,f
	movlw	high(-8)
	addwf	(__doprnt@exp+1)^080h,f
	goto	l10222
	line	1127
	
l4892:	
	line	1128
	
l10222:	
	movf	(__doprnt@exp)^080h,w
	fcall	_scale
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@integ+2)^080h
	line	1129
	goto	l10226
	
l10224:	
	movf	(__doprnt@fval)^080h,w
	movwf	(?__div_to_l_)
	movf	(__doprnt@fval+1)^080h,w
	movwf	(?__div_to_l_+1)
	movf	(__doprnt@fval+2)^080h,w
	movwf	(?__div_to_l_+2)
	movf	(__doprnt@integ)^080h,w
	movwf	0+(?__div_to_l_)+03h
	movf	(__doprnt@integ+1)^080h,w
	movwf	1+(?__div_to_l_)+03h
	movf	(__doprnt@integ+2)^080h,w
	movwf	2+(?__div_to_l_)+03h
	fcall	__div_to_l_
	movf	(3+(?__div_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt$5168+3)^080h
	movf	(2+(?__div_to_l_)),w
	movwf	(__doprnt$5168+2)^080h
	movf	(1+(?__div_to_l_)),w
	movwf	(__doprnt$5168+1)^080h
	movf	(0+(?__div_to_l_)),w
	movwf	(__doprnt$5168)^080h

	goto	l10228
	
l4894:	
	
l10226:	
	movf	(__doprnt@fval)^080h,w
	movwf	(?__tdiv_to_l_)
	movf	(__doprnt@fval+1)^080h,w
	movwf	(?__tdiv_to_l_+1)
	movf	(__doprnt@fval+2)^080h,w
	movwf	(?__tdiv_to_l_+2)
	movf	(__doprnt@integ)^080h,w
	movwf	0+(?__tdiv_to_l_)+03h
	movf	(__doprnt@integ+1)^080h,w
	movwf	1+(?__tdiv_to_l_)+03h
	movf	(__doprnt@integ+2)^080h,w
	movwf	2+(?__tdiv_to_l_)+03h
	fcall	__tdiv_to_l_
	movf	(3+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt$5168+3)^080h
	movf	(2+(?__tdiv_to_l_)),w
	movwf	(__doprnt$5168+2)^080h
	movf	(1+(?__tdiv_to_l_)),w
	movwf	(__doprnt$5168+1)^080h
	movf	(0+(?__tdiv_to_l_)),w
	movwf	(__doprnt$5168)^080h

	goto	l10228
	
l4896:	
	
l10228:	
	movf	(__doprnt$5168+3)^080h,w
	movwf	(__doprnt@_val+3)^080h
	movf	(__doprnt$5168+2)^080h,w
	movwf	(__doprnt@_val+2)^080h
	movf	(__doprnt$5168+1)^080h,w
	movwf	(__doprnt@_val+1)^080h
	movf	(__doprnt$5168)^080h,w
	movwf	(__doprnt@_val)^080h

	line	1132
	
l10230:	
	movlw	0x0
	movwf	(__doprnt@fval)^080h
	movlw	0x0
	movwf	(__doprnt@fval+1)^080h
	movlw	0x0
	movwf	(__doprnt@fval+2)^080h
	line	1133
	goto	l10236
	
l4888:	
	line	1134
	
l10232:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___fttol)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___fttol+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@_val)^080h

	line	1135
	movf	(__doprnt@_val+3)^080h,w
	movwf	(?___lltoft+3)
	movf	(__doprnt@_val+2)^080h,w
	movwf	(?___lltoft+2)
	movf	(__doprnt@_val+1)^080h,w
	movwf	(?___lltoft+1)
	movf	(__doprnt@_val)^080h,w
	movwf	(?___lltoft)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftsub)
	movf	(1+(?___lltoft)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___lltoft)),w
	movwf	(?___ftsub+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftsub)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftsub)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftsub)+03h
	fcall	___ftsub
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@fval+2)^080h
	line	1136
	
l10234:	
	clrf	(__doprnt@exp)^080h
	clrf	(__doprnt@exp+1)^080h
	goto	l10236
	line	1137
	
l4897:	
	line	1139
	
l10236:	
	clrf	(__doprnt@c)^080h
	bsf	status,0
	rlf	(__doprnt@c)^080h,f
	
l10238:	
	movf	(__doprnt@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u5021
	goto	u5020
u5021:
	goto	l10242
u5020:
	goto	l10250
	
l10240:	
	goto	l10250
	line	1140
	
l4898:	
	
l10242:	
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	movlw	(02h)-1
u5035:
	clrc
	rlf	(??__doprnt+0)+0,f
	addlw	-1
	skipz
	goto	u5035
	clrc
	rlf	(??__doprnt+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	((??__doprnt+1)+0)
	fcall	stringdir
	movwf	((??__doprnt+1)+0+1)
	fcall	stringdir
	movwf	((??__doprnt+1)+0+2)
	fcall	stringdir
	movwf	((??__doprnt+1)+0+3)
	movf	3+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(__doprnt@_val+3)^080h,w
	skipz
	goto	u5045
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	2+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(__doprnt@_val+2)^080h,w
	skipz
	goto	u5045
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(__doprnt@_val+1)^080h,w
	skipz
	goto	u5045
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(__doprnt@_val)^080h,w
u5045:
	skipnc
	goto	u5041
	goto	u5040
u5041:
	goto	l10246
u5040:
	goto	l10250
	line	1141
	
l10244:	
	goto	l10250
	
l4900:	
	line	1139
	
l10246:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	movf	(??__doprnt+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@c)^080h,f
	
l10248:	
	movf	(__doprnt@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u5051
	goto	u5050
u5051:
	goto	l10242
u5050:
	goto	l10250
	
l4899:	
	line	1189
	
l10250:	
	movlw	low(03h)
	andwf	(__doprnt@flag)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	movlw	high(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(__doprnt@flag+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(??__doprnt+0)+0
	movf	1+(??__doprnt+0)+0,w
	iorwf	0+(??__doprnt+0)+0,w
	skipnz
	goto	u5061
	goto	u5060
u5061:
	goto	l10268
u5060:
	line	1191
	
l10252:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u5071
	goto	u5070
u5071:
	goto	l10256
u5070:
	
l10254:	
	movlw	(02Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	movf	(??__doprnt+0)+0,w
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l10268
	
l4902:	
	
l10256:	
	movlw	(02Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??__doprnt+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l10258:	
	movlw	(01h)
	movwf	(??__doprnt+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??__doprnt+0)+0,w
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	goto	l10268
	
l4903:	
	goto	l10268
	
l4901:	
	line	1197
	goto	l10268
	
l4905:	
	line	1201
	
l10260:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u5081
	goto	u5080
u5081:
	goto	l10264
u5080:
	
l10262:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___llmod+3)
	movlw	0
	movwf	(?___llmod+2)
	movlw	0
	movwf	(?___llmod+1)
	movlw	0Ah
	movwf	(?___llmod)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	movlw	(02h)-1
u5095:
	clrc
	rlf	(??__doprnt+0)+0,f
	addlw	-1
	skipz
	goto	u5095
	clrc
	rlf	(??__doprnt+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lldiv)
	fcall	stringdir
	movwf	(?___lldiv+1)
	fcall	stringdir
	movwf	(?___lldiv+2)
	fcall	stringdir
	movwf	(?___lldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@_val+3)^080h,w
	movwf	3+(?___lldiv)+04h
	movf	(__doprnt@_val+2)^080h,w
	movwf	2+(?___lldiv)+04h
	movf	(__doprnt@_val+1)^080h,w
	movwf	1+(?___lldiv)+04h
	movf	(__doprnt@_val)^080h,w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	3+(?___llmod)+04h
	movf	(2+(?___lldiv)),w
	movwf	2+(?___llmod)+04h
	movf	(1+(?___lldiv)),w
	movwf	1+(?___llmod)+04h
	movf	(0+(?___lldiv)),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___llmod)))),w
	addlw	030h
	movwf	(??__doprnt+1)+0
	movf	(??__doprnt+1)+0,w
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	fptable
	goto	l10268
	
l4906:	
	
l10264:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___llmod+3)
	movlw	0
	movwf	(?___llmod+2)
	movlw	0
	movwf	(?___llmod+1)
	movlw	0Ah
	movwf	(?___llmod)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	movlw	(02h)-1
u5105:
	clrc
	rlf	(??__doprnt+0)+0,f
	addlw	-1
	skipz
	goto	u5105
	clrc
	rlf	(??__doprnt+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lldiv)
	fcall	stringdir
	movwf	(?___lldiv+1)
	fcall	stringdir
	movwf	(?___lldiv+2)
	fcall	stringdir
	movwf	(?___lldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@_val+3)^080h,w
	movwf	3+(?___lldiv)+04h
	movf	(__doprnt@_val+2)^080h,w
	movwf	2+(?___lldiv)+04h
	movf	(__doprnt@_val+1)^080h,w
	movwf	1+(?___lldiv)+04h
	movf	(__doprnt@_val)^080h,w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	3+(?___llmod)+04h
	movf	(2+(?___lldiv)),w
	movwf	2+(?___llmod)+04h
	movf	(1+(?___lldiv)),w
	movwf	1+(?___llmod)+04h
	movf	(0+(?___lldiv)),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___llmod)))),w
	addlw	030h
	movwf	(??__doprnt+1)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??__doprnt+1)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l10266:	
	movlw	(01h)
	movwf	(??__doprnt+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??__doprnt+0)+0,w
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	goto	l10268
	
l4907:	
	goto	l10268
	line	1203
	
l4904:	
	line	1197
	
l10268:	
	movlw	(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	movf	(??__doprnt+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@c)^080h,f
	movf	((__doprnt@c)^080h),w
	xorlw	-1
	skipz
	goto	u5111
	goto	u5110
u5111:
	goto	l10260
u5110:
	goto	l10280
	
l4908:	
	line	1204
	goto	l10280
	
l4910:	
	line	1205
	
l10270:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u5121
	goto	u5120
u5121:
	goto	l10274
u5120:
	
l10272:	
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	movf	(??__doprnt+0)+0,w
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l10278
	
l4911:	
	
l10274:	
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??__doprnt+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l10276:	
	movlw	(01h)
	movwf	(??__doprnt+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??__doprnt+0)+0,w
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	goto	l10278
	
l4912:	
	line	1206
	
l10278:	
	movlw	low(-1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@exp)^080h,f
	skipnc
	incf	(__doprnt@exp+1)^080h,f
	movlw	high(-1)
	addwf	(__doprnt@exp+1)^080h,f
	goto	l10280
	line	1207
	
l4909:	
	line	1204
	
l10280:	
	movf	(__doprnt@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5135
	movlw	low(01h)
	subwf	(__doprnt@exp)^080h,w
u5135:

	skipnc
	goto	u5131
	goto	u5130
u5131:
	goto	l10270
u5130:
	goto	l10282
	
l4913:	
	line	1208
	
l10282:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5145
	movlw	low(09h)
	subwf	(__doprnt@prec)^080h,w
u5145:

	skipc
	goto	u5141
	goto	u5140
u5141:
	goto	l10286
u5140:
	line	1209
	
l10284:	
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	movf	(??__doprnt+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@c)^080h
	goto	l4915
	line	1210
	
l4914:	
	line	1211
	
l10286:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	movf	(??__doprnt+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@c)^080h
	
l4915:	
	line	1212
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	clrf	(??__doprnt+0)+0+1
	btfsc	(??__doprnt+0)+0,7
	decf	(??__doprnt+0)+0+1,f
	movf	0+(??__doprnt+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(__doprnt@prec)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??__doprnt+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	skipc
	decf	(__doprnt@prec+1)^080h,f
	subwf	(__doprnt@prec+1)^080h,f
	line	1216
	movf	(__doprnt@c)^080h,w
	skipz
	goto	u5150
	goto	l10296
u5150:
	line	1218
	
l10288:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u5161
	goto	u5160
u5161:
	goto	l10292
u5160:
	
l10290:	
	movlw	(02Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	movf	(??__doprnt+0)+0,w
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l10296
	
l4917:	
	
l10292:	
	movlw	(02Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??__doprnt+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l10294:	
	movlw	(01h)
	movwf	(??__doprnt+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??__doprnt+0)+0,w
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	goto	l10296
	
l4918:	
	goto	l10296
	
l4916:	
	line	1224
	
l10296:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@c)^080h,w
	fcall	_scale
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_scale)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?_scale)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?_scale)),w
	movwf	2+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?___fttol)
	movf	(1+(?___ftmul)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftmul)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@_val)^080h

	line	1225
	goto	l10308
	
l4920:	
	line	1226
	
l10298:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u5171
	goto	u5170
u5171:
	goto	l10302
u5170:
	
l10300:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___llmod+3)
	movlw	0
	movwf	(?___llmod+2)
	movlw	0
	movwf	(?___llmod+1)
	movlw	0Ah
	movwf	(?___llmod)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	movlw	(02h)-1
u5185:
	clrc
	rlf	(??__doprnt+0)+0,f
	addlw	-1
	skipz
	goto	u5185
	clrc
	rlf	(??__doprnt+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lldiv)
	fcall	stringdir
	movwf	(?___lldiv+1)
	fcall	stringdir
	movwf	(?___lldiv+2)
	fcall	stringdir
	movwf	(?___lldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@_val+3)^080h,w
	movwf	3+(?___lldiv)+04h
	movf	(__doprnt@_val+2)^080h,w
	movwf	2+(?___lldiv)+04h
	movf	(__doprnt@_val+1)^080h,w
	movwf	1+(?___lldiv)+04h
	movf	(__doprnt@_val)^080h,w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	3+(?___llmod)+04h
	movf	(2+(?___lldiv)),w
	movwf	2+(?___llmod)+04h
	movf	(1+(?___lldiv)),w
	movwf	1+(?___llmod)+04h
	movf	(0+(?___lldiv)),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___llmod)))),w
	addlw	030h
	movwf	(??__doprnt+1)+0
	movf	(??__doprnt+1)+0,w
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	fptable
	goto	l10306
	
l4921:	
	
l10302:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___llmod+3)
	movlw	0
	movwf	(?___llmod+2)
	movlw	0
	movwf	(?___llmod+1)
	movlw	0Ah
	movwf	(?___llmod)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	movlw	(02h)-1
u5195:
	clrc
	rlf	(??__doprnt+0)+0,f
	addlw	-1
	skipz
	goto	u5195
	clrc
	rlf	(??__doprnt+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lldiv)
	fcall	stringdir
	movwf	(?___lldiv+1)
	fcall	stringdir
	movwf	(?___lldiv+2)
	fcall	stringdir
	movwf	(?___lldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@_val+3)^080h,w
	movwf	3+(?___lldiv)+04h
	movf	(__doprnt@_val+2)^080h,w
	movwf	2+(?___lldiv)+04h
	movf	(__doprnt@_val+1)^080h,w
	movwf	1+(?___lldiv)+04h
	movf	(__doprnt@_val)^080h,w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	3+(?___llmod)+04h
	movf	(2+(?___lldiv)),w
	movwf	2+(?___llmod)+04h
	movf	(1+(?___lldiv)),w
	movwf	1+(?___llmod)+04h
	movf	(0+(?___lldiv)),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___llmod)))),w
	addlw	030h
	movwf	(??__doprnt+1)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??__doprnt+1)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l10304:	
	movlw	(01h)
	movwf	(??__doprnt+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??__doprnt+0)+0,w
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	goto	l10306
	
l4922:	
	line	1227
	
l10306:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	movlw	(02h)-1
u5205:
	clrc
	rlf	(??__doprnt+0)+0,f
	addlw	-1
	skipz
	goto	u5205
	clrc
	rlf	(??__doprnt+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___llmod)
	fcall	stringdir
	movwf	(?___llmod+1)
	fcall	stringdir
	movwf	(?___llmod+2)
	fcall	stringdir
	movwf	(?___llmod+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	3+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@_val)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@_val)^080h

	goto	l10308
	line	1228
	
l4919:	
	line	1225
	
l10308:	
	movlw	(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	movf	(??__doprnt+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@c)^080h,f
	movf	((__doprnt@c)^080h),w
	xorlw	-1
	skipz
	goto	u5211
	goto	u5210
u5211:
	goto	l10298
u5210:
	goto	l10320
	
l4923:	
	line	1230
	goto	l10320
	
l4925:	
	line	1231
	
l10310:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u5221
	goto	u5220
u5221:
	goto	l10314
u5220:
	
l10312:	
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	movf	(??__doprnt+0)+0,w
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l10318
	
l4926:	
	
l10314:	
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??__doprnt+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l10316:	
	movlw	(01h)
	movwf	(??__doprnt+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??__doprnt+0)+0,w
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	goto	l10318
	
l4927:	
	line	1232
	
l10318:	
	movlw	low(-1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@prec)^080h,f
	skipnc
	incf	(__doprnt@prec+1)^080h,f
	movlw	high(-1)
	addwf	(__doprnt@prec+1)^080h,f
	goto	l10320
	line	1233
	
l4924:	
	line	1230
	
l10320:	
	movf	((__doprnt@prec+1)^080h),w
	iorwf	((__doprnt@prec)^080h),w
	skipz
	goto	u5231
	goto	u5230
u5231:
	goto	l10310
u5230:
	goto	l10380
	
l4928:	
	line	1240
	goto	l10380
	line	1241
	
l4879:	
	line	1254
	
l10322:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(__doprnt@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	((??__doprnt+0)+0)
	movlw	02h
	addwf	indf,f
	movf	((??__doprnt+0)+0),w
	movwf	fsr0
	movf	indf,w
	movwf	(??__doprnt+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__doprnt+1)+0+1
	movf	0+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@_val)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@_val+1)^080h
	movlw	0
	btfsc	(__doprnt@_val+1)^080h,7
	movlw	255
	movwf	(__doprnt@_val+2)^080h
	movwf	(__doprnt@_val+3)^080h
	line	1256
	
l10324:	
	btfss	(__doprnt@_val+3)^080h,7
	goto	u5241
	goto	u5240
u5241:
	goto	l10330
u5240:
	line	1257
	
l10326:	
	movlw	low(03h)
	iorwf	(__doprnt@flag)^080h,f
	movlw	high(03h)
	iorwf	(__doprnt@flag+1)^080h,f
	line	1258
	
l10328:	
	comf	(__doprnt@_val)^080h,f
	comf	(__doprnt@_val+1)^080h,f
	comf	(__doprnt@_val+2)^080h,f
	comf	(__doprnt@_val+3)^080h,f
	incf	(__doprnt@_val)^080h,f
	skipnz
	incf	(__doprnt@_val+1)^080h,f
	skipnz
	incf	(__doprnt@_val+2)^080h,f
	skipnz
	incf	(__doprnt@_val+3)^080h,f
	goto	l10330
	line	1259
	
l4929:	
	line	1285
	
l10330:	
	movf	((__doprnt@prec+1)^080h),w
	iorwf	((__doprnt@prec)^080h),w
	skipz
	goto	u5251
	goto	u5250
u5251:
	goto	l10336
u5250:
	
l10332:	
	movf	(__doprnt@_val+3)^080h,w
	iorwf	(__doprnt@_val+2)^080h,w
	iorwf	(__doprnt@_val+1)^080h,w
	iorwf	(__doprnt@_val)^080h,w
	skipz
	goto	u5261
	goto	u5260
u5261:
	goto	l10336
u5260:
	line	1286
	
l10334:	
	movlw	low(01h)
	addwf	(__doprnt@prec)^080h,f
	skipnc
	incf	(__doprnt@prec+1)^080h,f
	movlw	high(01h)
	addwf	(__doprnt@prec+1)^080h,f
	goto	l10336
	
l4930:	
	line	1300
	
l10336:	
	clrf	(__doprnt@c)^080h
	bsf	status,0
	rlf	(__doprnt@c)^080h,f
	
l10338:	
	movf	(__doprnt@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u5271
	goto	u5270
u5271:
	goto	l10342
u5270:
	goto	l10350
	
l10340:	
	goto	l10350
	line	1301
	
l4931:	
	
l10342:	
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	movlw	(02h)-1
u5285:
	clrc
	rlf	(??__doprnt+0)+0,f
	addlw	-1
	skipz
	goto	u5285
	clrc
	rlf	(??__doprnt+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	((??__doprnt+1)+0)
	fcall	stringdir
	movwf	((??__doprnt+1)+0+1)
	fcall	stringdir
	movwf	((??__doprnt+1)+0+2)
	fcall	stringdir
	movwf	((??__doprnt+1)+0+3)
	movf	3+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(__doprnt@_val+3)^080h,w
	skipz
	goto	u5295
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	2+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(__doprnt@_val+2)^080h,w
	skipz
	goto	u5295
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(__doprnt@_val+1)^080h,w
	skipz
	goto	u5295
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(__doprnt@_val)^080h,w
u5295:
	skipnc
	goto	u5291
	goto	u5290
u5291:
	goto	l10346
u5290:
	goto	l10350
	line	1302
	
l10344:	
	goto	l10350
	
l4933:	
	line	1300
	
l10346:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	movf	(??__doprnt+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@c)^080h,f
	
l10348:	
	movf	(__doprnt@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u5301
	goto	u5300
u5301:
	goto	l10342
u5300:
	goto	l10350
	
l4932:	
	line	1334
	
l10350:	
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	clrf	(??__doprnt+0)+0+1
	btfsc	(??__doprnt+0)+0,7
	decf	(??__doprnt+0)+0+1,f
	movf	1+(??__doprnt+0)+0,w
	xorlw	80h
	movwf	(??__doprnt+2)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@prec+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(??__doprnt+2)+0,w
	skipz
	goto	u5315
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	0+(??__doprnt+0)+0,w
u5315:

	skipnc
	goto	u5311
	goto	u5310
u5311:
	goto	l10354
u5310:
	line	1335
	
l10352:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	movf	(??__doprnt+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@c)^080h
	goto	l10358
	line	1336
	
l4934:	
	
l10354:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	clrf	(??__doprnt+0)+0+1
	btfsc	(??__doprnt+0)+0,7
	decf	(??__doprnt+0)+0+1,f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@prec+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+2)+0
	movf	1+(??__doprnt+0)+0,w
	xorlw	80h
	subwf	(??__doprnt+2)+0,w
	skipz
	goto	u5325
	movf	0+(??__doprnt+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(__doprnt@prec)^080h,w
u5325:

	skipnc
	goto	u5321
	goto	u5320
u5321:
	goto	l10358
u5320:
	line	1337
	
l10356:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@c)^080h,w
	movwf	(__doprnt@prec)^080h
	clrf	(__doprnt@prec+1)^080h
	btfsc	(__doprnt@prec)^080h,7
	decf	(__doprnt@prec+1)^080h,f
	goto	l10358
	
l4936:	
	goto	l10358
	line	1417
	
l4935:	
	line	1433
	
l10358:	
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(__doprnt@flag)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	movlw	high(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(__doprnt@flag+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(??__doprnt+0)+0
	movf	1+(??__doprnt+0)+0,w
	iorwf	0+(??__doprnt+0)+0,w
	skipnz
	goto	u5331
	goto	u5330
u5331:
	goto	l10378
u5330:
	line	1434
	
l10360:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u5341
	goto	u5340
u5341:
	goto	l10364
u5340:
	
l10362:	
	movlw	(02Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	movf	(??__doprnt+0)+0,w
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l10378
	
l4938:	
	
l10364:	
	movlw	(02Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??__doprnt+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l10366:	
	movlw	(01h)
	movwf	(??__doprnt+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??__doprnt+0)+0,w
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	goto	l10378
	
l4939:	
	goto	l10378
	
l4937:	
	line	1469
	goto	l10378
	
l4941:	
	line	1484
	
l10368:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod+3)
	movlw	0
	movwf	(?___llmod+2)
	movlw	0
	movwf	(?___llmod+1)
	movlw	0Ah
	movwf	(?___llmod)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	movlw	(02h)-1
u5355:
	clrc
	rlf	(??__doprnt+0)+0,f
	addlw	-1
	skipz
	goto	u5355
	clrc
	rlf	(??__doprnt+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lldiv)
	fcall	stringdir
	movwf	(?___lldiv+1)
	fcall	stringdir
	movwf	(?___lldiv+2)
	fcall	stringdir
	movwf	(?___lldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@_val+3)^080h,w
	movwf	3+(?___lldiv)+04h
	movf	(__doprnt@_val+2)^080h,w
	movwf	2+(?___lldiv)+04h
	movf	(__doprnt@_val+1)^080h,w
	movwf	1+(?___lldiv)+04h
	movf	(__doprnt@_val)^080h,w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	3+(?___llmod)+04h
	movf	(2+(?___lldiv)),w
	movwf	2+(?___llmod)+04h
	movf	(1+(?___lldiv)),w
	movwf	1+(?___llmod)+04h
	movf	(0+(?___lldiv)),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___llmod)))),w
	addlw	030h
	movwf	(??__doprnt+1)+0
	movf	(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@c)^080h
	line	1516
	
l10370:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u5361
	goto	u5360
u5361:
	goto	l10374
u5360:
	
l10372:	
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	movf	(??__doprnt+0)+0,w
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l10378
	
l4942:	
	
l10374:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__doprnt+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??__doprnt+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l10376:	
	movlw	(01h)
	movwf	(??__doprnt+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??__doprnt+0)+0,w
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	goto	l10378
	
l4943:	
	goto	l10378
	line	1517
	
l4940:	
	line	1469
	
l10378:	
	movlw	low(-1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@prec)^080h,f
	skipnc
	incf	(__doprnt@prec+1)^080h,f
	movlw	high(-1)
	addwf	(__doprnt@prec+1)^080h,f
	movlw	high(-1)
	xorwf	((__doprnt@prec+1)^080h),w
	skipz
	goto	u5375
	movlw	low(-1)
	xorwf	((__doprnt@prec)^080h),w
u5375:

	skipz
	goto	u5371
	goto	u5370
u5371:
	goto	l10368
u5370:
	goto	l10380
	
l4944:	
	goto	l10380
	line	1525
	
l4861:	
	line	540
	
l10380:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(__doprnt@f),f
	movlw	-01h
	addwf	(__doprnt@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??__doprnt+0)+0
	movf	(??__doprnt+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@c)^080h
	movf	((__doprnt@c)^080h),f
	skipz
	goto	u5381
	goto	u5380
u5381:
	goto	l10128
u5380:
	goto	l10382
	
l4945:	
	goto	l10382
	line	1527
	
l4873:	
	line	1532
	
l10382:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?__doprnt)
	clrf	(?__doprnt+1)
	goto	l4946
	
l10384:	
	line	1533
	
l4946:	
	return
	opt stack 0
GLOBAL	__end_of__doprnt
	__end_of__doprnt:
;; =============== function __doprnt ends ============

	signat	__doprnt,12410
	global	_lcd_clear
psect	text723,local,class=CODE,delta=2
global __ptext723
__ptext723:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 49 in file "C:\PIC_PROGS\ProyectoMicros\PIC\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_write
;;		_pause
;; This function is called by:
;;		_main
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text723
	file	"C:\PIC_PROGS\ProyectoMicros\PIC\lcd.c"
	line	49
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 4
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	50
	
l10122:	
;lcd.c: 50: RA2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
	line	51
	
l10124:	
;lcd.c: 51: lcd_write(0x1);
	movlw	(01h)
	fcall	_lcd_write
	line	52
;lcd.c: 52: pause (2);
	movlw	low(02h)
	movwf	(?_pause)
	movlw	high(02h)
	movwf	((?_pause))+1
	fcall	_pause
	line	53
	
l1908:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_lcd_puts
psect	text724,local,class=CODE,delta=2
global __ptext724
__ptext724:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 59 in file "C:\PIC_PROGS\ProyectoMicros\PIC\lcd.c"
;; Parameters:    Size  Location     Type
;;  s               2    6[COMMON] PTR const unsigned char 
;;		 -> str(80), STR_6(15), STR_5(10), STR_4(7), 
;;		 -> STR_3(13), STR_2(15), STR_1(13), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text724
	file	"C:\PIC_PROGS\ProyectoMicros\PIC\lcd.c"
	line	59
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
	opt	stack 4
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	60
	
l10114:	
;lcd.c: 60: RA2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7
	line	61
;lcd.c: 61: while(*s)
	goto	l10120
	
l1912:	
	line	62
	
l10116:	
;lcd.c: 62: lcd_write(*s++);
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	_lcd_write
	
l10118:	
	movlw	low(01h)
	addwf	(lcd_puts@s),f
	skipnc
	incf	(lcd_puts@s+1),f
	movlw	high(01h)
	addwf	(lcd_puts@s+1),f
	goto	l10120
	
l1911:	
	line	61
	
l10120:	
	movf	(lcd_puts@s+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u4831
	goto	u4830
u4831:
	goto	l10116
u4830:
	goto	l1914
	
l1913:	
	line	63
	
l1914:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_lcd_goto
psect	text725,local,class=CODE,delta=2
global __ptext725
__ptext725:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 81 in file "C:\PIC_PROGS\ProyectoMicros\PIC\lcd.c"
;; Parameters:    Size  Location     Type
;;  pos             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pos             1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text725
	file	"C:\PIC_PROGS\ProyectoMicros\PIC\lcd.c"
	line	81
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 4
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos stored from wreg
	movwf	(lcd_goto@pos)
	line	82
	
l10110:	
;lcd.c: 82: RA2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
	line	83
	
l10112:	
;lcd.c: 83: lcd_write(0x80+pos);
	movf	(lcd_goto@pos),w
	addlw	080h
	fcall	_lcd_write
	line	84
	
l1920:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	___ftsub
psect	text726,local,class=CODE,delta=2
global __ptext726
__ptext726:

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 17 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   50[BANK0 ] float 
;;  f1              3   53[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   50[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text726
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftsub.c"
	line	17
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
	opt	stack 3
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l10104:	
	movlw	080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(___ftsub@f2+2),f
	line	19
	
l10106:	
	movf	(___ftsub@f1),w
	movwf	(?___ftadd)
	movf	(___ftsub@f1+1),w
	movwf	(?___ftadd+1)
	movf	(___ftsub@f1+2),w
	movwf	(?___ftadd+2)
	movf	(___ftsub@f2),w
	movwf	0+(?___ftadd)+03h
	movf	(___ftsub@f2+1),w
	movwf	1+(?___ftadd)+03h
	movf	(___ftsub@f2+2),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?___ftsub)
	movf	(1+(?___ftadd)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___ftsub+2)
	goto	l6043
	
l10108:	
	line	20
	
l6043:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
;; =============== function ___ftsub ends ============

	signat	___ftsub,8315
	global	_scale
psect	text727,local,class=CODE,delta=2
global __ptext727
__ptext727:

;; *************** function _scale *****************
;; Defined at:
;;		line 422 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  scl             1    wreg     char 
;; Auto vars:     Size  Location     Type
;;  scl             1   45[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  3   37[BANK0 ] char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awmod
;;		___bmul
;;		___awdiv
;;		___ftmul
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text727
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	422
	global	__size_of_scale
	__size_of_scale	equ	__end_of_scale-_scale
	
_scale:	
	opt	stack 3
; Regs used in _scale: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;scale@scl stored from wreg
	line	424
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(scale@scl)
	
l10064:	
	btfss	(scale@scl),7
	goto	u4781
	goto	u4780
u4781:
	goto	l10086
u4780:
	line	425
	
l10066:	
	comf	(scale@scl),f
	incf	(scale@scl),f
	line	426
	
l10068:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u4791
	goto	u4790
u4791:
	goto	l10076
u4790:
	line	427
	
l10070:	
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(?___bmul)
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	(03h)
	movwf	(??_scale+1)+0
	movf	(??_scale+1)+0,w
	movwf	(?___bmul)
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(scale@scl),w
	movwf	0+(?___awdiv)+02h
	clrf	1+(?___awdiv)+02h
	btfsc	0+(?___awdiv)+02h,7
	decf	1+(?___awdiv)+02h,f
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	012h
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_scale$6158)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$6158+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$6158+2)
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(?___bmul)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movf	(_scale$6158),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$6158+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$6158+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l4853
	
l10072:	
	goto	l4853
	
l10074:	
	goto	l10082
	line	428
	
l4852:	
	
l10076:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u4801
	goto	u4800
u4801:
	goto	l10082
u4800:
	line	429
	
l10078:	
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(?___bmul)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	(03h)
	movwf	(??_scale+1)+0
	movf	(??_scale+1)+0,w
	movwf	(?___bmul)
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(scale@scl),w
	movwf	0+(?___awdiv)+02h
	clrf	1+(?___awdiv)+02h
	btfsc	0+(?___awdiv)+02h,7
	decf	1+(?___awdiv)+02h,f
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l4853
	
l10080:	
	goto	l4853
	
l4855:	
	goto	l10082
	line	430
	
l4854:	
	
l10082:	
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(?___bmul)
	movf	(scale@scl),w
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_scale)
	fcall	stringdir
	movwf	(?_scale+1)
	fcall	stringdir
	movwf	(?_scale+2)
	goto	l4853
	
l10084:	
	goto	l4853
	line	431
	
l4851:	
	line	432
	
l10086:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u4811
	goto	u4810
u4811:
	goto	l10094
u4810:
	line	433
	
l10088:	
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(?___bmul)
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	(03h)
	movwf	(??_scale+1)+0
	movf	(??_scale+1)+0,w
	movwf	(?___bmul)
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(scale@scl),w
	movwf	0+(?___awdiv)+02h
	clrf	1+(?___awdiv)+02h
	btfsc	0+(?___awdiv)+02h,7
	decf	1+(?___awdiv)+02h,f
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	012h
	fcall	___bmul
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_scale$6158)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$6158+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$6158+2)
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(?___bmul)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movf	(_scale$6158),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$6158+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$6158+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l4853
	
l10090:	
	goto	l4853
	
l10092:	
	goto	l10100
	line	434
	
l4856:	
	
l10094:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u4821
	goto	u4820
u4821:
	goto	l10100
u4820:
	line	435
	
l10096:	
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(?___bmul)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	(03h)
	movwf	(??_scale+1)+0
	movf	(??_scale+1)+0,w
	movwf	(?___bmul)
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(scale@scl),w
	movwf	0+(?___awdiv)+02h
	clrf	1+(?___awdiv)+02h
	btfsc	0+(?___awdiv)+02h,7
	decf	1+(?___awdiv)+02h,f
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l4853
	
l10098:	
	goto	l4853
	
l4858:	
	goto	l10100
	line	436
	
l4857:	
	
l10100:	
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(?___bmul)
	movf	(scale@scl),w
	fcall	___bmul
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_scale)
	fcall	stringdir
	movwf	(?_scale+1)
	fcall	stringdir
	movwf	(?_scale+2)
	goto	l4853
	
l10102:	
	line	437
	
l4853:	
	return
	opt stack 0
GLOBAL	__end_of_scale
	__end_of_scale:
;; =============== function _scale ends ============

	signat	_scale,4219
	global	_fround
psect	text728,local,class=CODE,delta=2
global __ptext728
__ptext728:

;; *************** function _fround *****************
;; Defined at:
;;		line 406 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  prec            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  prec            1   65[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   50[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awmod
;;		___bmul
;;		___awdiv
;;		___ftmul
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text728
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	406
	global	__size_of_fround
	__size_of_fround	equ	__end_of_fround-_fround
	
_fround:	
	opt	stack 3
; Regs used in _fround: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;fround@prec stored from wreg
	line	409
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(fround@prec)
	
l10042:	
	movlw	(06Eh)
	subwf	(fround@prec),w
	skipc
	goto	u4761
	goto	u4760
u4761:
	goto	l10052
u4760:
	line	410
	
l10044:	
	movlw	(03h)
	movwf	(??_fround+0)+0
	movf	(??_fround+0)+0,w
	movwf	(?___bmul)
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(fround@prec),w
	movwf	(??_fround+1)+0
	clrf	(??_fround+1)+0+1
	movf	0+(??_fround+1)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_fround+1)+0,w
	movwf	1+(?___awmod)+02h
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	(03h)
	movwf	(??_fround+3)+0
	movf	(??_fround+3)+0,w
	movwf	(?___bmul)
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(fround@prec),w
	movwf	(??_fround+4)+0
	clrf	(??_fround+4)+0+1
	movf	0+(??_fround+4)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_fround+4)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	012h
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_fround$6156)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$6156+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$6156+2)
	movlw	(03h)
	movwf	(??_fround+0)+0
	movf	(??_fround+0)+0,w
	movwf	(?___bmul)
	movf	(fround@prec),w
	movwf	(??_fround+1)+0
	clrf	(??_fround+1)+0+1
	movf	0+(??_fround+1)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_fround+1)+0,w
	movwf	1+(?___awmod)+02h
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movf	(_fround$6156),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$6156+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$6156+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_fround$6157)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$6157+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$6157+2)
	
l10046:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$6157),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$6157+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$6157+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l4846
	
l10048:	
	goto	l4846
	
l10050:	
	goto	l10060
	line	411
	
l4845:	
	
l10052:	
	movlw	(0Bh)
	subwf	(fround@prec),w
	skipc
	goto	u4771
	goto	u4770
u4771:
	goto	l10060
u4770:
	line	412
	
l10054:	
	movlw	(03h)
	movwf	(??_fround+0)+0
	movf	(??_fround+0)+0,w
	movwf	(?___bmul)
	movf	(fround@prec),w
	movwf	(??_fround+1)+0
	clrf	(??_fround+1)+0+1
	movf	0+(??_fround+1)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_fround+1)+0,w
	movwf	1+(?___awmod)+02h
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	(03h)
	movwf	(??_fround+3)+0
	movf	(??_fround+3)+0,w
	movwf	(?___bmul)
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(fround@prec),w
	movwf	(??_fround+4)+0
	clrf	(??_fround+4)+0+1
	movf	0+(??_fround+4)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_fround+4)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_fround$6156)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$6156+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$6156+2)
	
l10056:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$6156),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$6156+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$6156+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l4846
	
l10058:	
	goto	l4846
	
l4848:	
	goto	l10060
	line	413
	
l4847:	
	
l10060:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movlw	(03h)
	movwf	(??_fround+0)+0
	movf	(??_fround+0)+0,w
	movwf	(?___bmul)
	movf	(fround@prec),w
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l4846
	
l10062:	
	line	414
	
l4846:	
	return
	opt stack 0
GLOBAL	__end_of_fround
	__end_of_fround:
;; =============== function _fround ends ============

	signat	_fround,4219
	global	_lcd_write
psect	text729,local,class=CODE,delta=2
global __ptext729
__ptext729:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 34 in file "C:\PIC_PROGS\ProyectoMicros\PIC\lcd.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pause
;; This function is called by:
;;		_lcd_clear
;;		_lcd_puts
;;		_lcd_goto
;;		_lcd_init
;;		_lcd_putch
;; This function uses a non-reentrant model
;;
psect	text729
	file	"C:\PIC_PROGS\ProyectoMicros\PIC\lcd.c"
	line	34
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 4
; Regs used in _lcd_write: [wreg+status,2+status,0+pclath+cstack]
;lcd_write@c stored from wreg
	movwf	(lcd_write@c)
	line	35
	
l10028:	
;lcd.c: 35: pause (1);
	movlw	low(01h)
	movwf	(?_pause)
	movlw	high(01h)
	movwf	((?_pause))+1
	fcall	_pause
	line	36
	
l10030:	
;lcd.c: 36: PORTD = ( ( c >> 4 ) & 0x0F );
	movf	(lcd_write@c),w
	movwf	(??_lcd_write+0)+0
	movlw	04h
u4755:
	clrc
	rrf	(??_lcd_write+0)+0,f
	addlw	-1
	skipz
	goto	u4755
	movf	0+(??_lcd_write+0)+0,w
	andlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	37
	
l10032:	
;lcd.c: 37: ((RA1 = 1),(RA1=0));
	bsf	(41/8),(41)&7
	
l10034:	
	bcf	(41/8),(41)&7
	line	38
	
l10036:	
;lcd.c: 38: PORTD = ( c & 0x0F );
	movf	(lcd_write@c),w
	andlw	0Fh
	movwf	(8)	;volatile
	line	39
	
l10038:	
;lcd.c: 39: ((RA1 = 1),(RA1=0));
	bsf	(41/8),(41)&7
	
l10040:	
	bcf	(41/8),(41)&7
	line	41
	
l1905:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	___lltoft
psect	text730,local,class=CODE,delta=2
global __ptext730
__ptext730:

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 36 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4    8[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text730
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lltoft.c"
	line	36
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
	opt	stack 4
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l10018:	
	movlw	(08Eh)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	movwf	(___lltoft@exp)
	line	41
	goto	l10022
	
l6198:	
	line	42
	
l10020:	
	movlw	01h
u4735:
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	addlw	-1
	skipz
	goto	u4735

	line	43
	movlw	(01h)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	addwf	(___lltoft@exp),f
	goto	l10022
	line	44
	
l6197:	
	line	41
	
l10022:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u4741
	goto	u4740
u4741:
	goto	l10020
u4740:
	goto	l10024
	
l6199:	
	line	45
	
l10024:	
	movf	(___lltoft@c),w
	movwf	(?___ftpack)
	movf	(___lltoft@c+1),w
	movwf	(?___ftpack+1)
	movf	(___lltoft@c+2),w
	movwf	(?___ftpack+2)
	movf	(___lltoft@exp),w
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	clrf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lltoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lltoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lltoft+2)
	goto	l6200
	
l10026:	
	line	46
	
l6200:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
;; =============== function ___lltoft ends ============

	signat	___lltoft,4219
	global	___lwtoft
psect	text731,local,class=CODE,delta=2
global __ptext731
__ptext731:

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 29 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text731
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwtoft.c"
	line	29
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
	opt	stack 6
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l10014:	
	movf	(___lwtoft@c),w
	movwf	(?___ftpack)
	movf	(___lwtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___lwtoft+0)+0
	movf	(??___lwtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	clrf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	goto	l6183
	
l10016:	
	line	31
	
l6183:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
;; =============== function ___lwtoft ends ============

	signat	___lwtoft,4219
	global	___ftmul
psect	text732,local,class=CODE,delta=2
global __ptext732
__ptext732:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   21[BANK0 ] float 
;;  f2              3   24[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   32[BANK0 ] unsigned um
;;  sign            1   36[BANK0 ] unsigned char 
;;  cntr            1   35[BANK0 ] unsigned char 
;;  exp             1   31[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   21[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_fround
;;		_scale
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text732
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 3
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l9964:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u4591
	goto	u4590
u4591:
	goto	l9970
u4590:
	line	57
	
l9966:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l6059
	
l9968:	
	goto	l6059
	
l6058:	
	line	58
	
l9970:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u4601
	goto	u4600
u4601:
	goto	l9976
u4600:
	line	59
	
l9972:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l6059
	
l9974:	
	goto	l6059
	
l6060:	
	line	60
	
l9976:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	61
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u4615:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u4610:
	addlw	-1
	skipz
	goto	u4615
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	62
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u4625:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u4620:
	addlw	-1
	skipz
	goto	u4625
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	64
	
l9978:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l9980:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l9982:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l9984:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l9986:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l9988
	line	70
	
l6061:	
	line	71
	
l9988:	
	btfss	(___ftmul@f1),(0)&7
	goto	u4631
	goto	u4630
u4631:
	goto	l9992
u4630:
	line	72
	
l9990:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u4641
	addwf	(___ftmul@f3_as_product+1),f
u4641:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u4642
	addwf	(___ftmul@f3_as_product+2),f
u4642:

	goto	l9992
	
l6062:	
	line	73
	
l9992:	
	movlw	01h
u4655:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u4655

	line	74
	
l9994:	
	movlw	01h
u4665:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u4665
	line	75
	
l9996:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u4671
	goto	u4670
u4671:
	goto	l9988
u4670:
	goto	l9998
	
l6063:	
	line	76
	
l9998:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l10000
	line	77
	
l6064:	
	line	78
	
l10000:	
	btfss	(___ftmul@f1),(0)&7
	goto	u4681
	goto	u4680
u4681:
	goto	l10004
u4680:
	line	79
	
l10002:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u4691
	addwf	(___ftmul@f3_as_product+1),f
u4691:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u4692
	addwf	(___ftmul@f3_as_product+2),f
u4692:

	goto	l10004
	
l6065:	
	line	80
	
l10004:	
	movlw	01h
u4705:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u4705

	line	81
	
l10006:	
	movlw	01h
u4715:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u4715

	line	82
	
l10008:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u4721
	goto	u4720
u4721:
	goto	l10000
u4720:
	goto	l10010
	
l6066:	
	line	83
	
l10010:	
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l6059
	
l10012:	
	line	84
	
l6059:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text733,local,class=CODE,delta=2
global __ptext733
__ptext733:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   37[BANK0 ] float 
;;  f1              3   40[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   48[BANK0 ] float 
;;  sign            1   52[BANK0 ] unsigned char 
;;  exp             1   51[BANK0 ] unsigned char 
;;  cntr            1   47[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   37[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text733
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 6
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l9922:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u4511
	goto	u4510
u4511:
	goto	l9928
u4510:
	line	56
	
l9924:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l6049
	
l9926:	
	goto	l6049
	
l6048:	
	line	57
	
l9928:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u4521
	goto	u4520
u4521:
	goto	l9934
u4520:
	line	58
	
l9930:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l6049
	
l9932:	
	goto	l6049
	
l6050:	
	line	59
	
l9934:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l9936:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l9938:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u4535:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u4530:
	addlw	-1
	skipz
	goto	u4535
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l9940:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u4545:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u4540:
	addlw	-1
	skipz
	goto	u4545
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l9942:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l9944:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l9946:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	l9948
	line	69
	
l6051:	
	line	70
	
l9948:	
	movlw	01h
u4555:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u4555
	line	71
	
l9950:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u4565
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u4565
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u4565:
	skipc
	goto	u4561
	goto	u4560
u4561:
	goto	l9956
u4560:
	line	72
	
l9952:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
l9954:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l9956
	line	74
	
l6052:	
	line	75
	
l9956:	
	movlw	01h
u4575:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u4575
	line	76
	
l9958:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u4581
	goto	u4580
u4581:
	goto	l9948
u4580:
	goto	l9960
	
l6053:	
	line	77
	
l9960:	
	movf	(___ftdiv@f3),w
	movwf	(?___ftpack)
	movf	(___ftdiv@f3+1),w
	movwf	(?___ftpack+1)
	movf	(___ftdiv@f3+2),w
	movwf	(?___ftpack+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l6049
	
l9962:	
	line	78
	
l6049:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	___ftadd
psect	text734,local,class=CODE,delta=2
global __ptext734
__ptext734:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   37[BANK0 ] float 
;;  f2              3   40[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   49[BANK0 ] unsigned char 
;;  exp2            1   48[BANK0 ] unsigned char 
;;  sign            1   47[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   37[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		__doprnt
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text734
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 3
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l9852:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	
l9854:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u4270
	goto	l9860
u4270:
	
l9856:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u4281
	goto	u4280
u4281:
	goto	l9864
u4280:
	
l9858:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u4291
	goto	u4290
u4291:
	goto	l9864
u4290:
	goto	l9860
	
l6006:	
	line	93
	
l9860:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l6007
	
l9862:	
	goto	l6007
	
l6004:	
	line	94
	
l9864:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u4300
	goto	l6010
u4300:
	
l9866:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u4311
	goto	u4310
u4311:
	goto	l9870
u4310:
	
l9868:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u4321
	goto	u4320
u4321:
	goto	l9870
u4320:
	
l6010:	
	line	95
	goto	l6007
	
l6008:	
	line	96
	
l9870:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l9872:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u4331
	goto	u4330
u4331:
	goto	l6011
u4330:
	line	98
	
l9874:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l6011:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u4341
	goto	u4340
u4341:
	goto	l6012
u4340:
	line	100
	
l9876:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l6012:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l9878:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l9880:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u4351
	goto	u4350
u4351:
	goto	l9892
u4350:
	goto	l9882
	line	109
	
l6014:	
	line	110
	
l9882:	
	movlw	01h
u4365:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u4365
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l9884:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u4371
	goto	u4370
u4371:
	goto	l9890
u4370:
	
l9886:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u4381
	goto	u4380
u4381:
	goto	l9882
u4380:
	goto	l9890
	
l6016:	
	goto	l9890
	
l6017:	
	line	113
	goto	l9890
	
l6019:	
	line	114
	
l9888:	
	movlw	01h
u4395:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u4395

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l9890
	line	116
	
l6018:	
	line	113
	
l9890:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u4401
	goto	u4400
u4401:
	goto	l9888
u4400:
	goto	l6021
	
l6020:	
	line	117
	goto	l6021
	
l6013:	
	
l9892:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u4411
	goto	u4410
u4411:
	goto	l6021
u4410:
	goto	l9894
	line	120
	
l6023:	
	line	121
	
l9894:	
	movlw	01h
u4425:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u4425
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l9896:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u4431
	goto	u4430
u4431:
	goto	l9902
u4430:
	
l9898:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u4441
	goto	u4440
u4441:
	goto	l9894
u4440:
	goto	l9902
	
l6025:	
	goto	l9902
	
l6026:	
	line	124
	goto	l9902
	
l6028:	
	line	125
	
l9900:	
	movlw	01h
u4455:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u4455

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l9902
	line	127
	
l6027:	
	line	124
	
l9902:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u4461
	goto	u4460
u4461:
	goto	l9900
u4460:
	goto	l6021
	
l6029:	
	goto	l6021
	line	128
	
l6022:	
	line	129
	
l6021:	
	btfss	(___ftadd@sign),(7)&7
	goto	u4471
	goto	u4470
u4471:
	goto	l9906
u4470:
	line	131
	
l9904:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	goto	l9906
	line	133
	
l6030:	
	line	134
	
l9906:	
	btfss	(___ftadd@sign),(6)&7
	goto	u4481
	goto	u4480
u4481:
	goto	l9910
u4480:
	line	136
	
l9908:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	goto	l9910
	line	138
	
l6031:	
	line	139
	
l9910:	
	clrf	(___ftadd@sign)
	line	140
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u4491
	addwf	(___ftadd@f2+1),f
u4491:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u4492
	addwf	(___ftadd@f2+2),f
u4492:

	line	141
	
l9912:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u4501
	goto	u4500
u4501:
	goto	l9918
u4500:
	line	142
	
l9914:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
l9916:	
	clrf	(___ftadd@sign)
	bsf	status,0
	rlf	(___ftadd@sign),f
	goto	l9918
	line	145
	
l6032:	
	line	146
	
l9918:	
	movf	(___ftadd@f2),w
	movwf	(?___ftpack)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftpack+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftpack+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l6007
	
l9920:	
	line	148
	
l6007:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_pause
psect	text735,local,class=CODE,delta=2
global __ptext735
__ptext735:

;; *************** function _pause *****************
;; Defined at:
;;		line 10 in file "C:\PIC_PROGS\ProyectoMicros\PIC\pause.c"
;; Parameters:    Size  Location     Type
;;  usvalue         2    0[COMMON] unsigned short 
;; Auto vars:     Size  Location     Type
;;  x               2    2[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_msecbase
;; This function is called by:
;;		_main
;;		_lcd_write
;;		_lcd_clear
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text735
	file	"C:\PIC_PROGS\ProyectoMicros\PIC\pause.c"
	line	10
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
	opt	stack 5
; Regs used in _pause: [wreg+status,2+status,0+pclath+cstack]
	line	13
	
l9844:	
;pause.c: 11: unsigned short x;
;pause.c: 13: for (x=0; x<=usvalue; x++)
	clrf	(pause@x)
	clrf	(pause@x+1)
	goto	l9850
	line	14
	
l3789:	
	line	15
	
l9846:	
;pause.c: 14: {
;pause.c: 15: msecbase();
	fcall	_msecbase
	line	13
	
l9848:	
	movlw	low(01h)
	addwf	(pause@x),f
	skipnc
	incf	(pause@x+1),f
	movlw	high(01h)
	addwf	(pause@x+1),f
	goto	l9850
	
l3788:	
	
l9850:	
	movf	(pause@x+1),w
	subwf	(pause@usvalue+1),w
	skipz
	goto	u4265
	movf	(pause@x),w
	subwf	(pause@usvalue),w
u4265:
	skipnc
	goto	u4261
	goto	u4260
u4261:
	goto	l9846
u4260:
	goto	l3791
	
l3790:	
	line	17
	
l3791:	
	return
	opt stack 0
GLOBAL	__end_of_pause
	__end_of_pause:
;; =============== function _pause ends ============

	signat	_pause,4216
	global	___awmod
psect	text736,local,class=CODE,delta=2
global __ptext736
__ptext736:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;; This function uses a non-reentrant model
;;
psect	text736
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 4
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l9778:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u4131
	goto	u4130
u4131:
	goto	l9782
u4130:
	line	10
	
l9780:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l9782
	line	12
	
l6168:	
	line	13
	
l9782:	
	btfss	(___awmod@divisor+1),7
	goto	u4141
	goto	u4140
u4141:
	goto	l9786
u4140:
	line	14
	
l9784:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l9786
	
l6169:	
	line	15
	
l9786:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u4151
	goto	u4150
u4151:
	goto	l9804
u4150:
	line	16
	
l9788:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l9794
	
l6172:	
	line	18
	
l9790:	
	movlw	01h
	
u4165:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u4165
	line	19
	
l9792:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l9794
	line	20
	
l6171:	
	line	17
	
l9794:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u4171
	goto	u4170
u4171:
	goto	l9790
u4170:
	goto	l9796
	
l6173:	
	goto	l9796
	line	21
	
l6174:	
	line	22
	
l9796:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u4185
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u4185:
	skipc
	goto	u4181
	goto	u4180
u4181:
	goto	l9800
u4180:
	line	23
	
l9798:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l9800
	
l6175:	
	line	24
	
l9800:	
	movlw	01h
	
u4195:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u4195
	line	25
	
l9802:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u4201
	goto	u4200
u4201:
	goto	l9796
u4200:
	goto	l9804
	
l6176:	
	goto	l9804
	line	26
	
l6170:	
	line	27
	
l9804:	
	movf	(___awmod@sign),w
	skipz
	goto	u4210
	goto	l9808
u4210:
	line	28
	
l9806:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l9808
	
l6177:	
	line	29
	
l9808:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l6178
	
l9810:	
	line	30
	
l6178:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___lldiv
psect	text737,local,class=CODE,delta=2
global __ptext737
__ptext737:

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] unsigned long 
;;  dividend        4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    9[COMMON] unsigned long 
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        14       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text737
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 5
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l9754:	
	movlw	0
	movwf	(___lldiv@quotient+3)
	movlw	0
	movwf	(___lldiv@quotient+2)
	movlw	0
	movwf	(___lldiv@quotient+1)
	movlw	0
	movwf	(___lldiv@quotient)

	line	10
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u4061
	goto	u4060
u4061:
	goto	l9774
u4060:
	line	11
	
l9756:	
	clrf	(___lldiv@counter)
	bsf	status,0
	rlf	(___lldiv@counter),f
	line	12
	goto	l9760
	
l6134:	
	line	13
	
l9758:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u4075:
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	decfsz	(??___lldiv+0)+0
	goto	u4075
	line	14
	movlw	(01h)
	movwf	(??___lldiv+0)+0
	movf	(??___lldiv+0)+0,w
	addwf	(___lldiv@counter),f
	goto	l9760
	line	15
	
l6133:	
	line	12
	
l9760:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u4081
	goto	u4080
u4081:
	goto	l9758
u4080:
	goto	l9762
	
l6135:	
	goto	l9762
	line	16
	
l6136:	
	line	17
	
l9762:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u4095:
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	decfsz	(??___lldiv+0)+0
	goto	u4095
	line	18
	
l9764:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u4105
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u4105
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u4105
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u4105:
	skipc
	goto	u4101
	goto	u4100
u4101:
	goto	l9770
u4100:
	line	19
	
l9766:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	skipc
	incfsz	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	skipc
	incfsz	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	skipc
	incfsz	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),f
	line	20
	
l9768:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	goto	l9770
	line	21
	
l6137:	
	line	22
	
l9770:	
	movlw	01h
u4115:
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	addlw	-1
	skipz
	goto	u4115

	line	23
	
l9772:	
	movlw	low(01h)
	subwf	(___lldiv@counter),f
	btfss	status,2
	goto	u4121
	goto	u4120
u4121:
	goto	l9762
u4120:
	goto	l9774
	
l6138:	
	goto	l9774
	line	24
	
l6132:	
	line	25
	
l9774:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	goto	l6139
	
l9776:	
	line	26
	
l6139:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___ftge
psect	text738,local,class=CODE,delta=2
global __ptext738
__ptext738:

;; *************** function ___ftge *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[COMMON] float 
;;  ff2             3    3[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:        12       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text738
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 7
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l9734:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u4011
	goto	u4010
u4011:
	goto	l9738
u4010:
	line	7
	
l9736:	
	movlw	0
	movwf	((??___ftge+0)+0)
	movlw	0
	movwf	((??___ftge+0)+0+1)
	movlw	080h
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff1),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff1+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff1+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u4021
	goto	u4022
u4021:
	addwf	(??___ftge+0)+1,f
	
u4022:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u4023
	goto	u4024
u4023:
	addwf	(??___ftge+0)+2,f
	
u4024:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l9738
	
l6127:	
	line	8
	
l9738:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u4031
	goto	u4030
u4031:
	goto	l9742
u4030:
	line	9
	
l9740:	
	movlw	0
	movwf	((??___ftge+0)+0)
	movlw	0
	movwf	((??___ftge+0)+0+1)
	movlw	080h
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff2),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff2+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff2+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u4041
	goto	u4042
u4041:
	addwf	(??___ftge+0)+1,f
	
u4042:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u4043
	goto	u4044
u4043:
	addwf	(??___ftge+0)+2,f
	
u4044:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l9742
	
l6128:	
	line	10
	
l9742:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l9744:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l9746:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u4055
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u4055
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u4055:
	skipnc
	goto	u4051
	goto	u4050
u4051:
	goto	l9750
u4050:
	
l9748:	
	clrc
	
	goto	l6129
	
l9400:	
	
l9750:	
	setc
	
	goto	l6129
	
l9402:	
	goto	l6129
	
l9752:	
	line	13
	
l6129:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftneg
psect	text739,local,class=CODE,delta=2
global __ptext739
__ptext739:

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 16 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text739
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 5
; Regs used in ___ftneg: [wreg]
	line	17
	
l9726:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u4001
	goto	u4000
u4001:
	goto	l9730
u4000:
	line	18
	
l9728:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l9730
	
l6123:	
	line	19
	
l9730:	
	goto	l6124
	
l9732:	
	line	20
	
l6124:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___llmod
psect	text740,local,class=CODE,delta=2
global __ptext740
__ptext740:

;; *************** function ___llmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\llmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[BANK0 ] unsigned long 
;;  dividend        4    4[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text740
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\llmod.c"
	line	5
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
	opt	stack 5
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	8
	
l9706:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u3941
	goto	u3940
u3941:
	goto	l9722
u3940:
	line	9
	
l9708:	
	clrf	(___llmod@counter)
	bsf	status,0
	rlf	(___llmod@counter),f
	line	10
	goto	l9712
	
l6115:	
	line	11
	
l9710:	
	movlw	01h
	movwf	(??___llmod+0)+0
u3955:
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	decfsz	(??___llmod+0)+0
	goto	u3955
	line	12
	movlw	(01h)
	movwf	(??___llmod+0)+0
	movf	(??___llmod+0)+0,w
	addwf	(___llmod@counter),f
	goto	l9712
	line	13
	
l6114:	
	line	10
	
l9712:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u3961
	goto	u3960
u3961:
	goto	l9710
u3960:
	goto	l9714
	
l6116:	
	goto	l9714
	line	14
	
l6117:	
	line	15
	
l9714:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u3975
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u3975
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u3975
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u3975:
	skipc
	goto	u3971
	goto	u3970
u3971:
	goto	l9718
u3970:
	line	16
	
l9716:	
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),f
	movf	(___llmod@divisor+1),w
	skipc
	incfsz	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),f
	movf	(___llmod@divisor+2),w
	skipc
	incfsz	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),f
	movf	(___llmod@divisor+3),w
	skipc
	incfsz	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),f
	goto	l9718
	
l6118:	
	line	17
	
l9718:	
	movlw	01h
u3985:
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	addlw	-1
	skipz
	goto	u3985

	line	18
	
l9720:	
	movlw	low(01h)
	subwf	(___llmod@counter),f
	btfss	status,2
	goto	u3991
	goto	u3990
u3991:
	goto	l9714
u3990:
	goto	l9722
	
l6119:	
	goto	l9722
	line	19
	
l6113:	
	line	20
	
l9722:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	goto	l6120
	
l9724:	
	line	21
	
l6120:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
;; =============== function ___llmod ends ============

	signat	___llmod,8316
	global	___awdiv
psect	text741,local,class=CODE,delta=2
global __ptext741
__ptext741:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[COMMON] int 
;;  dividend        2    9[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    2[BANK0 ] int 
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       4       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text741
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l9666:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u3841
	goto	u3840
u3841:
	goto	l9670
u3840:
	line	11
	
l9668:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l9670
	line	13
	
l6100:	
	line	14
	
l9670:	
	btfss	(___awdiv@dividend+1),7
	goto	u3851
	goto	u3850
u3851:
	goto	l9676
u3850:
	line	15
	
l9672:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l9674:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l9676
	line	17
	
l6101:	
	line	18
	
l9676:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l9678:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3861
	goto	u3860
u3861:
	goto	l9698
u3860:
	line	20
	
l9680:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l9686
	
l6104:	
	line	22
	
l9682:	
	movlw	01h
	
u3875:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3875
	line	23
	
l9684:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l9686
	line	24
	
l6103:	
	line	21
	
l9686:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3881
	goto	u3880
u3881:
	goto	l9682
u3880:
	goto	l9688
	
l6105:	
	goto	l9688
	line	25
	
l6106:	
	line	26
	
l9688:	
	movlw	01h
	
u3895:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3895
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3905
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3905:
	skipc
	goto	u3901
	goto	u3900
u3901:
	goto	l9694
u3900:
	line	28
	
l9690:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l9692:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l9694
	line	30
	
l6107:	
	line	31
	
l9694:	
	movlw	01h
	
u3915:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3915
	line	32
	
l9696:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3921
	goto	u3920
u3921:
	goto	l9688
u3920:
	goto	l9698
	
l6108:	
	goto	l9698
	line	33
	
l6102:	
	line	34
	
l9698:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3930
	goto	l9702
u3930:
	line	35
	
l9700:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l9702
	
l6109:	
	line	36
	
l9702:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l6110
	
l9704:	
	line	37
	
l6110:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text742,local,class=CODE,delta=2
global __ptext742
__ptext742:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    7[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   16[BANK0 ] unsigned long 
;;  exp1            1   20[BANK0 ] unsigned char 
;;  sign1           1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    7[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text742
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 5
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l9602:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u3721
	goto	u3720
u3721:
	goto	l9608
u3720:
	line	50
	
l9604:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l6070
	
l9606:	
	goto	l6070
	
l6069:	
	line	51
	
l9608:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u3735:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u3730:
	addlw	-1
	skipz
	goto	u3735
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l9610:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l9612:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l9614:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l9616:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l9618:	
	btfss	(___fttol@exp1),7
	goto	u3741
	goto	u3740
u3741:
	goto	l9628
u3740:
	line	57
	
l9620:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u3751
	goto	u3750
u3751:
	goto	l9626
u3750:
	line	58
	
l9622:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l6070
	
l9624:	
	goto	l6070
	
l6072:	
	goto	l9626
	line	59
	
l6073:	
	line	60
	
l9626:	
	movlw	01h
u3765:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u3765

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u3771
	goto	u3770
u3771:
	goto	l9626
u3770:
	goto	l9638
	
l6074:	
	line	62
	goto	l9638
	
l6071:	
	line	63
	
l9628:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u3781
	goto	u3780
u3781:
	goto	l9636
u3780:
	line	64
	
l9630:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l6070
	
l9632:	
	goto	l6070
	
l6076:	
	line	65
	goto	l9636
	
l6078:	
	line	66
	
l9634:	
	movlw	01h
	movwf	(??___fttol+0)+0
u3795:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u3795
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l9636
	line	68
	
l6077:	
	line	65
	
l9636:	
	movf	(___fttol@exp1),f
	skipz
	goto	u3801
	goto	u3800
u3801:
	goto	l9634
u3800:
	goto	l9638
	
l6079:	
	goto	l9638
	line	69
	
l6075:	
	line	70
	
l9638:	
	movf	(___fttol@sign1),w
	skipz
	goto	u3810
	goto	l9642
u3810:
	line	71
	
l9640:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l9642
	
l6080:	
	line	72
	
l9642:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l6070
	
l9644:	
	line	73
	
l6070:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text743,local,class=CODE,delta=2
global __ptext743
__ptext743:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lwtoft
;;		___lltoft
;;		___lbtoft
;;		___abtoft
;;		___awtoft
;;		___altoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text743
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 3
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l9572:	
	movf	(___ftpack@exp),w
	skipz
	goto	u3610
	goto	l9576
u3610:
	
l9574:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u3621
	goto	u3620
u3621:
	goto	l9582
u3620:
	goto	l9576
	
l6328:	
	line	65
	
l9576:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l6329
	
l9578:	
	goto	l6329
	
l6326:	
	line	66
	goto	l9582
	
l6331:	
	line	67
	
l9580:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u3635:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u3635

	goto	l9582
	line	69
	
l6330:	
	line	66
	
l9582:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3641
	goto	u3640
u3641:
	goto	l9580
u3640:
	goto	l6333
	
l6332:	
	line	70
	goto	l6333
	
l6334:	
	line	71
	
l9584:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l9586:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l9588:	
	movlw	01h
u3655:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u3655

	line	74
	
l6333:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3661
	goto	u3660
u3661:
	goto	l9584
u3660:
	goto	l9592
	
l6335:	
	line	75
	goto	l9592
	
l6337:	
	line	76
	
l9590:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u3675:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u3675
	goto	l9592
	line	78
	
l6336:	
	line	75
	
l9592:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u3681
	goto	u3680
u3681:
	goto	l9590
u3680:
	
l6338:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u3691
	goto	u3690
u3691:
	goto	l6339
u3690:
	line	80
	
l9594:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l6339:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l9596:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u3705:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u3700:
	addlw	-1
	skipz
	goto	u3705
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l9598:	
	movf	(___ftpack@sign),w
	skipz
	goto	u3710
	goto	l6340
u3710:
	line	84
	
l9600:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l6340:	
	line	85
	line	86
	
l6329:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___wmul
psect	text744,local,class=CODE,delta=2
global __ptext744
__ptext744:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text744
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l9560:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l9562
	line	6
	
l5960:	
	line	7
	
l9562:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u3571
	goto	u3570
u3571:
	goto	l5961
u3570:
	line	8
	
l9564:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l5961:	
	line	9
	movlw	01h
	
u3585:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u3585
	line	10
	
l9566:	
	movlw	01h
	
u3595:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u3595
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u3601
	goto	u3600
u3601:
	goto	l9562
u3600:
	goto	l9568
	
l5962:	
	line	12
	
l9568:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l5963
	
l9570:	
	line	13
	
l5963:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text745,local,class=CODE,delta=2
global __ptext745
__ptext745:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    6[BANK0 ] unsigned char 
;;  product         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;; This function uses a non-reentrant model
;;
psect	text745
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 4
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___bmul@multiplier)
	line	4
	
l9546:	
	clrf	(___bmul@product)
	line	6
	
l5954:	
	line	7
	btfss	(___bmul@multiplier),(0)&7
	goto	u3551
	goto	u3550
u3551:
	goto	l9550
u3550:
	line	8
	
l9548:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l9550
	
l5955:	
	line	9
	
l9550:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	10
	
l9552:	
	clrc
	rrf	(___bmul@multiplier),f

	line	11
	
l9554:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u3561
	goto	u3560
u3561:
	goto	l5954
u3560:
	goto	l9556
	
l5956:	
	line	12
	
l9556:	
	movf	(___bmul@product),w
	goto	l5957
	
l9558:	
	line	13
	
l5957:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	__div_to_l_
psect	text746,local,class=CODE,delta=2
global __ptext746
__ptext746:

;; *************** function __div_to_l_ *****************
;; Defined at:
;;		line 61 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fldivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] unsigned char 
;;  f2              3    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  quot            4    0[BANK0 ] unsigned long 
;;  exp1            1    5[BANK0 ] unsigned char 
;;  cntr            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          8       0       0       0       0
;;      Totals:        14       6       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text746
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fldivl.c"
	line	61
	global	__size_of__div_to_l_
	__size_of__div_to_l_	equ	__end_of__div_to_l_-__div_to_l_
	
__div_to_l_:	
	opt	stack 5
; Regs used in __div_to_l_: [wreg-fsr0h+status,2+status,0]
	line	66
	
l9492:	
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	clrc
	rlf	(??__div_to_l_+0)+2,w
	rlf	(??__div_to_l_+0)+3,w
	movwf	(??__div_to_l_+4)+0
	movf	(??__div_to_l_+4)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__div_to_l_@exp1)
	movf	((__div_to_l_@exp1)),f
	skipz
	goto	u3421
	goto	u3420
u3421:
	goto	l9498
u3420:
	line	67
	
l9494:	
	movlw	0
	movwf	(?__div_to_l_+3)
	movlw	0
	movwf	(?__div_to_l_+2)
	movlw	0
	movwf	(?__div_to_l_+1)
	movlw	0
	movwf	(?__div_to_l_)

	goto	l6247
	
l9496:	
	goto	l6247
	
l6246:	
	line	68
	
l9498:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	clrc
	rlf	(??__div_to_l_+0)+2,w
	rlf	(??__div_to_l_+0)+3,w
	movwf	(??__div_to_l_+4)+0
	movf	(??__div_to_l_+4)+0,w
	movwf	(__div_to_l_@cntr)
	movf	((__div_to_l_@cntr)),f
	skipz
	goto	u3431
	goto	u3430
u3431:
	goto	l9504
u3430:
	line	69
	
l9500:	
	movlw	0
	movwf	(?__div_to_l_+3)
	movlw	0
	movwf	(?__div_to_l_+2)
	movlw	0
	movwf	(?__div_to_l_+1)
	movlw	0
	movwf	(?__div_to_l_)

	goto	l6247
	
l9502:	
	goto	l6247
	
l6248:	
	line	70
	
l9504:	
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	080h
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	line	71
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0
	andwf	indf,f
	line	72
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	080h
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	line	73
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0
	andwf	indf,f
	line	74
	
l9506:	
	movlw	0
	movwf	(__div_to_l_@quot+3)
	movlw	0
	movwf	(__div_to_l_@quot+2)
	movlw	0
	movwf	(__div_to_l_@quot+1)
	movlw	0
	movwf	(__div_to_l_@quot)

	line	75
	
l9508:	
	movlw	low(07Fh)
	subwf	(__div_to_l_@exp1),f
	line	76
	
l9510:	
	movlw	(0A0h)
	addwf	(__div_to_l_@cntr),w
	movwf	(??__div_to_l_+0)+0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	(__div_to_l_@exp1),f
	line	77
	
l9512:	
	movlw	(020h)
	movwf	(??__div_to_l_+0)+0
	movf	(??__div_to_l_+0)+0,w
	movwf	(__div_to_l_@cntr)
	goto	l9514
	line	78
	
l6249:	
	line	79
	
l9514:	
	movlw	01h
	movwf	(??__div_to_l_+0)+0
u3445:
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	decfsz	(??__div_to_l_+0)+0
	goto	u3445
	line	80
	
l9516:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+3
	movf	3+(??__div_to_l_+0)+0,w
	subwf	3+(??__div_to_l_+4)+0,w
	skipz
	goto	u3455
	movf	2+(??__div_to_l_+0)+0,w
	subwf	2+(??__div_to_l_+4)+0,w
	skipz
	goto	u3455
	movf	1+(??__div_to_l_+0)+0,w
	subwf	1+(??__div_to_l_+4)+0,w
	skipz
	goto	u3455
	movf	0+(??__div_to_l_+0)+0,w
	subwf	0+(??__div_to_l_+4)+0,w
u3455:
	skipc
	goto	u3451
	goto	u3450
u3451:
	goto	l6250
u3450:
	line	81
	
l9518:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	indf,f
	incf	fsr0
	movf	1+(??__div_to_l_+0)+0,w
	skipc
	incfsz	1+(??__div_to_l_+0)+0,w
	subwf	indf,f
	incf	fsr0
	movf	2+(??__div_to_l_+0)+0,w
	skipc
	incfsz	2+(??__div_to_l_+0)+0,w
	subwf	indf,f
	incf	fsr0
	movf	3+(??__div_to_l_+0)+0,w
	skipc
	incf	3+(??__div_to_l_+0)+0,w
	subwf	indf,f
	movlw	3
	subwf	fsr0
	line	82
	
l9520:	
	bsf	(__div_to_l_@quot)+(0/8),(0)&7
	line	83
	
l6250:	
	line	84
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movlw	01h
u3465:
	clrc
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	decf	fsr0,f
	decf	fsr0,f
	decf	fsr0,f
	addlw	-1
	skipz
	goto	u3465
	line	85
	
l9522:	
	movlw	low(01h)
	subwf	(__div_to_l_@cntr),f
	btfss	status,2
	goto	u3471
	goto	u3470
u3471:
	goto	l9514
u3470:
	
l6251:	
	line	86
	btfss	(__div_to_l_@exp1),7
	goto	u3481
	goto	u3480
u3481:
	goto	l9532
u3480:
	line	87
	
l9524:	
	movf	(__div_to_l_@exp1),w
	xorlw	80h
	addlw	-((-31)^80h)
	skipnc
	goto	u3491
	goto	u3490
u3491:
	goto	l9530
u3490:
	line	88
	
l9526:	
	movlw	0
	movwf	(?__div_to_l_+3)
	movlw	0
	movwf	(?__div_to_l_+2)
	movlw	0
	movwf	(?__div_to_l_+1)
	movlw	0
	movwf	(?__div_to_l_)

	goto	l6247
	
l9528:	
	goto	l6247
	
l6253:	
	goto	l9530
	line	89
	
l6254:	
	line	90
	
l9530:	
	movlw	01h
u3505:
	clrc
	rrf	(__div_to_l_@quot+3),f
	rrf	(__div_to_l_@quot+2),f
	rrf	(__div_to_l_@quot+1),f
	rrf	(__div_to_l_@quot),f
	addlw	-1
	skipz
	goto	u3505

	line	91
	movlw	(01h)
	movwf	(??__div_to_l_+0)+0
	movf	(??__div_to_l_+0)+0,w
	addwf	(__div_to_l_@exp1),f
	btfss	status,2
	goto	u3511
	goto	u3510
u3511:
	goto	l9530
u3510:
	goto	l9542
	
l6255:	
	line	92
	goto	l9542
	
l6252:	
	line	93
	
l9532:	
	movlw	(020h)
	subwf	(__div_to_l_@exp1),w
	skipc
	goto	u3521
	goto	u3520
u3521:
	goto	l9540
u3520:
	line	94
	
l9534:	
	movlw	0
	movwf	(?__div_to_l_+3)
	movlw	0
	movwf	(?__div_to_l_+2)
	movlw	0
	movwf	(?__div_to_l_+1)
	movlw	0
	movwf	(?__div_to_l_)

	goto	l6247
	
l9536:	
	goto	l6247
	
l6257:	
	line	95
	goto	l9540
	
l6259:	
	line	96
	
l9538:	
	movlw	01h
	movwf	(??__div_to_l_+0)+0
u3535:
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	decfsz	(??__div_to_l_+0)+0
	goto	u3535
	line	97
	movlw	low(01h)
	subwf	(__div_to_l_@exp1),f
	goto	l9540
	line	98
	
l6258:	
	line	95
	
l9540:	
	movf	(__div_to_l_@exp1),f
	skipz
	goto	u3541
	goto	u3540
u3541:
	goto	l9538
u3540:
	goto	l9542
	
l6260:	
	goto	l9542
	line	99
	
l6256:	
	line	100
	
l9542:	
	movf	(__div_to_l_@quot+3),w
	movwf	(?__div_to_l_+3)
	movf	(__div_to_l_@quot+2),w
	movwf	(?__div_to_l_+2)
	movf	(__div_to_l_@quot+1),w
	movwf	(?__div_to_l_+1)
	movf	(__div_to_l_@quot),w
	movwf	(?__div_to_l_)

	goto	l6247
	
l9544:	
	line	101
	
l6247:	
	return
	opt stack 0
GLOBAL	__end_of__div_to_l_
	__end_of__div_to_l_:
;; =============== function __div_to_l_ ends ============

	signat	__div_to_l_,8316
	global	__tdiv_to_l_
psect	text747,local,class=CODE,delta=2
global __ptext747
__ptext747:

;; *************** function __tdiv_to_l_ *****************
;; Defined at:
;;		line 61 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftdivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;;  f2              3    3[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  quot            4    0[BANK0 ] unsigned long 
;;  exp1            1    5[BANK0 ] unsigned char 
;;  cntr            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:        10       6       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text747
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftdivl.c"
	line	61
	global	__size_of__tdiv_to_l_
	__size_of__tdiv_to_l_	equ	__end_of__tdiv_to_l_-__tdiv_to_l_
	
__tdiv_to_l_:	
	opt	stack 5
; Regs used in __tdiv_to_l_: [wreg+status,2+status,0]
	line	66
	
l9438:	
	movf	(__tdiv_to_l_@f1),w
	movwf	((??__tdiv_to_l_+0)+0)
	movf	(__tdiv_to_l_@f1+1),w
	movwf	((??__tdiv_to_l_+0)+0+1)
	movf	(__tdiv_to_l_@f1+2),w
	movwf	((??__tdiv_to_l_+0)+0+2)
	clrc
	rlf	(??__tdiv_to_l_+0)+1,w
	rlf	(??__tdiv_to_l_+0)+2,w
	movwf	(??__tdiv_to_l_+3)+0
	movf	(??__tdiv_to_l_+3)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__tdiv_to_l_@exp1)
	movf	((__tdiv_to_l_@exp1)),f
	skipz
	goto	u3291
	goto	u3290
u3291:
	goto	l9444
u3290:
	line	67
	
l9440:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)
	movlw	0
	movwf	(?__tdiv_to_l_+2)
	movlw	0
	movwf	(?__tdiv_to_l_+1)
	movlw	0
	movwf	(?__tdiv_to_l_)

	goto	l6204
	
l9442:	
	goto	l6204
	
l6203:	
	line	68
	
l9444:	
	movf	(__tdiv_to_l_@f2),w
	movwf	((??__tdiv_to_l_+0)+0)
	movf	(__tdiv_to_l_@f2+1),w
	movwf	((??__tdiv_to_l_+0)+0+1)
	movf	(__tdiv_to_l_@f2+2),w
	movwf	((??__tdiv_to_l_+0)+0+2)
	clrc
	rlf	(??__tdiv_to_l_+0)+1,w
	rlf	(??__tdiv_to_l_+0)+2,w
	movwf	(??__tdiv_to_l_+3)+0
	movf	(??__tdiv_to_l_+3)+0,w
	movwf	(__tdiv_to_l_@cntr)
	movf	((__tdiv_to_l_@cntr)),f
	skipz
	goto	u3301
	goto	u3300
u3301:
	goto	l6205
u3300:
	line	69
	
l9446:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)
	movlw	0
	movwf	(?__tdiv_to_l_+2)
	movlw	0
	movwf	(?__tdiv_to_l_+1)
	movlw	0
	movwf	(?__tdiv_to_l_)

	goto	l6204
	
l9448:	
	goto	l6204
	
l6205:	
	line	70
	bsf	(__tdiv_to_l_@f1)+(15/8),(15)&7
	line	71
	
l9450:	
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f1+2),f
	line	72
	
l9452:	
	bsf	(__tdiv_to_l_@f2)+(15/8),(15)&7
	line	73
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f2+2),f
	line	74
	movlw	0
	movwf	(__tdiv_to_l_@quot+3)
	movlw	0
	movwf	(__tdiv_to_l_@quot+2)
	movlw	0
	movwf	(__tdiv_to_l_@quot+1)
	movlw	0
	movwf	(__tdiv_to_l_@quot)

	line	75
	
l9454:	
	movlw	low(07Fh)
	subwf	(__tdiv_to_l_@exp1),f
	line	76
	
l9456:	
	movlw	(098h)
	addwf	(__tdiv_to_l_@cntr),w
	movwf	(??__tdiv_to_l_+0)+0
	movf	0+(??__tdiv_to_l_+0)+0,w
	subwf	(__tdiv_to_l_@exp1),f
	line	77
	movlw	(018h)
	movwf	(??__tdiv_to_l_+0)+0
	movf	(??__tdiv_to_l_+0)+0,w
	movwf	(__tdiv_to_l_@cntr)
	goto	l9458
	line	78
	
l6206:	
	line	79
	
l9458:	
	movlw	01h
	movwf	(??__tdiv_to_l_+0)+0
u3315:
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	decfsz	(??__tdiv_to_l_+0)+0
	goto	u3315
	line	80
	
l9460:	
	movf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),w
	skipz
	goto	u3325
	movf	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),w
	skipz
	goto	u3325
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),w
u3325:
	skipc
	goto	u3321
	goto	u3320
u3321:
	goto	l9466
u3320:
	line	81
	
l9462:	
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),f
	movf	(__tdiv_to_l_@f2+1),w
	skipc
	incfsz	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),f
	movf	(__tdiv_to_l_@f2+2),w
	skipc
	incf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),f
	line	82
	
l9464:	
	bsf	(__tdiv_to_l_@quot)+(0/8),(0)&7
	goto	l9466
	line	83
	
l6207:	
	line	84
	
l9466:	
	movlw	01h
u3335:
	clrc
	rlf	(__tdiv_to_l_@f1),f
	rlf	(__tdiv_to_l_@f1+1),f
	rlf	(__tdiv_to_l_@f1+2),f
	addlw	-1
	skipz
	goto	u3335
	line	85
	
l9468:	
	movlw	low(01h)
	subwf	(__tdiv_to_l_@cntr),f
	btfss	status,2
	goto	u3341
	goto	u3340
u3341:
	goto	l9458
u3340:
	
l6208:	
	line	86
	btfss	(__tdiv_to_l_@exp1),7
	goto	u3351
	goto	u3350
u3351:
	goto	l9478
u3350:
	line	87
	
l9470:	
	movf	(__tdiv_to_l_@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u3361
	goto	u3360
u3361:
	goto	l9476
u3360:
	line	88
	
l9472:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)
	movlw	0
	movwf	(?__tdiv_to_l_+2)
	movlw	0
	movwf	(?__tdiv_to_l_+1)
	movlw	0
	movwf	(?__tdiv_to_l_)

	goto	l6204
	
l9474:	
	goto	l6204
	
l6210:	
	goto	l9476
	line	89
	
l6211:	
	line	90
	
l9476:	
	movlw	01h
u3375:
	clrc
	rrf	(__tdiv_to_l_@quot+3),f
	rrf	(__tdiv_to_l_@quot+2),f
	rrf	(__tdiv_to_l_@quot+1),f
	rrf	(__tdiv_to_l_@quot),f
	addlw	-1
	skipz
	goto	u3375

	line	91
	movlw	(01h)
	movwf	(??__tdiv_to_l_+0)+0
	movf	(??__tdiv_to_l_+0)+0,w
	addwf	(__tdiv_to_l_@exp1),f
	btfss	status,2
	goto	u3381
	goto	u3380
u3381:
	goto	l9476
u3380:
	goto	l9488
	
l6212:	
	line	92
	goto	l9488
	
l6209:	
	line	93
	
l9478:	
	movlw	(018h)
	subwf	(__tdiv_to_l_@exp1),w
	skipc
	goto	u3391
	goto	u3390
u3391:
	goto	l9486
u3390:
	line	94
	
l9480:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)
	movlw	0
	movwf	(?__tdiv_to_l_+2)
	movlw	0
	movwf	(?__tdiv_to_l_+1)
	movlw	0
	movwf	(?__tdiv_to_l_)

	goto	l6204
	
l9482:	
	goto	l6204
	
l6214:	
	line	95
	goto	l9486
	
l6216:	
	line	96
	
l9484:	
	movlw	01h
	movwf	(??__tdiv_to_l_+0)+0
u3405:
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	decfsz	(??__tdiv_to_l_+0)+0
	goto	u3405
	line	97
	movlw	low(01h)
	subwf	(__tdiv_to_l_@exp1),f
	goto	l9486
	line	98
	
l6215:	
	line	95
	
l9486:	
	movf	(__tdiv_to_l_@exp1),f
	skipz
	goto	u3411
	goto	u3410
u3411:
	goto	l9484
u3410:
	goto	l9488
	
l6217:	
	goto	l9488
	line	99
	
l6213:	
	line	100
	
l9488:	
	movf	(__tdiv_to_l_@quot+3),w
	movwf	(?__tdiv_to_l_+3)
	movf	(__tdiv_to_l_@quot+2),w
	movwf	(?__tdiv_to_l_+2)
	movf	(__tdiv_to_l_@quot+1),w
	movwf	(?__tdiv_to_l_+1)
	movf	(__tdiv_to_l_@quot),w
	movwf	(?__tdiv_to_l_)

	goto	l6204
	
l9490:	
	line	101
	
l6204:	
	return
	opt stack 0
GLOBAL	__end_of__tdiv_to_l_
	__end_of__tdiv_to_l_:
;; =============== function __tdiv_to_l_ ends ============

	signat	__tdiv_to_l_,8316
	global	_isdigit
psect	text748,local,class=CODE,delta=2
global __ptext748
__ptext748:

;; *************** function _isdigit *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text748
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\isdigit.c"
	line	13
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 5
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l9426:	
	clrf	(_isdigit$5676)
	
l9428:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u3271
	goto	u3270
u3271:
	goto	l9434
u3270:
	
l9430:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u3281
	goto	u3280
u3281:
	goto	l9434
u3280:
	
l9432:	
	clrf	(_isdigit$5676)
	bsf	status,0
	rlf	(_isdigit$5676),f
	goto	l9434
	
l5930:	
	
l9434:	
	rrf	(_isdigit$5676),w
	
	goto	l5931
	
l9436:	
	line	15
	
l5931:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_putch
psect	text749,local,class=CODE,delta=2
global __ptext749
__ptext749:

;; *************** function _putch *****************
;; Defined at:
;;		line 8 in file "C:\PIC_PROGS\ProyectoMicros\PIC\usart.c"
;; Parameters:    Size  Location     Type
;;  byte            1   10[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text749
	file	"C:\PIC_PROGS\ProyectoMicros\PIC\usart.c"
	line	8
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 5
; Regs used in _putch: [wreg]
	line	10
	
l9422:	
;usart.c: 10: while(!TXIF)
	goto	l4816
	
l4817:	
	line	11
;usart.c: 11: continue;
	
l4816:	
	line	10
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u3261
	goto	u3260
u3261:
	goto	l4816
u3260:
	goto	l9424
	
l4818:	
	line	12
	
l9424:	
;usart.c: 12: TXREG = byte;
	movf	(putch@byte),w
	movwf	(25)	;volatile
	line	13
	
l4819:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_msecbase
psect	text750,local,class=CODE,delta=2
global __ptext750
__ptext750:

;; *************** function _msecbase *****************
;; Defined at:
;;		line 22 in file "C:\PIC_PROGS\ProyectoMicros\PIC\msecbase.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pause
;; This function uses a non-reentrant model
;;
psect	text750
	file	"C:\PIC_PROGS\ProyectoMicros\PIC\msecbase.c"
	line	22
	global	__size_of_msecbase
	__size_of_msecbase	equ	__end_of_msecbase-_msecbase
	
_msecbase:	
	opt	stack 5
; Regs used in _msecbase: [wreg]
	line	23
	
l9420:	
;msecbase.c: 23: OPTION = 0b00000001;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	24
;msecbase.c: 24: TMR0 = 0xD;
	movlw	(0Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	25
;msecbase.c: 25: while(!T0IF);
	goto	l2758
	
l2759:	
	
l2758:	
	btfss	(90/8),(90)&7
	goto	u3251
	goto	u3250
u3251:
	goto	l2758
u3250:
	
l2760:	
	line	26
;msecbase.c: 26: T0IF = 0;
	bcf	(90/8),(90)&7
	line	27
	
l2761:	
	return
	opt stack 0
GLOBAL	__end_of_msecbase
	__end_of_msecbase:
;; =============== function _msecbase ends ============

	signat	_msecbase,88
	global	_getch
psect	text751,local,class=CODE,delta=2
global __ptext751
__ptext751:

;; *************** function _getch *****************
;; Defined at:
;;		line 16 in file "C:\PIC_PROGS\ProyectoMicros\PIC\usart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text751
	file	"C:\PIC_PROGS\ProyectoMicros\PIC\usart.c"
	line	16
	global	__size_of_getch
	__size_of_getch	equ	__end_of_getch-_getch
	
_getch:	
	opt	stack 7
; Regs used in _getch: [wreg]
	line	18
	
l9410:	
;usart.c: 18: while(!RCIF)
	goto	l4822
	
l4823:	
	line	19
;usart.c: 19: continue;
	
l4822:	
	line	18
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u3241
	goto	u3240
u3241:
	goto	l4822
u3240:
	goto	l9412
	
l4824:	
	line	20
	
l9412:	
;usart.c: 20: return RCREG;
	movf	(26),w	;volatile
	goto	l4825
	
l9414:	
	line	21
	
l4825:	
	return
	opt stack 0
GLOBAL	__end_of_getch
	__end_of_getch:
;; =============== function _getch ends ============

	signat	_getch,89
	global	_init_comms
psect	text752,local,class=CODE,delta=2
global __ptext752
__ptext752:

;; *************** function _init_comms *****************
;; Defined at:
;;		line 24 in file "C:\PIC_PROGS\ProyectoMicros\PIC\usart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text752
	file	"C:\PIC_PROGS\ProyectoMicros\PIC\usart.c"
	line	24
	global	__size_of_init_comms
	__size_of_init_comms	equ	__end_of_init_comms-_init_comms
	
_init_comms:	
	opt	stack 7
; Regs used in _init_comms: [wreg+status,2]
	line	25
	
l9404:	
;usart.c: 25: TRISB5 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1077/8)^080h,(1077)&7
	line	26
;usart.c: 26: TRISB7 = 0;
	bcf	(1079/8)^080h,(1079)&7
	line	27
	
l9406:	
;usart.c: 27: SPBRG = ((int)(4000000L/(64UL * 2400) -1));
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	29
;usart.c: 29: RCSTA = 0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	30
;usart.c: 30: TXSTA = 0x20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	31
	
l9408:	
;usart.c: 31: BAUDCTL = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(391)^0180h	;volatile
	line	32
	
l4828:	
	return
	opt stack 0
GLOBAL	__end_of_init_comms
	__end_of_init_comms:
;; =============== function _init_comms ends ============

	signat	_init_comms,88
	global	fptotal
fptotal equ 2
	file ""
	line	#
psect	functab,class=CODE,delta=2,reloc=256
global __pfunctab
__pfunctab:
	global	fptable
fptable:
	movwf (btemp+1)&07Fh
	movlw high(fptable)
	movwf pclath
	movf (btemp+1)&07Fh,w
	addwf pc
	global	fpbase
fpbase:
	goto fpbase	; Call via a null pointer and you will get stuck here.
	file ""
	line	#
fp__putch:
	ljmp	_putch
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
