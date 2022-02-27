;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW32)
;--------------------------------------------------------
	.module main
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _set_sprite_data
	.globl _set_bkg_submap
	.globl _set_bkg_data
	.globl _joypad
	.globl _delay
	.globl _yLast_values
	.globl _xLast_values
	.globl _y_values
	.globl _x_values
	.globl _ceiling_coll
	.globl _ground_coll
	.globl _ySpeed
	.globl _xSpeed
	.globl _yLast
	.globl _xLast
	.globl _pY
	.globl _pX
	.globl _printcounter
	.globl _testmap
	.globl _bktiles
	.globl _moveplayer
	.globl _basicmove
	.globl _collision
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$bktiles$0_0$0==.
_bktiles::
	.ds 96
G$testmap$0_0$0==.
_testmap::
	.ds 360
G$printcounter$0_0$0==.
_printcounter::
	.ds 2
G$pX$0_0$0==.
_pX::
	.ds 1
G$pY$0_0$0==.
_pY::
	.ds 1
G$xLast$0_0$0==.
_xLast::
	.ds 1
G$yLast$0_0$0==.
_yLast::
	.ds 1
G$xSpeed$0_0$0==.
_xSpeed::
	.ds 1
G$ySpeed$0_0$0==.
_ySpeed::
	.ds 1
G$ground_coll$0_0$0==.
_ground_coll::
	.ds 1
G$ceiling_coll$0_0$0==.
_ceiling_coll::
	.ds 1
G$x_values$0_0$0==.
_x_values::
	.ds 2
G$y_values$0_0$0==.
_y_values::
	.ds 5
G$xLast_values$0_0$0==.
_xLast_values::
	.ds 2
G$yLast_values$0_0$0==.
_yLast_values::
	.ds 5
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
	C$bktiles.c$26$1_0$138	= .
	.globl	C$bktiles.c$26$1_0$138
;bktiles.c:26: unsigned char bktiles[] =
	ld	hl, #_bktiles
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x0001)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x0002)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x0003)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x0004)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x0005)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x0006)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x0007)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x0008)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x0009)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x000a)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x000b)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x000c)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x000d)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x000e)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x000f)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x0010)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x0011)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x0012)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x0013)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x0014)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x0015)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x0016)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x0017)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x0018)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x0019)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x001a)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x001b)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x001c)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x001d)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x001e)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x001f)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x0020)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x0021)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x0022)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x0023)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x0024)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x0025)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x0026)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x0027)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x0028)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x0029)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x002a)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x002b)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x002c)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x002d)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x002e)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x002f)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x0030)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x0031)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x0032)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x0033)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x0034)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x0035)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x0036)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x0037)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x0038)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x0039)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x003a)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x003b)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x003c)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x003d)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x003e)
	ld	(hl), #0x00
	ld	hl, #(_bktiles + 0x003f)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x0040)
	ld	(hl), #0x03
	ld	hl, #(_bktiles + 0x0041)
	ld	(hl), #0x03
	ld	hl, #(_bktiles + 0x0042)
	ld	(hl), #0x03
	ld	hl, #(_bktiles + 0x0043)
	ld	(hl), #0x03
	ld	hl, #(_bktiles + 0x0044)
	ld	(hl), #0x0f
	ld	hl, #(_bktiles + 0x0045)
	ld	(hl), #0x0f
	ld	hl, #(_bktiles + 0x0046)
	ld	(hl), #0x0f
	ld	hl, #(_bktiles + 0x0047)
	ld	(hl), #0x0f
	ld	hl, #(_bktiles + 0x0048)
	ld	(hl), #0x3f
	ld	hl, #(_bktiles + 0x0049)
	ld	(hl), #0x3f
	ld	hl, #(_bktiles + 0x004a)
	ld	(hl), #0x3f
	ld	hl, #(_bktiles + 0x004b)
	ld	(hl), #0x3f
	ld	hl, #(_bktiles + 0x004c)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x004d)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x004e)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x004f)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x0050)
	ld	(hl), #0xc0
	ld	hl, #(_bktiles + 0x0051)
	ld	(hl), #0xc0
	ld	hl, #(_bktiles + 0x0052)
	ld	(hl), #0xc0
	ld	hl, #(_bktiles + 0x0053)
	ld	(hl), #0xc0
	ld	hl, #(_bktiles + 0x0054)
	ld	(hl), #0xf0
	ld	hl, #(_bktiles + 0x0055)
	ld	(hl), #0xf0
	ld	hl, #(_bktiles + 0x0056)
	ld	(hl), #0xf0
	ld	hl, #(_bktiles + 0x0057)
	ld	(hl), #0xf0
	ld	hl, #(_bktiles + 0x0058)
	ld	(hl), #0xfc
	ld	hl, #(_bktiles + 0x0059)
	ld	(hl), #0xfc
	ld	hl, #(_bktiles + 0x005a)
	ld	(hl), #0xfc
	ld	hl, #(_bktiles + 0x005b)
	ld	(hl), #0xfc
	ld	hl, #(_bktiles + 0x005c)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x005d)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x005e)
	ld	(hl), #0xff
	ld	hl, #(_bktiles + 0x005f)
	ld	(hl), #0xff
	C$testmap.c$25$1_0$138	= .
	.globl	C$testmap.c$25$1_0$138
;testmap.c:25: unsigned char testmap[] =
	ld	hl, #_testmap
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0001)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0002)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0003)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0004)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0005)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0006)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0007)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0008)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0009)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x000a)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x000b)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x000c)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x000d)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x000e)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x000f)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0010)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0011)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0012)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0013)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0014)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0015)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0016)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0017)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0018)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0019)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x001a)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x001b)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x001c)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x001d)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x001e)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x001f)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0020)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0021)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0022)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0023)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0024)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0025)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0026)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0027)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0028)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0029)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x002a)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x002b)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x002c)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x002d)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x002e)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x002f)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0030)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0031)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0032)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0033)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0034)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0035)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0036)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0037)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0038)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0039)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x003a)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x003b)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x003c)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x003d)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x003e)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x003f)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0040)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0041)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0042)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0043)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0044)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0045)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0046)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0047)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0048)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0049)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x004a)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x004b)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x004c)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x004d)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x004e)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x004f)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0050)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0051)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0052)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0053)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0054)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0055)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0056)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0057)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0058)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0059)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x005a)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x005b)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x005c)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x005d)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x005e)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x005f)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0060)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0061)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0062)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0063)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0064)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0065)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0066)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0067)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0068)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0069)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x006a)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x006b)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x006c)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x006d)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x006e)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x006f)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0070)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0071)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0072)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0073)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0074)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0075)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0076)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0077)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0078)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0079)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x007a)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x007b)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x007c)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x007d)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x007e)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x007f)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0080)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0081)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0082)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0083)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0084)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0085)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0086)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0087)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0088)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0089)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x008a)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x008b)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x008c)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x008d)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x008e)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x008f)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0090)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0091)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0092)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0093)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0094)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0095)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0096)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0097)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0098)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0099)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x009a)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x009b)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x009c)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x009d)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x009e)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x009f)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00a0)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00a1)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00a2)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00a3)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00a4)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00a5)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00a6)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00a7)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00a8)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00a9)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00aa)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00ab)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00ac)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00ad)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00ae)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00af)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00b0)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00b1)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00b2)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00b3)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00b4)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00b5)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00b6)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00b7)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00b8)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00b9)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00ba)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00bb)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00bc)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00bd)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00be)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00bf)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00c0)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00c1)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00c2)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00c3)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00c4)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00c5)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00c6)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00c7)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00c8)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00c9)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00ca)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00cb)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00cc)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00cd)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00ce)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00cf)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00d0)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00d1)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00d2)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00d3)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00d4)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00d5)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00d6)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00d7)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00d8)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00d9)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00da)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00db)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00dc)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00dd)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00de)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00df)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00e0)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00e1)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00e2)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00e3)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00e4)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00e5)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00e6)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00e7)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00e8)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00e9)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00ea)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00eb)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00ec)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00ed)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00ee)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00ef)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00f0)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00f1)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00f2)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00f3)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00f4)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00f5)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00f6)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00f7)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00f8)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00f9)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00fa)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00fb)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00fc)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00fd)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00fe)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x00ff)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0100)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0101)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0102)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0103)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0104)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0105)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0106)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0107)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0108)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0109)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x010a)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x010b)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x010c)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x010d)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x010e)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x010f)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0110)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0111)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0112)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0113)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0114)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0115)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0116)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0117)
	ld	(hl), #0x00
	ld	hl, #(_testmap + 0x0118)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0119)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x011a)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x011b)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x011c)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x011d)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x011e)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x011f)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0120)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0121)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0122)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0123)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0124)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0125)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0126)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0127)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0128)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0129)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x012a)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x012b)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x012c)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x012d)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x012e)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x012f)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0130)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0131)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0132)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0133)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0134)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0135)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0136)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0137)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0138)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0139)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x013a)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x013b)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x013c)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x013d)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x013e)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x013f)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0140)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0141)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0142)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0143)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0144)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0145)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0146)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0147)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0148)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0149)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x014a)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x014b)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x014c)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x014d)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x014e)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x014f)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0150)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0151)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0152)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0153)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0154)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0155)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0156)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0157)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0158)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0159)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x015a)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x015b)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x015c)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x015d)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x015e)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x015f)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0160)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0161)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0162)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0163)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0164)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0165)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0166)
	ld	(hl), #0x03
	ld	hl, #(_testmap + 0x0167)
	ld	(hl), #0x03
	C$main.c$14$1_0$138	= .
	.globl	C$main.c$14$1_0$138
;main.c:14: int printcounter = 0;
	ld	hl, #_printcounter
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	C$main.c$17$1_0$138	= .
	.globl	C$main.c$17$1_0$138
;main.c:17: INT8 xSpeed = 0, ySpeed = 0;
	ld	hl, #_xSpeed
	ld	(hl), #0x00
	C$main.c$17$1_0$138	= .
	.globl	C$main.c$17$1_0$138
;main.c:17: UINT8 ground_coll = 1, ceiling_coll = 0;
	ld	hl, #_ySpeed
	ld	(hl), #0x00
	C$main.c$18$1_0$138	= .
	.globl	C$main.c$18$1_0$138
;main.c:18: UINT8 x_values[WDT];
	ld	hl, #_ground_coll
	ld	(hl), #0x01
	C$main.c$18$1_0$138	= .
	.globl	C$main.c$18$1_0$138
;main.c:18: UINT8 ground_coll = 1, ceiling_coll = 0;
	ld	hl, #_ceiling_coll
	ld	(hl), #0x00
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
	C$main.c$29$0_0$119	= .
	.globl	C$main.c$29$0_0$119
;main.c:29: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	C$main.c$31$1_0$119	= .
	.globl	C$main.c$31$1_0$119
;main.c:31: SHOW_SPRITES;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x02
	ldh	(_LCDC_REG+0),a
	C$main.c$32$1_0$119	= .
	.globl	C$main.c$32$1_0$119
;main.c:32: DISPLAY_ON;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x80
	ldh	(_LCDC_REG+0),a
	C$main.c$33$1_0$119	= .
	.globl	C$main.c$33$1_0$119
;main.c:33: SHOW_BKG;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x01
	ldh	(_LCDC_REG+0),a
	C$main.c$34$1_0$119	= .
	.globl	C$main.c$34$1_0$119
;main.c:34: set_sprite_data(0, sizeof(square_data) >> 4, square_data);
	ld	hl, #_square_data
	push	hl
	ld	a, #0x04
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_sprite_data
	add	sp, #4
	C$main.c$35$1_0$119	= .
	.globl	C$main.c$35$1_0$119
;main.c:35: set_bkg_data(0, 5, bktiles);
	ld	hl, #_bktiles
	push	hl
	ld	a, #0x05
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_data
	add	sp, #4
	C$main.c$36$1_0$119	= .
	.globl	C$main.c$36$1_0$119
;main.c:36: set_bkg_submap(0, 0, 20, 18, testmap, 20);
	ld	a, #0x14
	push	af
	inc	sp
	ld	hl, #_testmap
	push	hl
	ld	de, #0x1214
	push	de
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_submap
	add	sp, #7
	C$main.c$37$1_0$119	= .
	.globl	C$main.c$37$1_0$119
;main.c:37: pX = 40; pY = 80;
	ld	hl, #_pX
	ld	(hl), #0x28
	ld	hl, #_pY
	ld	(hl), #0x50
	C$main.c$38$1_0$119	= .
	.globl	C$main.c$38$1_0$119
;main.c:38: xLast = pX; yLast = pY;
	ld	hl, #_xLast
	ld	(hl), #0x28
	ld	hl, #_yLast
	ld	(hl), #0x50
	C$main.c$39$1_0$119	= .
	.globl	C$main.c$39$1_0$119
;main.c:39: moveplayer();
	call	_moveplayer
	C$main.c$40$1_0$119	= .
	.globl	C$main.c$40$1_0$119
;main.c:40: while(1)
00102$:
	C$main.c$42$2_0$120	= .
	.globl	C$main.c$42$2_0$120
;main.c:42: basicmove();       
	call	_basicmove
	C$main.c$43$2_0$120	= .
	.globl	C$main.c$43$2_0$120
;main.c:43: collision();
	call	_collision
	C$main.c$44$2_0$120	= .
	.globl	C$main.c$44$2_0$120
;main.c:44: xLast = pX;
	ld	a, (#_pX)
	ld	(#_xLast),a
	C$main.c$45$2_0$120	= .
	.globl	C$main.c$45$2_0$120
;main.c:45: yLast = pY;
	ld	a, (#_pY)
	ld	(#_yLast),a
	C$main.c$46$2_0$120	= .
	.globl	C$main.c$46$2_0$120
;main.c:46: moveplayer();
	call	_moveplayer
	C$main.c$47$2_0$120	= .
	.globl	C$main.c$47$2_0$120
;main.c:47: delay(30);
	ld	hl, #0x001e
	push	hl
	call	_delay
	add	sp, #2
	C$main.c$49$1_0$119	= .
	.globl	C$main.c$49$1_0$119
;main.c:49: }
	C$main.c$49$1_0$119	= .
	.globl	C$main.c$49$1_0$119
	XG$main$0$0	= .
	.globl	XG$main$0$0
	jr	00102$
	G$moveplayer$0$0	= .
	.globl	G$moveplayer$0$0
	C$main.c$51$1_0$122	= .
	.globl	C$main.c$51$1_0$122
;main.c:51: void moveplayer(void)
;	---------------------------------
; Function moveplayer
; ---------------------------------
_moveplayer::
;main.c:53: move_metasprite(square_metasprites[0], 0, 0, xLast, yLast);
	ld	hl, #_yLast
	ld	b, (hl)
	ld	hl, #_xLast
	ld	c, (hl)
	ld	hl, #_square_metasprites
	ld	a, (hl+)
	ld	h, (hl)
;c:/gbdk/include/gb/metasprites.h:79: __current_metasprite = metasprite; 
	ld	(___current_metasprite), a
	ld	a, h
	ld	(___current_metasprite + 1), a
;c:/gbdk/include/gb/metasprites.h:80: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;c:/gbdk/include/gb/metasprites.h:81: return __move_metasprite(base_sprite, x, y); 
	push	bc
	xor	a, a
	push	af
	inc	sp
	call	___move_metasprite
	add	sp, #3
	C$main.c$53$3_0$122	= .
	.globl	C$main.c$53$3_0$122
;main.c:53: move_metasprite(square_metasprites[0], 0, 0, xLast, yLast);
	C$main.c$54$3_0$122	= .
	.globl	C$main.c$54$3_0$122
;main.c:54: }
	C$main.c$54$3_0$122	= .
	.globl	C$main.c$54$3_0$122
	XG$moveplayer$0$0	= .
	.globl	XG$moveplayer$0$0
	ret
	G$basicmove$0$0	= .
	.globl	G$basicmove$0$0
	C$main.c$56$3_0$127	= .
	.globl	C$main.c$56$3_0$127
;main.c:56: void basicmove(void)
;	---------------------------------
; Function basicmove
; ---------------------------------
_basicmove::
	C$main.c$58$1_0$127	= .
	.globl	C$main.c$58$1_0$127
;main.c:58: if(joypad() & J_A && ground_coll == 1 && ceiling_coll == 0)
	call	_joypad
	bit	4, e
	jr	Z, 00102$
	ld	a, (#_ground_coll)
	dec	a
	jr	NZ, 00102$
	ld	a, (#_ceiling_coll)
	or	a, a
	jr	NZ, 00102$
	C$main.c$61$2_0$128	= .
	.globl	C$main.c$61$2_0$128
;main.c:61: ySpeed = -9;
	ld	hl, #_ySpeed
	ld	(hl), #0xf7
	C$main.c$62$2_0$128	= .
	.globl	C$main.c$62$2_0$128
;main.c:62: ground_coll = 0;
	ld	hl, #_ground_coll
	ld	(hl), #0x00
00102$:
	C$main.c$65$1_0$127	= .
	.globl	C$main.c$65$1_0$127
;main.c:65: if(joypad() & J_RIGHT)
	call	_joypad
	ld	a, e
	rrca
	jr	NC, 00108$
	C$main.c$67$2_0$129	= .
	.globl	C$main.c$67$2_0$129
;main.c:67: pX += 2;
	ld	hl, #_pX
	ld	a, (hl)
	add	a, #0x02
	ld	(hl), a
	jr	00109$
00108$:
	C$main.c$69$1_0$127	= .
	.globl	C$main.c$69$1_0$127
;main.c:69: else if(joypad() & J_LEFT)
	call	_joypad
	bit	1, e
	jr	Z, 00109$
	C$main.c$71$2_0$130	= .
	.globl	C$main.c$71$2_0$130
;main.c:71: pX -= 2;
	ld	hl, #_pX
	ld	a, (hl)
	add	a, #0xfe
	ld	(hl), a
00109$:
	C$main.c$74$1_0$127	= .
	.globl	C$main.c$74$1_0$127
;main.c:74: if(joypad() & J_DOWN)
	call	_joypad
	bit	3, e
	jr	Z, 00113$
	C$main.c$76$2_0$131	= .
	.globl	C$main.c$76$2_0$131
;main.c:76: pY += 2;
	ld	hl, #_pY
	ld	a, (hl)
	add	a, #0x02
	ld	(hl), a
	jr	00114$
00113$:
	C$main.c$78$1_0$127	= .
	.globl	C$main.c$78$1_0$127
;main.c:78: else if(joypad() & J_UP)
	call	_joypad
	bit	2, e
	jr	Z, 00114$
	C$main.c$80$2_0$132	= .
	.globl	C$main.c$80$2_0$132
;main.c:80: pY -= 2;
	ld	hl, #_pY
	ld	a, (hl)
	add	a, #0xfe
	ld	(hl), a
00114$:
	C$main.c$83$1_0$127	= .
	.globl	C$main.c$83$1_0$127
;main.c:83: if(ceiling_coll == 1)
	ld	a, (#_ceiling_coll)
	dec	a
	jr	NZ, 00120$
	C$main.c$85$2_0$133	= .
	.globl	C$main.c$85$2_0$133
;main.c:85: ySpeed = 0;
	ld	hl, #_ySpeed
	ld	(hl), #0x00
	C$main.c$86$2_0$133	= .
	.globl	C$main.c$86$2_0$133
;main.c:86: ceiling_coll = 0;
	ld	hl, #_ceiling_coll
	ld	(hl), #0x00
	C$main.c$95$1_0$127	= .
	.globl	C$main.c$95$1_0$127
;main.c:95: pY += ySpeed;
00120$:
	C$main.c$99$2_0$136	= .
	.globl	C$main.c$99$2_0$136
;main.c:99: ySpeed = 0;
	ld	hl, #_ySpeed
	ld	(hl), #0x00
	C$main.c$100$2_0$136	= .
	.globl	C$main.c$100$2_0$136
;main.c:100: ground_coll = 0;
	ld	hl, #_ground_coll
	ld	(hl), #0x00
	C$main.c$102$1_0$127	= .
	.globl	C$main.c$102$1_0$127
;main.c:102: }
	C$main.c$102$1_0$127	= .
	.globl	C$main.c$102$1_0$127
	XG$basicmove$0$0	= .
	.globl	XG$basicmove$0$0
	ret
	G$collision$0$0	= .
	.globl	G$collision$0$0
	C$main.c$104$1_0$138	= .
	.globl	C$main.c$104$1_0$138
;main.c:104: int collision(void)
;	---------------------------------
; Function collision
; ---------------------------------
_collision::
	add	sp, #-10
	C$main.c$106$4_0$143	= .
	.globl	C$main.c$106$4_0$143
;main.c:106: for(int i = 0; i < WDT; i++)
	xor	a, a
	ldhl	sp,	#8
	ld	(hl+), a
	ld	(hl), a
00137$:
	ldhl	sp,	#8
	ld	a, (hl)
	sub	a, #0x02
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	ld	d, (hl)
	ld	a, #0x00
	bit	7,a
	jr	Z, 00252$
	bit	7, d
	jr	NZ, 00253$
	cp	a, a
	jr	00253$
00252$:
	bit	7, d
	jr	Z, 00253$
	scf
00253$:
	jp	NC, 00107$
	C$main.c$110$1_0$138	= .
	.globl	C$main.c$110$1_0$138
;main.c:110: x_values[i] = (pX - 16 + i*8 + 1) >> 3;
	ldhl	sp,	#8
	ld	a, (hl)
	ldhl	sp,	#2
	ld	(hl), a
	ldhl	sp,	#9
	ld	a, (hl)
	ldhl	sp,	#3
	ld	(hl), a
	ld	a, #0x03
00254$:
	ldhl	sp,	#2
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00254$
	ld	a, (#_pX)
	ldhl	sp,	#4
	ld	(hl), a
	xor	a, a
	inc	hl
	ld	(hl), a
	C$main.c$108$3_0$140	= .
	.globl	C$main.c$108$3_0$140
;main.c:108: if(i == 0)
	ldhl	sp,	#9
	ld	a, (hl-)
	or	a, (hl)
	jr	NZ, 00105$
	C$main.c$110$4_0$141	= .
	.globl	C$main.c$110$4_0$141
;main.c:110: x_values[i] = (pX - 16 + i*8 + 1) >> 3;
;c
	ld	de, #_x_values
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	c, l
	ld	b, h
;c
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0xfff1
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	a, e
	ld	(bc), a
	C$main.c$111$4_0$141	= .
	.globl	C$main.c$111$4_0$141
;main.c:111: xLast_values[i] = (xLast - 16 + i*8 + 1) >> 3;
;c
	ld	de, #_xLast_values
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	c, l
	ld	b, h
	ld	hl, #_xLast
	ld	e, (hl)
	ld	d, #0x00
;c
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	a, e
	ld	(bc), a
	jp	00138$
00105$:
	C$main.c$113$3_0$140	= .
	.globl	C$main.c$113$3_0$140
;main.c:113: else if(i == WDT - 1)
	ldhl	sp,	#8
	ld	a, (hl)
	dec	a
	inc	hl
	or	a, (hl)
	jr	NZ, 00102$
	C$main.c$115$4_0$142	= .
	.globl	C$main.c$115$4_0$142
;main.c:115: x_values[i] = (pX - 16 + i*8 - 1) >> 3;
;c
	ld	de, #_x_values
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	c, l
	ld	b, h
;c
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, e
	add	a, #0xef
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	d, a
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	a, e
	ld	(bc), a
	C$main.c$116$4_0$142	= .
	.globl	C$main.c$116$4_0$142
;main.c:116: xLast_values[i] = (xLast - 16 + i*8 - 1) >> 3;
;c
	ld	de, #_xLast_values
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	c, l
	ld	b, h
	ld	hl, #_xLast
	ld	e, (hl)
	ld	d, #0x00
;c
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, e
	add	a, #0xef
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	d, a
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	a, e
	ld	(bc), a
	jr	00138$
00102$:
	C$main.c$120$4_0$143	= .
	.globl	C$main.c$120$4_0$143
;main.c:120: x_values[i] = (pX - 16 + i*8) >> 3;
;c
	ld	de, #_x_values
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	c, l
	ld	b, h
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0010
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#7
	ld	(hl-), a
;c
	ld	a, e
	ld	(hl+), a
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	a, e
	ld	(bc), a
	C$main.c$121$4_0$143	= .
	.globl	C$main.c$121$4_0$143
;main.c:121: xLast_values[i] = (xLast - 16 + i*8) >> 3;
;c
	ld	de, #_xLast_values
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, (#_xLast)
	ld	d, #0x00
	add	a, #0xf0
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	d, a
;c
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	a, e
	ld	(bc), a
00138$:
	C$main.c$106$2_0$139	= .
	.globl	C$main.c$106$2_0$139
;main.c:106: for(int i = 0; i < WDT; i++)
	ldhl	sp,	#8
	inc	(hl)
	jp	NZ,00137$
	inc	hl
	inc	(hl)
	jp	00137$
00107$:
	C$main.c$124$4_0$148	= .
	.globl	C$main.c$124$4_0$148
;main.c:124: for(int i = 0; i < HGT; i++)
	ld	bc, #0x0000
00140$:
	ld	a, c
	sub	a, #0x05
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC, 00114$
	C$main.c$128$1_0$138	= .
	.globl	C$main.c$128$1_0$138
;main.c:128: y_values[i] = (pY - 24 + i*8 + 1) >> 3;
	ldhl	sp,	#4
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	ld	a, #0x03
00258$:
	ldhl	sp,	#4
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00258$
	ld	hl, #_pY
	ld	e, (hl)
	ld	d, #0x00
	C$main.c$126$3_0$145	= .
	.globl	C$main.c$126$3_0$145
;main.c:126: if(i == 0)
	ld	a, b
	or	a, c
	jr	NZ, 00112$
	C$main.c$128$4_0$146	= .
	.globl	C$main.c$128$4_0$146
;main.c:128: y_values[i] = (pY - 24 + i*8 + 1) >> 3;
	ld	hl, #_y_values
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl), a
	push	de
;c
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0xffe9
	add	hl, de
	pop	de
	push	hl
	ld	a, l
	ldhl	sp,	#10
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#9
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	a, e
	ldhl	sp,	#6
	push	af
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
	C$main.c$129$4_0$146	= .
	.globl	C$main.c$129$4_0$146
;main.c:129: yLast_values[i] = (yLast - 24 + i*8 + 1) >>3;
	ld	hl, #_yLast_values
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl), a
	ld	hl, #_yLast
	ld	e, (hl)
	ld	d, #0x00
;c
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	a, e
	ldhl	sp,	#6
	push	af
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
	jp	00141$
00112$:
	C$main.c$131$3_0$145	= .
	.globl	C$main.c$131$3_0$145
;main.c:131: else if(i == HGT - 1)
	ld	a, c
	sub	a, #0x04
	or	a, b
	jr	NZ, 00109$
	C$main.c$133$4_0$147	= .
	.globl	C$main.c$133$4_0$147
;main.c:133: y_values[i] = (pY - 24 + i*8 - 1) >> 3;
	ld	hl, #_y_values
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#10
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#9
	ld	(hl), a
;c
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, e
	add	a, #0xe7
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	d, a
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	a, e
	ldhl	sp,	#8
	push	af
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
	C$main.c$134$4_0$147	= .
	.globl	C$main.c$134$4_0$147
;main.c:134: yLast_values[i] = (yLast - 24 + i*8 - 1) >>3;
	ld	hl, #_yLast_values
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#10
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#9
	ld	(hl), a
	ld	hl, #_yLast
	ld	e, (hl)
	ld	d, #0x00
;c
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, e
	add	a, #0xe7
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	d, a
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	a, e
	ldhl	sp,	#8
	push	af
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
	jr	00141$
00109$:
	C$main.c$138$4_0$148	= .
	.globl	C$main.c$138$4_0$148
;main.c:138: y_values[i] = (pY - 24 + i*8) >> 3;
	ld	hl, #_y_values
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#10
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#9
	ld	(hl), a
	ld	a, e
	add	a, #0xe8
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	d, a
;c
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	a, e
	ldhl	sp,	#8
	push	af
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
	C$main.c$139$4_0$148	= .
	.globl	C$main.c$139$4_0$148
;main.c:139: yLast_values[i] = (yLast - 24 + i*8) >>3;
	ld	hl, #_yLast_values
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#10
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#9
	ld	(hl), a
	ld	a, (#_yLast)
	ld	d, #0x00
	add	a, #0xe8
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	d, a
;c
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	a, e
	ldhl	sp,	#8
	push	af
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
00141$:
	C$main.c$124$2_0$144	= .
	.globl	C$main.c$124$2_0$144
;main.c:124: for(int i = 0; i < HGT; i++)
	inc	bc
	jp	00140$
00114$:
	C$main.c$143$3_0$149	= .
	.globl	C$main.c$143$3_0$149
;main.c:143: for(int i = 0; i < HGT; i++)
	xor	a, a
	ldhl	sp,	#6
	ld	(hl+), a
	ld	(hl), a
00146$:
	ldhl	sp,	#6
	ld	a, (hl)
	sub	a, #0x05
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	ld	d, (hl)
	ld	a, #0x00
	bit	7,a
	jr	Z, 00261$
	bit	7, d
	jr	NZ, 00262$
	cp	a, a
	jr	00262$
00261$:
	bit	7, d
	jr	Z, 00262$
	scf
00262$:
	jp	NC, 00135$
	C$main.c$145$5_0$151	= .
	.globl	C$main.c$145$5_0$151
;main.c:145: for(int c = 0; c < WDT; c++)
	xor	a, a
	ldhl	sp,	#8
	ld	(hl+), a
	ld	(hl), a
00143$:
	ldhl	sp,	#8
	ld	a, (hl)
	sub	a, #0x02
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	ld	d, (hl)
	ld	a, #0x00
	bit	7,a
	jr	Z, 00263$
	bit	7, d
	jr	NZ, 00264$
	cp	a, a
	jr	00264$
00263$:
	bit	7, d
	jr	Z, 00264$
	scf
00264$:
	jp	NC, 00147$
	C$main.c$147$1_0$138	= .
	.globl	C$main.c$147$1_0$138
;main.c:147: if(testmap[(y_values[i])*20 + x_values[c]] == 3)
;c
	ld	de, #_y_values
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	inc	sp
	inc	sp
	ld	e, l
	ld	d, h
	push	de
	ld	a, (de)
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl), a
;c
	ld	de, #_x_values
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	c, (hl)
	ldhl	sp,	#2
	ld	(hl), c
	xor	a, a
	inc	hl
;c
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	ld	hl, #_testmap
	add	hl, de
	ld	a, (hl)
	sub	a, #0x03
	jp	NZ,00130$
	C$main.c$149$6_0$153	= .
	.globl	C$main.c$149$6_0$153
;main.c:149: if(testmap[(yLast_values[i])*20 + x_values[c]] == 3)
;c
	ld	de, #_yLast_values
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	l, a
	ld	h, #0x00
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl), a
;c
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	ld	hl, #_testmap
	add	hl, de
	ld	a, (hl)
	sub	a, #0x03
	jr	NZ, 00121$
	C$main.c$154$1_0$138	= .
	.globl	C$main.c$154$1_0$138
;main.c:154: pX = (x_values[c] << 3) + 24;
	ldhl	sp,	#5
	ld	(hl), c
	ld	a, (hl)
	add	a, a
	add	a, a
	add	a, a
	ld	c, a
	C$main.c$152$7_0$154	= .
	.globl	C$main.c$152$7_0$154
;main.c:152: if(c == 0)
	ldhl	sp,	#9
	ld	a, (hl-)
	or	a, (hl)
	jr	NZ, 00118$
	C$main.c$154$8_0$155	= .
	.globl	C$main.c$154$8_0$155
;main.c:154: pX = (x_values[c] << 3) + 24;
	ld	a, c
	add	a, #0x18
	ld	(#_pX),a
	jr	00121$
00118$:
	C$main.c$156$7_0$154	= .
	.globl	C$main.c$156$7_0$154
;main.c:156: else if(c == WDT - 1)
	ldhl	sp,	#8
	ld	a, (hl)
	dec	a
	inc	hl
	or	a, (hl)
	jr	NZ, 00121$
	C$main.c$158$8_0$156	= .
	.globl	C$main.c$158$8_0$156
;main.c:158: pX = (x_values[c] << 3) - (WDT - 3)*8;
	ld	a, c
	add	a, #0x08
	ld	(#_pX),a
00121$:
	C$main.c$161$6_0$153	= .
	.globl	C$main.c$161$6_0$153
;main.c:161: if(testmap[(y_values[i])*20 + xLast_values[c]] == 3)
	pop	de
	push	de
	ld	a, (de)
	ldhl	sp,	#5
	ld	(hl), a
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
;c
	ld	de, #_xLast_values
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	ld	a, (de)
	ld	l, a
	ld	h, #0x00
	add	hl, bc
	ld	de, #_testmap
	add	hl, de
	ld	a, (hl)
	sub	a, #0x03
	jr	NZ, 00130$
	C$main.c$164$7_0$157	= .
	.globl	C$main.c$164$7_0$157
;main.c:164: if(i == 0)
	ldhl	sp,	#7
	ld	a, (hl-)
	or	a, (hl)
	jr	NZ, 00125$
	C$main.c$166$8_0$158	= .
	.globl	C$main.c$166$8_0$158
;main.c:166: pY = (y_values[i] << 3) + 32;
	dec	hl
	ld	a, (hl)
	add	a, a
	add	a, a
	add	a, a
	add	a, #0x20
	ld	(#_pY),a
	C$main.c$167$8_0$158	= .
	.globl	C$main.c$167$8_0$158
;main.c:167: ceiling_coll = 1;
	ld	hl, #_ceiling_coll
	ld	(hl), #0x01
	jr	00130$
00125$:
	C$main.c$169$7_0$157	= .
	.globl	C$main.c$169$7_0$157
;main.c:169: else if(i = HGT - 1)
	ldhl	sp,	#6
	ld	(hl), #0x04
	xor	a, a
	inc	hl
	ld	(hl), a
	C$main.c$171$8_0$159	= .
	.globl	C$main.c$171$8_0$159
;main.c:171: pY = (y_values[i] << 3) + 8 - (HGT - 3)*8;
	ld	a, (#(_y_values + 0x0004) + 0)
	add	a, a
	add	a, a
	add	a, a
	add	a, #0xf8
	ld	(#_pY),a
	C$main.c$172$8_0$159	= .
	.globl	C$main.c$172$8_0$159
;main.c:172: ground_coll = 1;
	ld	hl, #_ground_coll
	ld	(hl), #0x01
00130$:
	C$main.c$178$5_0$152	= .
	.globl	C$main.c$178$5_0$152
;main.c:178: if(i != 0 && i != HGT - 1)
	ldhl	sp,	#7
	ld	a, (hl-)
	or	a, (hl)
	jr	Z, 00144$
	ld	a, (hl)
	sub	a, #0x04
	inc	hl
	or	a, (hl)
	jr	Z, 00144$
	C$main.c$180$6_0$160	= .
	.globl	C$main.c$180$6_0$160
;main.c:180: c = WDT - 1;
	ldhl	sp,	#8
	ld	(hl), #0x01
	xor	a, a
	inc	hl
	ld	(hl), a
00144$:
	C$main.c$145$4_0$151	= .
	.globl	C$main.c$145$4_0$151
;main.c:145: for(int c = 0; c < WDT; c++)
	ldhl	sp,	#8
	inc	(hl)
	jp	NZ,00143$
	inc	hl
	inc	(hl)
	jp	00143$
00147$:
	C$main.c$143$2_0$149	= .
	.globl	C$main.c$143$2_0$149
;main.c:143: for(int i = 0; i < HGT; i++)
	ldhl	sp,	#6
	inc	(hl)
	jp	NZ,00146$
	inc	hl
	inc	(hl)
	jp	00146$
00135$:
	C$main.c$184$1_0$138	= .
	.globl	C$main.c$184$1_0$138
;main.c:184: return 1;
	ld	de, #0x0001
	C$main.c$185$1_0$138	= .
	.globl	C$main.c$185$1_0$138
;main.c:185: }
	add	sp, #10
	C$main.c$185$1_0$138	= .
	.globl	C$main.c$185$1_0$138
	XG$collision$0$0	= .
	.globl	XG$collision$0$0
	ret
	.area _CODE
	.area _CABS (ABS)
