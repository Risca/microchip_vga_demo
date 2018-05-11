PrintTestImage
;BACK PORCH
;initial delay from VSYNC high: ~7 us -> 33*31.5 - 7 = 1032.5 -> 1031 us + set color
;delay_us(1031) {
	movlw	D'3'
	movwf	g_WaitCount2
	movlw	D'170'
	movwf	g_WaitCount1
u0
	decfsz	g_WaitCount1, f
	goto	u0
	decfsz	g_WaitCount2, f
	goto	u0
	nop
;}
	movlw	D'7'
	movwf	PORTA
;VISIBLE AREA
;delay_us(31) {
	movlw	D'20'
	movwf	g_WaitCount1
u1
	decfsz	g_WaitCount1, f
	goto	u1
	nop
;}
;clear color
	clrf	PORTA
;200 lines delay minus 2 instructions
;delay_us(6299) {
	movlw	D'17'
	movwf	g_WaitCount2
	movlw	D'91'
	movwf	g_WaitCount1
u2
	decfsz	g_WaitCount1, f
	goto	u2
	decfsz	g_WaitCount2, f
	goto	u2
;}
;set color
	movlw	D'3'
	movwf	PORTA
;show for (80*31.5 - 1) us, then clear
;delay_us(2519) {
	movlw	D'7'
	movwf	g_WaitCount2
	movlw	D'137'
	movwf	g_WaitCount1
u3
	decfsz	g_WaitCount1, f
	goto	u3
	decfsz	g_WaitCount2, f
	goto	u3
	nop
	nop
;}
	clrf	PORTA
	nop
;sleep for rest of frame (198 lines)
;delay_us(6236) {
	movlw	D'17'
	movwf	g_WaitCount2
	movlw	D'49'
	movwf	g_WaitCount1
u5
	decfsz	g_WaitCount1, f
	goto	u5
	decfsz	g_WaitCount2, f
	goto	u5
;}
	movlw	D'7'
	movwf	PORTA
;delay_us(31) {
	movlw	D'20'
	movwf	g_WaitCount1
u6
	decfsz	g_WaitCount1, f
	goto	u6
	nop
;}
;clear color
	clrf	PORTA
;FRONT PORCH
;delay_us(378) {
	movlw	D'251'
	movwf	g_WaitCount1
u7
	decfsz	g_WaitCount1, f
	goto	u7
	nop
	nop
;}

;adjustment delays
;delay_us(39) {
	movlw	D'25'
	movwf	g_WaitCount1
u4
	decfsz	g_WaitCount1, f
	goto	u4
	nop
	nop
;}
	goto	EndFrame
