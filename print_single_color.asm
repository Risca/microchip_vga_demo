PrintSingleColorScreen
	movf	g_ScreenColor, w
	movwf	PORTA
;delay_us(100) {
	movlw	D'66'
	movwf	g_WaitCount1
u10
	decfsz	g_WaitCount1, f
	goto u10
	nop
;}

WaitForVSyncLow
	btfsc	PORTC, 3
	goto	WaitForVSyncLow
	goto EndFrame

PrintRedScreen
	movlw	0x04
	movwf	g_ScreenColor
	goto	PrintSingleColorScreen

PrintGreenScreen
	movlw	0x02
	movwf	g_ScreenColor
	goto	PrintSingleColorScreen

PrintBlueScreen
	movlw	0x01
	movwf	g_ScreenColor
	goto	PrintSingleColorScreen

PrintWhiteScreen
	movlw	0x07
	movwf	g_ScreenColor
	goto PrintSingleColorScreen

