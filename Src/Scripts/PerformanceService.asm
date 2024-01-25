;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14228 (MINGW64)
;--------------------------------------------------------
	.module PerformanceService
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _performance_main
	.globl _init_performance
	.globl _init_performance_bkg
	.globl _perform
	.globl _hide_crowd_reaction
	.globl _crowd_reaction
	.globl _animate_pointer
	.globl _init_sprites
	.globl _init_pointer
	.globl _init_jester
	.globl _performant_delay
	.globl _set_sprite_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _joypad
	.globl _JesterTiles
	.globl _PerformanceBkgTileMap
	.globl _PerformanceBkgTiles
	.globl _JesterMetasprite
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
G$PerformanceBkgTiles$0_0$0==.
_PerformanceBkgTiles::
	.ds 1936
G$PerformanceBkgTileMap$0_0$0==.
_PerformanceBkgTileMap::
	.ds 360
G$JesterTiles$0_0$0==.
_JesterTiles::
	.ds 544
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
	G$init_jester$0$0	= .
	.globl	G$init_jester$0$0
	C$PerformanceService.c$50$0_0$170	= .
	.globl	C$PerformanceService.c$50$0_0$170
;./../Services/PerformanceService.c:50: void init_jester(uint8_t x, uint8_t y) {
;	---------------------------------
; Function init_jester
; ---------------------------------
_init_jester::
	ld	c, a
;./../Services/PerformanceService.c:51: move_metasprite_ex(JesterMetasprite, 1, 0, 0, x, y);
;d:\dev\gameboy\tools\gbdk\include\gb\metasprites.h:151: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_JesterMetasprite)
	inc	hl
	ld	(hl), #>(_JesterMetasprite)
;d:\dev\gameboy\tools\gbdk\include\gb\metasprites.h:152: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x01
;d:\dev\gameboy\tools\gbdk\include\gb\metasprites.h:153: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;d:\dev\gameboy\tools\gbdk\include\gb\metasprites.h:154: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	d, e
	xor	a, a
	or	a, c
	ld	e, a
	xor	a, a
	call	___move_metasprite
	C$PerformanceService.c$52$1_0$170	= .
	.globl	C$PerformanceService.c$52$1_0$170
;./../Services/PerformanceService.c:52: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
	C$PerformanceService.c$53$1_0$170	= .
	.globl	C$PerformanceService.c$53$1_0$170
;./../Services/PerformanceService.c:53: }
	C$PerformanceService.c$53$1_0$170	= .
	.globl	C$PerformanceService.c$53$1_0$170
	XG$init_jester$0$0	= .
	.globl	XG$init_jester$0$0
	ret
G$JesterMetasprite$0_0$0 == .
_JesterMetasprite:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x08	;  8
	.db #0xe8	; -24
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x08	;  8
	.db #0xe8	; -24
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0b	; 11
	.db #0x00	; 0
	.db #0x08	;  8
	.db #0xe0	; -32
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0d	; 13
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x08	;  8
	.db #0xe8	; -24
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x13	; 19
	.db #0x00	; 0
	.db #0x08	;  8
	.db #0xf0	; -16
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x16	; 22
	.db #0x00	; 0
	.db #0x08	;  8
	.db #0xf0	; -16
	.db #0x17	; 23
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x19	; 25
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x1a	; 26
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
	G$init_pointer$0$0	= .
	.globl	G$init_pointer$0$0
	C$PerformanceService.c$55$1_0$175	= .
	.globl	C$PerformanceService.c$55$1_0$175
;./../Services/PerformanceService.c:55: void init_pointer(uint8_t score) {
;	---------------------------------
; Function init_pointer
; ---------------------------------
_init_pointer::
	ld	c, a
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 110)
	ld	(hl), #0x1c
;./../Services/PerformanceService.c:57: move_sprite(27, 84 + (score * 8), 136);
	ld	a, c
	add	a, a
	add	a, a
	add	a, a
	add	a, #0x54
	ld	c, a
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 108)
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	a, #0x88
	ld	(hl+), a
	ld	(hl), c
	C$PerformanceService.c$57$3_0$175	= .
	.globl	C$PerformanceService.c$57$3_0$175
;./../Services/PerformanceService.c:57: move_sprite(27, 84 + (score * 8), 136);
	C$PerformanceService.c$58$3_0$175	= .
	.globl	C$PerformanceService.c$58$3_0$175
;./../Services/PerformanceService.c:58: }
	C$PerformanceService.c$58$3_0$175	= .
	.globl	C$PerformanceService.c$58$3_0$175
	XG$init_pointer$0$0	= .
	.globl	XG$init_pointer$0$0
	ret
	G$init_sprites$0$0	= .
	.globl	G$init_sprites$0$0
	C$PerformanceService.c$60$3_0$182	= .
	.globl	C$PerformanceService.c$60$3_0$182
;./../Services/PerformanceService.c:60: void init_sprites() {
;	---------------------------------
; Function init_sprites
; ---------------------------------
_init_sprites::
	C$PerformanceService.c$61$1_0$182	= .
	.globl	C$PerformanceService.c$61$1_0$182
;./../Services/PerformanceService.c:61: set_sprite_data(0, 34, JesterTiles); 
	ld	de, #_JesterTiles
	push	de
	ld	hl, #0x2200
	push	hl
	call	_set_sprite_data
	add	sp, #4
	C$PerformanceService.c$62$1_0$182	= .
	.globl	C$PerformanceService.c$62$1_0$182
;./../Services/PerformanceService.c:62: init_jester(75, 40);
	ld	e, #0x28
	ld	a, #0x4b
	call	_init_jester
	C$PerformanceService.c$63$1_0$182	= .
	.globl	C$PerformanceService.c$63$1_0$182
;./../Services/PerformanceService.c:63: init_pointer(0);
	xor	a, a
	C$PerformanceService.c$64$1_0$182	= .
	.globl	C$PerformanceService.c$64$1_0$182
;./../Services/PerformanceService.c:64: }
	C$PerformanceService.c$64$1_0$182	= .
	.globl	C$PerformanceService.c$64$1_0$182
	XG$init_sprites$0$0	= .
	.globl	XG$init_sprites$0$0
	jp	_init_pointer
	G$animate_pointer$0$0	= .
	.globl	G$animate_pointer$0$0
	C$PerformanceService.c$66$1_0$184	= .
	.globl	C$PerformanceService.c$66$1_0$184
;./../Services/PerformanceService.c:66: void animate_pointer(uint8_t currentScore, uint8_t newScore)
;	---------------------------------
; Function animate_pointer
; ---------------------------------
_animate_pointer::
	C$PerformanceService.c$68$1_0$184	= .
	.globl	C$PerformanceService.c$68$1_0$184
;./../Services/PerformanceService.c:68: if (currentScore < newScore)
	ld	d, a
	sub	a, e
	jr	NC, 00105$
	C$PerformanceService.c$70$1_0$184	= .
	.globl	C$PerformanceService.c$70$1_0$184
;./../Services/PerformanceService.c:70: while (currentScore < newScore)
00101$:
	ld	a, d
	sub	a, e
	ret	NC
	C$PerformanceService.c$72$3_0$186	= .
	.globl	C$PerformanceService.c$72$3_0$186
;./../Services/PerformanceService.c:72: currentScore++;
	inc	d
;./../Services/PerformanceService.c:73: move_sprite(35, 84 + (currentScore * 8), 136);
	ld	a, d
	add	a, a
	add	a, a
	add	a, a
	add	a, #0x54
	ld	c, a
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 140)
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	a, #0x88
	ld	(hl+), a
	ld	(hl), c
	C$PerformanceService.c$74$3_0$186	= .
	.globl	C$PerformanceService.c$74$3_0$186
;./../Services/PerformanceService.c:74: performant_delay(20);
	push	de
	ld	de, #0x0014
	call	_performant_delay
	pop	de
	C$PerformanceService.c$76$2_0$185	= .
	.globl	C$PerformanceService.c$76$2_0$185
;./../Services/PerformanceService.c:76: return;
	jr	00101$
00105$:
	C$PerformanceService.c$79$1_0$184	= .
	.globl	C$PerformanceService.c$79$1_0$184
;./../Services/PerformanceService.c:79: if (currentScore > newScore)
	ld	a, e
	sub	a, d
	jr	NC, 00110$
	C$PerformanceService.c$81$1_0$184	= .
	.globl	C$PerformanceService.c$81$1_0$184
;./../Services/PerformanceService.c:81: while (currentScore > newScore)
00106$:
	ld	a, e
	sub	a, d
	ret	NC
	C$PerformanceService.c$83$3_0$188	= .
	.globl	C$PerformanceService.c$83$3_0$188
;./../Services/PerformanceService.c:83: currentScore--;
	dec	d
;./../Services/PerformanceService.c:84: move_sprite(35, 84 + (currentScore * 8), 136);
	ld	a, d
	add	a, a
	add	a, a
	add	a, a
	add	a, #0x54
	ld	c, a
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 140)
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	a, #0x88
	ld	(hl+), a
	ld	(hl), c
	C$PerformanceService.c$85$3_0$188	= .
	.globl	C$PerformanceService.c$85$3_0$188
;./../Services/PerformanceService.c:85: performant_delay(20);
	push	de
	ld	de, #0x0014
	call	_performant_delay
	pop	de
	C$PerformanceService.c$87$2_0$187	= .
	.globl	C$PerformanceService.c$87$2_0$187
;./../Services/PerformanceService.c:87: return;
	jr	00106$
00110$:
	C$PerformanceService.c$90$1_0$184	= .
	.globl	C$PerformanceService.c$90$1_0$184
;./../Services/PerformanceService.c:90: performant_delay(20);
	ld	de, #0x0014
	C$PerformanceService.c$91$1_0$184	= .
	.globl	C$PerformanceService.c$91$1_0$184
;./../Services/PerformanceService.c:91: return;
	C$PerformanceService.c$93$1_0$184	= .
	.globl	C$PerformanceService.c$93$1_0$184
;./../Services/PerformanceService.c:93: }
	C$PerformanceService.c$93$1_0$184	= .
	.globl	C$PerformanceService.c$93$1_0$184
	XG$animate_pointer$0$0	= .
	.globl	XG$animate_pointer$0$0
	jp	_performant_delay
	G$crowd_reaction$0$0	= .
	.globl	G$crowd_reaction$0$0
	C$PerformanceService.c$95$1_0$196	= .
	.globl	C$PerformanceService.c$95$1_0$196
;./../Services/PerformanceService.c:95: void crowd_reaction(uint8_t score)
;	---------------------------------
; Function crowd_reaction
; ---------------------------------
_crowd_reaction::
	ld	c, a
;./../Services/PerformanceService.c:98: move_metasprite_ex(JesterMetasprite, 32, 0, 28, 110, 40);
;d:\dev\gameboy\tools\gbdk\include\gb\metasprites.h:151: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_JesterMetasprite)
	inc	hl
	ld	(hl), #>(_JesterMetasprite)
;d:\dev\gameboy\tools\gbdk\include\gb\metasprites.h:152: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x20
;d:\dev\gameboy\tools\gbdk\include\gb\metasprites.h:153: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;d:\dev\gameboy\tools\gbdk\include\gb\metasprites.h:154: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	push	bc
	ld	de, #0x286e
	ld	a, #0x1c
	call	___move_metasprite
	pop	bc
	C$PerformanceService.c$100$1_0$196	= .
	.globl	C$PerformanceService.c$100$1_0$196
;./../Services/PerformanceService.c:100: if (score < 4) 
	ld	a, c
	sub	a, #0x04
	jr	NC, 00102$
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 146)
	ld	(hl), #0x1f
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 144)
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	(hl), #0x73
	inc	hl
	ld	(hl), #0x1e
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 150)
	ld	(hl), #0x1f
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 148)
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	(hl), #0x73
	inc	hl
	ld	(hl), #0x3c
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 154)
	ld	(hl), #0x1f
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 152)
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	(hl), #0x73
	inc	hl
	ld	(hl), #0x6e
	C$PerformanceService.c$108$2_0$197	= .
	.globl	C$PerformanceService.c$108$2_0$197
;./../Services/PerformanceService.c:108: return;
	ret
00102$:
	C$PerformanceService.c$110$1_0$196	= .
	.globl	C$PerformanceService.c$110$1_0$196
;./../Services/PerformanceService.c:110: if (score > 5) 
	ld	a, #0x05
	sub	a, c
	jr	NC, 00104$
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 146)
	ld	(hl), #0x1d
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 144)
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	(hl), #0x73
	inc	hl
	ld	(hl), #0x1e
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 150)
	ld	(hl), #0x1d
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 148)
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	(hl), #0x73
	inc	hl
	ld	(hl), #0x3c
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 154)
	ld	(hl), #0x1d
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 152)
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	(hl), #0x73
	inc	hl
	ld	(hl), #0x6e
	C$PerformanceService.c$118$2_0$198	= .
	.globl	C$PerformanceService.c$118$2_0$198
;./../Services/PerformanceService.c:118: return;
	ret
00104$:
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 146)
	ld	(hl), #0x1e
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 144)
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	(hl), #0x73
	inc	hl
	ld	(hl), #0x1e
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 150)
	ld	(hl), #0x1e
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 148)
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	(hl), #0x73
	inc	hl
	ld	(hl), #0x3c
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1804: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 154)
	ld	(hl), #0x1e
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 152)
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	ld	(hl), #0x73
	inc	hl
	ld	(hl), #0x6e
	C$PerformanceService.c$126$1_0$196	= .
	.globl	C$PerformanceService.c$126$1_0$196
;./../Services/PerformanceService.c:126: return;
	C$PerformanceService.c$127$1_0$196	= .
	.globl	C$PerformanceService.c$127$1_0$196
;./../Services/PerformanceService.c:127: }
	C$PerformanceService.c$127$1_0$196	= .
	.globl	C$PerformanceService.c$127$1_0$196
	XG$crowd_reaction$0$0	= .
	.globl	XG$crowd_reaction$0$0
	ret
	G$hide_crowd_reaction$0$0	= .
	.globl	G$hide_crowd_reaction$0$0
	C$PerformanceService.c$129$1_0$256	= .
	.globl	C$PerformanceService.c$129$1_0$256
;./../Services/PerformanceService.c:129: void hide_crowd_reaction()
;	---------------------------------
; Function hide_crowd_reaction
; ---------------------------------
_hide_crowd_reaction::
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM+144
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	xor	a, a
	ld	(bc), a
	inc	bc
	xor	a, a
	ld	(bc), a
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM+148
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	xor	a, a
	ld	(bc), a
	inc	bc
	xor	a, a
	ld	(bc), a
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1877: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM+152
;d:\dev\gameboy\tools\gbdk\include\gb\gb.h:1878: itm->y=y, itm->x=x;
	xor	a, a
	ld	(bc), a
	inc	bc
	xor	a, a
	ld	(bc), a
;./../Services/PerformanceService.c:134: move_metasprite_ex(JesterMetasprite, 32, 0, 28, 0, 0);
;d:\dev\gameboy\tools\gbdk\include\gb\metasprites.h:151: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), #<(_JesterMetasprite)
	inc	hl
	ld	(hl), #>(_JesterMetasprite)
;d:\dev\gameboy\tools\gbdk\include\gb\metasprites.h:152: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x20
;d:\dev\gameboy\tools\gbdk\include\gb\metasprites.h:153: __current_base_prop = base_prop;
	ld	hl, #___current_base_prop
;d:\dev\gameboy\tools\gbdk\include\gb\metasprites.h:154: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x0000
	ld	(hl), e
	ld	a, #0x1c
	C$PerformanceService.c$134$3_0$256	= .
	.globl	C$PerformanceService.c$134$3_0$256
;./../Services/PerformanceService.c:134: move_metasprite_ex(JesterMetasprite, 32, 0, 28, 0, 0);
	C$PerformanceService.c$135$3_0$256	= .
	.globl	C$PerformanceService.c$135$3_0$256
;./../Services/PerformanceService.c:135: }
	C$PerformanceService.c$135$3_0$256	= .
	.globl	C$PerformanceService.c$135$3_0$256
	XG$hide_crowd_reaction$0$0	= .
	.globl	XG$hide_crowd_reaction$0$0
	jp	___move_metasprite
	G$perform$0$0	= .
	.globl	G$perform$0$0
	C$PerformanceService.c$137$3_0$270	= .
	.globl	C$PerformanceService.c$137$3_0$270
;./../Services/PerformanceService.c:137: void perform(struct Performance* performance)
;	---------------------------------
; Function perform
; ---------------------------------
_perform::
	C$PerformanceService.c$141$1_0$270	= .
	.globl	C$PerformanceService.c$141$1_0$270
;./../Services/PerformanceService.c:141: animate_pointer(performance->CurrentScore, newScore);
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	ld	c, (hl)
	push	hl
	ld	e, #0x05
	ld	a, c
	call	_animate_pointer
	pop	hl
	C$PerformanceService.c$142$1_0$270	= .
	.globl	C$PerformanceService.c$142$1_0$270
;./../Services/PerformanceService.c:142: performance->CurrentScore = newScore;
	ld	(hl), #0x05
	C$PerformanceService.c$144$1_0$270	= .
	.globl	C$PerformanceService.c$144$1_0$270
;./../Services/PerformanceService.c:144: }
	C$PerformanceService.c$144$1_0$270	= .
	.globl	C$PerformanceService.c$144$1_0$270
	XG$perform$0$0	= .
	.globl	XG$perform$0$0
	ret
	G$init_performance_bkg$0$0	= .
	.globl	G$init_performance_bkg$0$0
	C$PerformanceService.c$146$1_0$271	= .
	.globl	C$PerformanceService.c$146$1_0$271
;./../Services/PerformanceService.c:146: void init_performance_bkg() {
;	---------------------------------
; Function init_performance_bkg
; ---------------------------------
_init_performance_bkg::
	C$PerformanceService.c$147$1_0$271	= .
	.globl	C$PerformanceService.c$147$1_0$271
;./../Services/PerformanceService.c:147: set_bkg_data(0, 121, PerformanceBkgTiles);
	ld	de, #_PerformanceBkgTiles
	push	de
	ld	hl, #0x7900
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$PerformanceService.c$148$1_0$271	= .
	.globl	C$PerformanceService.c$148$1_0$271
;./../Services/PerformanceService.c:148: set_bkg_tiles(0, 0, 20, 18, PerformanceBkgTileMap);
	ld	de, #_PerformanceBkgTileMap
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$PerformanceService.c$149$1_0$271	= .
	.globl	C$PerformanceService.c$149$1_0$271
;./../Services/PerformanceService.c:149: }
	C$PerformanceService.c$149$1_0$271	= .
	.globl	C$PerformanceService.c$149$1_0$271
	XG$init_performance_bkg$0$0	= .
	.globl	XG$init_performance_bkg$0$0
	ret
	G$init_performance$0$0	= .
	.globl	G$init_performance$0$0
	C$PerformanceService.c$151$1_0$273	= .
	.globl	C$PerformanceService.c$151$1_0$273
;./../Services/PerformanceService.c:151: void init_performance(struct Performance* performance)
;	---------------------------------
; Function init_performance
; ---------------------------------
_init_performance::
	C$PerformanceService.c$153$1_0$273	= .
	.globl	C$PerformanceService.c$153$1_0$273
;./../Services/PerformanceService.c:153: init_performance_bkg();
	push	de
	call	_init_performance_bkg
	call	_init_sprites
	pop	de
	C$PerformanceService.c$156$1_0$273	= .
	.globl	C$PerformanceService.c$156$1_0$273
;./../Services/PerformanceService.c:156: performance->IsAnimating = FALSE;
	xor	a, a
	ld	(de), a
	C$PerformanceService.c$157$1_0$273	= .
	.globl	C$PerformanceService.c$157$1_0$273
;./../Services/PerformanceService.c:157: performance->CurrentScore = 0;
	inc	de
	xor	a, a
	ld	(de), a
	C$PerformanceService.c$159$1_0$273	= .
	.globl	C$PerformanceService.c$159$1_0$273
;./../Services/PerformanceService.c:159: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
	C$PerformanceService.c$160$1_0$273	= .
	.globl	C$PerformanceService.c$160$1_0$273
;./../Services/PerformanceService.c:160: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$PerformanceService.c$161$1_0$273	= .
	.globl	C$PerformanceService.c$161$1_0$273
;./../Services/PerformanceService.c:161: }
	C$PerformanceService.c$161$1_0$273	= .
	.globl	C$PerformanceService.c$161$1_0$273
	XG$init_performance$0$0	= .
	.globl	XG$init_performance$0$0
	ret
	G$performance_main$0$0	= .
	.globl	G$performance_main$0$0
	C$PerformanceService.c$163$1_0$275	= .
	.globl	C$PerformanceService.c$163$1_0$275
;./../Services/PerformanceService.c:163: void performance_main(UBYTE IsPerformanceMode)
;	---------------------------------
; Function performance_main
; ---------------------------------
_performance_main::
	dec	sp
	dec	sp
	C$PerformanceService.c$165$1_0$275	= .
	.globl	C$PerformanceService.c$165$1_0$275
;./../Services/PerformanceService.c:165: if (IsPerformanceMode == FALSE)
	ld	c, a
	or	a, a
	C$PerformanceService.c$167$2_0$276	= .
	.globl	C$PerformanceService.c$167$2_0$276
;./../Services/PerformanceService.c:167: return;
	jr	Z, 00108$
	C$PerformanceService.c$171$1_1$277	= .
	.globl	C$PerformanceService.c$171$1_1$277
;./../Services/PerformanceService.c:171: init_performance(&performance);
	push	bc
	ld	hl, #2
	add	hl, sp
	ld	e, l
	ld	d, h
	call	_init_performance
	pop	bc
	C$PerformanceService.c$173$1_1$277	= .
	.globl	C$PerformanceService.c$173$1_1$277
;./../Services/PerformanceService.c:173: while (IsPerformanceMode == TRUE) 
	dec	c
	ld	a, #0x01
	jr	Z, 00139$
	xor	a, a
00139$:
	ld	c, a
00105$:
	ld	a, c
	or	a, a
	jr	Z, 00108$
	C$PerformanceService.c$175$2_1$278	= .
	.globl	C$PerformanceService.c$175$2_1$278
;./../Services/PerformanceService.c:175: switch (joypad())
	call	_joypad
	sub	a, #0x10
	jr	NZ, 00105$
	C$PerformanceService.c$178$3_1$279	= .
	.globl	C$PerformanceService.c$178$3_1$279
;./../Services/PerformanceService.c:178: perform(&performance);
	push	bc
	ld	hl, #2
	add	hl, sp
	ld	e, l
	ld	d, h
	call	_perform
	pop	bc
	C$PerformanceService.c$180$1_1$277	= .
	.globl	C$PerformanceService.c$180$1_1$277
;./../Services/PerformanceService.c:180: }
	jr	00105$
00108$:
	C$PerformanceService.c$182$1_1$275	= .
	.globl	C$PerformanceService.c$182$1_1$275
;./../Services/PerformanceService.c:182: }
	inc	sp
	inc	sp
	C$PerformanceService.c$182$1_1$275	= .
	.globl	C$PerformanceService.c$182$1_1$275
	XG$performance_main$0$0	= .
	.globl	XG$performance_main$0$0
	ret
	.area _CODE
	.area _INITIALIZER
FPerformanceService$__xinit_PerformanceBkgTiles$0_0$0 == .
__xinit__PerformanceBkgTiles:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xde	; 222
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbe	; 190
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0x7d	; 125
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xde	; 222
	.db #0xff	; 255
	.db #0xde	; 222
	.db #0xff	; 255
	.db #0xbe	; 190
	.db #0xff	; 255
	.db #0xbd	; 189
	.db #0xff	; 255
	.db #0xbd	; 189
	.db #0xff	; 255
	.db #0x7b	; 123
	.db #0xff	; 255
	.db #0x7b	; 123
	.db #0xff	; 255
	.db #0x77	; 119	'w'
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xde	; 222
	.db #0xff	; 255
	.db #0xdd	; 221
	.db #0xff	; 255
	.db #0xdd	; 221
	.db #0xff	; 255
	.db #0xdd	; 221
	.db #0xff	; 255
	.db #0xdb	; 219
	.db #0xff	; 255
	.db #0x7b	; 123
	.db #0xff	; 255
	.db #0x9f	; 159
	.db #0xff	; 255
	.db #0xe0	; 224
	.db #0xff	; 255
	.db #0xee	; 238
	.db #0xff	; 255
	.db #0xdd	; 221
	.db #0xff	; 255
	.db #0xbb	; 187
	.db #0xff	; 255
	.db #0xb7	; 183
	.db #0xff	; 255
	.db #0x6f	; 111	'o'
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0x2f	; 47
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xe0	; 224
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xbb	; 187
	.db #0xff	; 255
	.db #0xbb	; 187
	.db #0xff	; 255
	.db #0xbd	; 189
	.db #0xff	; 255
	.db #0xbd	; 189
	.db #0xff	; 255
	.db #0x2f	; 47
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xb7	; 183
	.db #0xff	; 255
	.db #0xbb	; 187
	.db #0xff	; 255
	.db #0xdb	; 219
	.db #0xff	; 255
	.db #0xdd	; 221
	.db #0xff	; 255
	.db #0xed	; 237
	.db #0xff	; 255
	.db #0xbd	; 189
	.db #0xff	; 255
	.db #0xbd	; 189
	.db #0xff	; 255
	.db #0xbe	; 190
	.db #0xff	; 255
	.db #0xbe	; 190
	.db #0xff	; 255
	.db #0xde	; 222
	.db #0xff	; 255
	.db #0xde	; 222
	.db #0xff	; 255
	.db #0xde	; 222
	.db #0xff	; 255
	.db #0xde	; 222
	.db #0xff	; 255
	.db #0xed	; 237
	.db #0xff	; 255
	.db #0xee	; 238
	.db #0xff	; 255
	.db #0xee	; 238
	.db #0xff	; 255
	.db #0xee	; 238
	.db #0xff	; 255
	.db #0xf6	; 246
	.db #0xff	; 255
	.db #0xf6	; 246
	.db #0xff	; 255
	.db #0xf6	; 246
	.db #0xff	; 255
	.db #0xf6	; 246
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0x76	; 118	'v'
	.db #0xff	; 255
	.db #0x76	; 118	'v'
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xf3	; 243
	.db #0xff	; 255
	.db #0x8f	; 143
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0x7d	; 125
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0xbe	; 190
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0x7b	; 123
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0x7d	; 125
	.db #0xff	; 255
	.db #0xbd	; 189
	.db #0xff	; 255
	.db #0xbd	; 189
	.db #0xff	; 255
	.db #0xde	; 222
	.db #0xff	; 255
	.db #0xde	; 222
	.db #0xff	; 255
	.db #0xee	; 238
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0x7b	; 123
	.db #0xff	; 255
	.db #0x7b	; 123
	.db #0xff	; 255
	.db #0x77	; 119	'w'
	.db #0xff	; 255
	.db #0xbb	; 187
	.db #0xff	; 255
	.db #0xdd	; 221
	.db #0xff	; 255
	.db #0xed	; 237
	.db #0xff	; 255
	.db #0xf6	; 246
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xf4	; 244
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0x7b	; 123
	.db #0xff	; 255
	.db #0xbb	; 187
	.db #0xff	; 255
	.db #0xbb	; 187
	.db #0xff	; 255
	.db #0xbb	; 187
	.db #0xff	; 255
	.db #0xdb	; 219
	.db #0xff	; 255
	.db #0xde	; 222
	.db #0xff	; 255
	.db #0xf9	; 249
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xf4	; 244
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xed	; 237
	.db #0xff	; 255
	.db #0xdd	; 221
	.db #0xff	; 255
	.db #0xdb	; 219
	.db #0xff	; 255
	.db #0xbb	; 187
	.db #0xff	; 255
	.db #0xb7	; 183
	.db #0xff	; 255
	.db #0xf8	; 248
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xdd	; 221
	.db #0xff	; 255
	.db #0xdd	; 221
	.db #0xff	; 255
	.db #0xbd	; 189
	.db #0xff	; 255
	.db #0xbd	; 189
	.db #0xff	; 255
	.db #0xb7	; 183
	.db #0xff	; 255
	.db #0x77	; 119	'w'
	.db #0xff	; 255
	.db #0x77	; 119	'w'
	.db #0xff	; 255
	.db #0x77	; 119	'w'
	.db #0xff	; 255
	.db #0x6f	; 111	'o'
	.db #0xff	; 255
	.db #0x6f	; 111	'o'
	.db #0xff	; 255
	.db #0x6f	; 111	'o'
	.db #0xff	; 255
	.db #0x6f	; 111	'o'
	.db #0xff	; 255
	.db #0xbd	; 189
	.db #0xff	; 255
	.db #0xbd	; 189
	.db #0xff	; 255
	.db #0x7d	; 125
	.db #0xff	; 255
	.db #0x7d	; 125
	.db #0xff	; 255
	.db #0x7b	; 123
	.db #0xff	; 255
	.db #0x7b	; 123
	.db #0xff	; 255
	.db #0x7b	; 123
	.db #0xff	; 255
	.db #0x7b	; 123
	.db #0xff	; 255
	.db #0x6e	; 110	'n'
	.db #0xff	; 255
	.db #0x6e	; 110	'n'
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xcf	; 207
	.db #0xff	; 255
	.db #0xf1	; 241
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0xbd	; 189
	.db #0xff	; 255
	.db #0xbd	; 189
	.db #0xff	; 255
	.db #0xdb	; 219
	.db #0xff	; 255
	.db #0xdb	; 219
	.db #0xff	; 255
	.db #0xdb	; 219
	.db #0xff	; 255
	.db #0xdb	; 219
	.db #0xff	; 255
	.db #0xc3	; 195
	.db #0xff	; 255
	.db #0xbd	; 189
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0xbd	; 189
	.db #0xff	; 255
	.db #0xdb	; 219
	.db #0xff	; 255
	.db #0x3c	; 60
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf8	; 248
	.db #0xff	; 255
	.db #0xe7	; 231
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0x8f	; 143
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xdd	; 221
	.db #0xff	; 255
	.db #0xcb	; 203
	.db #0xff	; 255
	.db #0xd7	; 215
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xbb	; 187
	.db #0xff	; 255
	.db #0xd3	; 211
	.db #0xff	; 255
	.db #0xeb	; 235
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xf1	; 241
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xe7	; 231
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x90	; 144
	.db #0x00	; 0
	.db #0x88	; 136
	.db #0x00	; 0
	.db #0xc8	; 200
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0x89	; 137
	.db #0x89	; 137
	.db #0x8a	; 138
	.db #0x8a	; 138
	.db #0xf3	; 243
	.db #0xf3	; 243
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x8b	; 139
	.db #0x8b	; 139
	.db #0x4c	; 76	'L'
	.db #0x4c	; 76	'L'
	.db #0xc8	; 200
	.db #0xc8	; 200
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0xc8	; 200
	.db #0xc8	; 200
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xee	; 238
	.db #0xee	; 238
	.db #0x91	; 145
	.db #0x91	; 145
	.db #0x91	; 145
	.db #0x91	; 145
	.db #0x91	; 145
	.db #0x91	; 145
	.db #0x91	; 145
	.db #0x91	; 145
	.db #0x8e	; 142
	.db #0x8e	; 142
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x29	; 41
	.db #0x29	; 41
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x9e	; 158
	.db #0x9e	; 158
	.db #0x3f	; 63
	.db #0x21	; 33
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xcc	; 204
	.db #0xb3	; 179
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x73	; 115	's'
	.db #0x4c	; 76	'L'
	.db #0x3f	; 63
	.db #0x21	; 33
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x7e	; 126
	.db #0x42	; 66	'B'
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xbd	; 189
	.db #0x42	; 66	'B'
	.db #0x5a	; 90	'Z'
	.db #0xa5	; 165
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0xc3	; 195
	.db #0x81	; 129
	.db #0x7e	; 126
	.db #0x42	; 66	'B'
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x79	; 121	'y'
	.db #0x79	; 121	'y'
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0xfe	; 254
	.db #0x86	; 134
	.db #0xff	; 255
	.db #0xcd	; 205
	.db #0xff	; 255
	.db #0x49	; 73	'I'
	.db #0xb7	; 183
	.db #0x49	; 73	'I'
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xce	; 206
	.db #0x32	; 50	'2'
	.db #0xb4	; 180
	.db #0xcc	; 204
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x00	; 0
FPerformanceService$__xinit_PerformanceBkgTileMap$0_0$0 == .
__xinit__PerformanceBkgTileMap:
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x4a	; 74	'J'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x4b	; 75	'K'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x26	; 38
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x28	; 40
	.db #0x29	; 41
	.db #0x2a	; 42
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0d	; 13
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x46	; 70	'F'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x47	; 71	'G'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2b	; 43
	.db #0x2c	; 44
	.db #0x2d	; 45
	.db #0x2e	; 46
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x49	; 73	'I'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2f	; 47
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x32	; 50	'2'
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x4a	; 74	'J'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x4b	; 75	'K'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x34	; 52	'4'
	.db #0x35	; 53	'5'
	.db #0x36	; 54	'6'
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x39	; 57	'9'
	.db #0x19	; 25
	.db #0x1a	; 26
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x46	; 70	'F'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x47	; 71	'G'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3a	; 58
	.db #0x3b	; 59
	.db #0x00	; 0
	.db #0x1b	; 27
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x49	; 73	'I'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x4a	; 74	'J'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x4b	; 75	'K'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3d	; 61
	.db #0x00	; 0
	.db #0x1d	; 29
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x4c	; 76	'L'
	.db #0x4d	; 77	'M'
	.db #0x4e	; 78	'N'
	.db #0x4e	; 78	'N'
	.db #0x4e	; 78	'N'
	.db #0x4e	; 78	'N'
	.db #0x4f	; 79	'O'
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x51	; 81	'Q'
	.db #0x52	; 82	'R'
	.db #0x53	; 83	'S'
	.db #0x53	; 83	'S'
	.db #0x53	; 83	'S'
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x41	; 65	'A'
	.db #0x21	; 33
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5c	; 92
	.db #0x5d	; 93
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x43	; 67	'C'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5b	; 91
	.db #0x5e	; 94
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x57	; 87	'W'
	.db #0x00	; 0
	.db #0x57	; 87	'W'
	.db #0x00	; 0
	.db #0x57	; 87	'W'
	.db #0x00	; 0
	.db #0x57	; 87	'W'
	.db #0x00	; 0
	.db #0x59	; 89	'Y'
	.db #0x5a	; 90	'Z'
	.db #0x5f	; 95
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x57	; 87	'W'
	.db #0x00	; 0
	.db #0x57	; 87	'W'
	.db #0x00	; 0
	.db #0x57	; 87	'W'
	.db #0x00	; 0
	.db #0x57	; 87	'W'
	.db #0x58	; 88	'X'
	.db #0x56	; 86	'V'
	.db #0x58	; 88	'X'
	.db #0x56	; 86	'V'
	.db #0x58	; 88	'X'
	.db #0x56	; 86	'V'
	.db #0x58	; 88	'X'
	.db #0x56	; 86	'V'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x56	; 86	'V'
	.db #0x58	; 88	'X'
	.db #0x56	; 86	'V'
	.db #0x58	; 88	'X'
	.db #0x56	; 86	'V'
	.db #0x58	; 88	'X'
	.db #0x56	; 86	'V'
	.db #0x58	; 88	'X'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x61	; 97	'a'
	.db #0x62	; 98	'b'
	.db #0x65	; 101	'e'
	.db #0x66	; 102	'f'
	.db #0x67	; 103	'g'
	.db #0x68	; 104	'h'
	.db #0x69	; 105	'i'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x6a	; 106	'j'
	.db #0x6c	; 108	'l'
	.db #0x6e	; 110	'n'
	.db #0x6f	; 111	'o'
	.db #0x71	; 113	'q'
	.db #0x73	; 115	's'
	.db #0x6e	; 110	'n'
	.db #0x75	; 117	'u'
	.db #0x77	; 119	'w'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x63	; 99	'c'
	.db #0x64	; 100	'd'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x6b	; 107	'k'
	.db #0x6d	; 109	'm'
	.db #0x01	; 1
	.db #0x70	; 112	'p'
	.db #0x72	; 114	'r'
	.db #0x74	; 116	't'
	.db #0x01	; 1
	.db #0x76	; 118	'v'
	.db #0x78	; 120	'x'
	.db #0x01	; 1
FPerformanceService$__xinit_JesterTiles$0_0$0 == .
__xinit__JesterTiles:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x03	; 3
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x30	; 48	'0'
	.db #0x70	; 112	'p'
	.db #0xf8	; 248
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0xe3	; 227
	.db #0xf3	; 243
	.db #0x0d	; 13
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x0f	; 15
	.db #0x20	; 32
	.db #0x1f	; 31
	.db #0x40	; 64
	.db #0x5f	; 95
	.db #0x40	; 64
	.db #0x7d	; 125
	.db #0x43	; 67	'C'
	.db #0x3a	; 58
	.db #0x26	; 38
	.db #0x3c	; 60
	.db #0x24	; 36
	.db #0x1d	; 29
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x1d	; 29
	.db #0xff	; 255
	.db #0x06	; 6
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xe6	; 230
	.db #0x19	; 25
	.db #0xce	; 206
	.db #0xb9	; 185
	.db #0x9f	; 159
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xec	; 236
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x1e	; 30
	.db #0xfd	; 253
	.db #0xba	; 186
	.db #0xfb	; 251
	.db #0x72	; 114	'r'
	.db #0xf3	; 243
	.db #0xba	; 186
	.db #0x7b	; 123
	.db #0xda	; 218
	.db #0xfb	; 251
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x60	; 96
	.db #0xe0	; 224
	.db #0x60	; 96
	.db #0xe0	; 224
	.db #0x60	; 96
	.db #0xe0	; 224
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xca	; 202
	.db #0x8a	; 138
	.db #0x95	; 149
	.db #0x9a	; 154
	.db #0x95	; 149
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x0d	; 13
	.db #0x15	; 21
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0xf3	; 243
	.db #0xd8	; 216
	.db #0xab	; 171
	.db #0x48	; 72	'H'
	.db #0xfe	; 254
	.db #0x81	; 129
	.db #0xf0	; 240
	.db #0x80	; 128
	.db #0x78	; 120	'x'
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x7d	; 125
	.db #0xc2	; 194
	.db #0xc5	; 197
	.db #0x3e	; 62
	.db #0x09	; 9
	.db #0xb9	; 185
	.db #0x89	; 137
	.db #0xba	; 186
	.db #0x11	; 17
	.db #0xf1	; 241
	.db #0x50	; 80	'P'
	.db #0x70	; 112	'p'
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0xe1	; 225
	.db #0x5f	; 95
	.db #0xbe	; 190
	.db #0x2f	; 47
	.db #0x31	; 49	'1'
	.db #0x9e	; 158
	.db #0x92	; 146
	.db #0x1e	; 30
	.db #0x12	; 18
	.db #0x0e	; 14
	.db #0x0a	; 10
	.db #0x1e	; 30
	.db #0x1a	; 26
	.db #0x3e	; 62
	.db #0x2e	; 46
	.db #0x74	; 116	't'
	.db #0xcc	; 204
	.db #0xc8	; 200
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x10	; 16
	.db #0x07	; 7
	.db #0x0c	; 12
	.db #0x1f	; 31
	.db #0x11	; 17
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0xf9	; 249
	.db #0xff	; 255
	.db #0xf3	; 243
	.db #0x1f	; 31
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0a	; 10
	.db #0xff	; 255
	.db #0xc5	; 197
	.db #0xfe	; 254
	.db #0xc1	; 193
	.db #0xfe	; 254
	.db #0x45	; 69	'E'
	.db #0x7e	; 126
	.db #0x2a	; 42
	.db #0x3f	; 63
	.db #0x25	; 37
	.db #0x3e	; 62
	.db #0x11	; 17
	.db #0x1e	; 30
	.db #0x15	; 21
	.db #0x1e	; 30
	.db #0xbe	; 190
	.db #0x41	; 65	'A'
	.db #0x61	; 97	'a'
	.db #0x9f	; 159
	.db #0xee	; 238
	.db #0x1e	; 30
	.db #0x50	; 80	'P'
	.db #0xb0	; 176
	.db #0x90	; 144
	.db #0x70	; 112	'p'
	.db #0x60	; 96
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x60	; 96
	.db #0xa0	; 160
	.db #0x30	; 48	'0'
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x1a	; 26
	.db #0x1f	; 31
	.db #0x25	; 37
	.db #0x3e	; 62
	.db #0x21	; 33
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x7e	; 126
	.db #0xe1	; 225
	.db #0xfe	; 254
	.db #0x71	; 113	'q'
	.db #0x9e	; 158
	.db #0xef	; 239
	.db #0x1f	; 31
	.db #0xc9	; 201
	.db #0x39	; 57	'9'
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0xb0	; 176
	.db #0x70	; 112	'p'
	.db #0x70	; 112	'p'
	.db #0xf0	; 240
	.db #0xd0	; 208
	.db #0xf0	; 240
	.db #0xd0	; 208
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x0e	; 14
	.db #0x09	; 9
	.db #0xd1	; 209
	.db #0x31	; 49	'1'
	.db #0xd1	; 209
	.db #0x31	; 49	'1'
	.db #0xe1	; 225
	.db #0x21	; 33
	.db #0xa1	; 161
	.db #0x61	; 97	'a'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x42	; 66	'B'
	.db #0xc3	; 195
	.db #0x82	; 130
	.db #0x83	; 131
	.db #0x82	; 130
	.db #0x83	; 131
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x60	; 96
	.db #0xa0	; 160
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x0d	; 13
	.db #0x0b	; 11
	.db #0x1e	; 30
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x16	; 22
	.db #0x3e	; 62
	.db #0x3e	; 62
	.db #0x63	; 99	'c'
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x60	; 96
	.db #0xe0	; 224
	.db #0xe9	; 233
	.db #0xf9	; 249
	.db #0x97	; 151
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xe0	; 224
	.db #0xa0	; 160
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0x81	; 129
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0xc6	; 198
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc6	; 198
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0xa5	; 165
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0xa5	; 165
	.db #0x00	; 0
	.db #0x99	; 153
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x04	; 4
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x1f	; 31
	.db #0x80	; 128
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0xfc	; 252
	.db #0x02	; 2
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x91	; 145
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfc	; 252
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.area _CABS (ABS)
