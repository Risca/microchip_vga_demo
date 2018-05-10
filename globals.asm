cblock	0x20
	g_WaitCount1
	g_WaitCount2
	g_FrameCounter
	g_CurrentScene
	g_ScreenColor
endc

; w_temp and status_temp places last in GPR to be accessable in both banks
w_temp		equ	0x7E
status_temp	equ	0x7F

