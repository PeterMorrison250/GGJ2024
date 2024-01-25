;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _performance_main
	.globl _fade_in
	.globl _IsPerformanceMode
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
G$IsPerformanceMode$0_0$0==.
_IsPerformanceMode::
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	G$main$0$0	= .
	.globl	G$main$0$0
	C$main.c$9$0_0$143	= .
	.globl	C$main.c$9$0_0$143
;./../main.c:9: void main()
;	---------------------------------
; Function main
; ---------------------------------
_main::
	C$main.c$11$1_0$143	= .
	.globl	C$main.c$11$1_0$143
;./../main.c:11: fade_in();
	call	_fade_in
	C$main.c$12$1_0$143	= .
	.globl	C$main.c$12$1_0$143
;./../main.c:12: while (1)
00102$:
	C$main.c$14$2_0$144	= .
	.globl	C$main.c$14$2_0$144
;./../main.c:14: performance_main(IsPerformanceMode);
	ld	a, (#_IsPerformanceMode)
	call	_performance_main
	C$main.c$16$1_0$143	= .
	.globl	C$main.c$16$1_0$143
;./../main.c:16: }
	C$main.c$16$1_0$143	= .
	.globl	C$main.c$16$1_0$143
	XG$main$0$0	= .
	.globl	XG$main$0$0
	jr	00102$
	.area _CODE
	.area _INITIALIZER
Fmain$__xinit_IsPerformanceMode$0_0$0 == .
__xinit__IsPerformanceMode:
	.db #0x01	; 1
	.area _CABS (ABS)
