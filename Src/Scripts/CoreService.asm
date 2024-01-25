;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module CoreService
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fade_in
	.globl _fade_out
	.globl _performant_delay
	.globl _wait_vbl_done
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
	G$performant_delay$0$0	= .
	.globl	G$performant_delay$0$0
	C$CoreService.c$5$0_0$143	= .
	.globl	C$CoreService.c$5$0_0$143
;./../Services/CoreService.c:5: void performant_delay(int numloops){
;	---------------------------------
; Function performant_delay
; ---------------------------------
_performant_delay::
	push	de
	C$CoreService.c$7$2_0$143	= .
	.globl	C$CoreService.c$7$2_0$143
;./../Services/CoreService.c:7: for(ii = 0; ii < numloops; ii++){
	ld	bc, #0x0000
00103$:
	ldhl	sp,	#0
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
	ld	a, b
	ld	d, a
	bit	7, (hl)
	jr	Z, 00122$
	bit	7, d
	jr	NZ, 00123$
	cp	a, a
	jr	00123$
00122$:
	bit	7, d
	jr	Z, 00123$
	scf
00123$:
	jr	NC, 00105$
	C$CoreService.c$8$3_0$144	= .
	.globl	C$CoreService.c$8$3_0$144
;./../Services/CoreService.c:8: wait_vbl_done();
	call	_wait_vbl_done
	C$CoreService.c$7$2_0$143	= .
	.globl	C$CoreService.c$7$2_0$143
;./../Services/CoreService.c:7: for(ii = 0; ii < numloops; ii++){
	inc	bc
	jr	00103$
00105$:
	C$CoreService.c$10$2_0$143	= .
	.globl	C$CoreService.c$10$2_0$143
;./../Services/CoreService.c:10: }
	inc	sp
	inc	sp
	C$CoreService.c$10$2_0$143	= .
	.globl	C$CoreService.c$10$2_0$143
	XG$performant_delay$0$0	= .
	.globl	XG$performant_delay$0$0
	ret
	G$fade_out$0$0	= .
	.globl	G$fade_out$0$0
	C$CoreService.c$12$2_0$146	= .
	.globl	C$CoreService.c$12$2_0$146
;./../Services/CoreService.c:12: void fade_out() {
;	---------------------------------
; Function fade_out
; ---------------------------------
_fade_out::
	C$CoreService.c$13$2_0$146	= .
	.globl	C$CoreService.c$13$2_0$146
;./../Services/CoreService.c:13: for(int8_t i=0;i<4;i++){
	ld	c, #0x00
00108$:
	ld	a, c
	xor	a, #0x80
	sub	a, #0x84
	ret	NC
	C$CoreService.c$14$3_0$147	= .
	.globl	C$CoreService.c$14$3_0$147
;./../Services/CoreService.c:14: switch(i){
	ld	a, c
	or	a, a
	jr	Z, 00101$
	ld	a, c
	dec	a
	jr	Z, 00102$
	ld	a,c
	cp	a,#0x02
	jr	Z, 00103$
	sub	a, #0x03
	jr	Z, 00104$
	jr	00105$
	C$CoreService.c$15$4_0$148	= .
	.globl	C$CoreService.c$15$4_0$148
;./../Services/CoreService.c:15: case 0:
00101$:
	C$CoreService.c$16$4_0$148	= .
	.globl	C$CoreService.c$16$4_0$148
;./../Services/CoreService.c:16: BGP_REG = 0xE4;
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$CoreService.c$17$4_0$148	= .
	.globl	C$CoreService.c$17$4_0$148
;./../Services/CoreService.c:17: break;
	jr	00105$
	C$CoreService.c$18$4_0$148	= .
	.globl	C$CoreService.c$18$4_0$148
;./../Services/CoreService.c:18: case 1:
00102$:
	C$CoreService.c$19$4_0$148	= .
	.globl	C$CoreService.c$19$4_0$148
;./../Services/CoreService.c:19: BGP_REG = 0xF9;
	ld	a, #0xf9
	ldh	(_BGP_REG + 0), a
	C$CoreService.c$20$4_0$148	= .
	.globl	C$CoreService.c$20$4_0$148
;./../Services/CoreService.c:20: break;
	jr	00105$
	C$CoreService.c$21$4_0$148	= .
	.globl	C$CoreService.c$21$4_0$148
;./../Services/CoreService.c:21: case 2:
00103$:
	C$CoreService.c$22$4_0$148	= .
	.globl	C$CoreService.c$22$4_0$148
;./../Services/CoreService.c:22: BGP_REG = 0xFE;
	ld	a, #0xfe
	ldh	(_BGP_REG + 0), a
	C$CoreService.c$23$4_0$148	= .
	.globl	C$CoreService.c$23$4_0$148
;./../Services/CoreService.c:23: break;
	jr	00105$
	C$CoreService.c$24$4_0$148	= .
	.globl	C$CoreService.c$24$4_0$148
;./../Services/CoreService.c:24: case 3:
00104$:
	C$CoreService.c$25$4_0$148	= .
	.globl	C$CoreService.c$25$4_0$148
;./../Services/CoreService.c:25: BGP_REG = 0xFF;	
	ld	a, #0xff
	ldh	(_BGP_REG + 0), a
	C$CoreService.c$27$3_0$147	= .
	.globl	C$CoreService.c$27$3_0$147
;./../Services/CoreService.c:27: }
00105$:
	C$CoreService.c$28$3_0$147	= .
	.globl	C$CoreService.c$28$3_0$147
;./../Services/CoreService.c:28: performant_delay(5);
	push	bc
	ld	de, #0x0005
	call	_performant_delay
	pop	bc
	C$CoreService.c$13$2_0$146	= .
	.globl	C$CoreService.c$13$2_0$146
;./../Services/CoreService.c:13: for(int8_t i=0;i<4;i++){
	inc	c
	C$CoreService.c$30$2_0$146	= .
	.globl	C$CoreService.c$30$2_0$146
;./../Services/CoreService.c:30: }
	C$CoreService.c$30$2_0$146	= .
	.globl	C$CoreService.c$30$2_0$146
	XG$fade_out$0$0	= .
	.globl	XG$fade_out$0$0
	jr	00108$
	G$fade_in$0$0	= .
	.globl	G$fade_in$0$0
	C$CoreService.c$32$2_0$150	= .
	.globl	C$CoreService.c$32$2_0$150
;./../Services/CoreService.c:32: void fade_in() {
;	---------------------------------
; Function fade_in
; ---------------------------------
_fade_in::
	C$CoreService.c$33$2_0$150	= .
	.globl	C$CoreService.c$33$2_0$150
;./../Services/CoreService.c:33: for(int8_t i=0;i<3;i++){
	ld	c, #0x00
00107$:
	ld	a, c
	xor	a, #0x80
	sub	a, #0x83
	ret	NC
	C$CoreService.c$34$3_0$151	= .
	.globl	C$CoreService.c$34$3_0$151
;./../Services/CoreService.c:34: switch(i){
	ld	a, c
	or	a, a
	jr	Z, 00101$
	ld	a, c
	dec	a
	jr	Z, 00102$
	ld	a, c
	sub	a, #0x02
	jr	Z, 00103$
	jr	00104$
	C$CoreService.c$35$4_0$152	= .
	.globl	C$CoreService.c$35$4_0$152
;./../Services/CoreService.c:35: case 0:
00101$:
	C$CoreService.c$36$4_0$152	= .
	.globl	C$CoreService.c$36$4_0$152
;./../Services/CoreService.c:36: BGP_REG = 0xFE;
	ld	a, #0xfe
	ldh	(_BGP_REG + 0), a
	C$CoreService.c$37$4_0$152	= .
	.globl	C$CoreService.c$37$4_0$152
;./../Services/CoreService.c:37: break;
	jr	00104$
	C$CoreService.c$38$4_0$152	= .
	.globl	C$CoreService.c$38$4_0$152
;./../Services/CoreService.c:38: case 1:
00102$:
	C$CoreService.c$39$4_0$152	= .
	.globl	C$CoreService.c$39$4_0$152
;./../Services/CoreService.c:39: BGP_REG = 0xF9;
	ld	a, #0xf9
	ldh	(_BGP_REG + 0), a
	C$CoreService.c$40$4_0$152	= .
	.globl	C$CoreService.c$40$4_0$152
;./../Services/CoreService.c:40: break;
	jr	00104$
	C$CoreService.c$41$4_0$152	= .
	.globl	C$CoreService.c$41$4_0$152
;./../Services/CoreService.c:41: case 2:
00103$:
	C$CoreService.c$42$4_0$152	= .
	.globl	C$CoreService.c$42$4_0$152
;./../Services/CoreService.c:42: BGP_REG = 0xE4;
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$CoreService.c$44$3_0$151	= .
	.globl	C$CoreService.c$44$3_0$151
;./../Services/CoreService.c:44: }
00104$:
	C$CoreService.c$45$3_0$151	= .
	.globl	C$CoreService.c$45$3_0$151
;./../Services/CoreService.c:45: performant_delay(5);
	push	bc
	ld	de, #0x0005
	call	_performant_delay
	pop	bc
	C$CoreService.c$33$2_0$150	= .
	.globl	C$CoreService.c$33$2_0$150
;./../Services/CoreService.c:33: for(int8_t i=0;i<3;i++){
	inc	c
	C$CoreService.c$47$2_0$150	= .
	.globl	C$CoreService.c$47$2_0$150
;./../Services/CoreService.c:47: }
	C$CoreService.c$47$2_0$150	= .
	.globl	C$CoreService.c$47$2_0$150
	XG$fade_in$0$0	= .
	.globl	XG$fade_in$0$0
	jr	00107$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
