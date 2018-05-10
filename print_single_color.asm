PrintSingleColorScreen
	movf	g_ScreenColor, w
	movwf	PORTA

	goto EndFrame

