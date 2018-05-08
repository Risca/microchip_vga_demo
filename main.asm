	; use PIC 16F684
	list		p=16f684
	#include	<p16f684.inc>

	; set configuration word.
	__CONFIG	_FCMEN_OFF & _IESO_OFF & _BOD_OFF & _CPD_OFF & _CP_OFF & _MCLRE_OFF & _PWRTE_OFF & _WDT_OFF & _INTRC_OSC_NOCLKOUT

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

reset_vector	code	0x000
	goto	Initialize

int_vector	code	0x004
isr
	movwf	w_temp
	movf	STATUS, w
	movwf	status_temp

	; TMR1 is our only enabled interrupt
	bcf	PIR1, TMR1IF
	btfss	PORTC, 3
	goto	SetSyncHigh

SetSyncLow:
	movlw	0x30
	movwf	T1CON
	movlw	0xff
	movwf	TMR1H
	bcf	PORTC,3
	movlw	0xF2
	movwf	TMR1L
	movlw	0x31
	movwf	T1CON
	goto	EndIsr

SetSyncHigh:
	bsf	PORTC,3
	movlw	0x30
	movwf	T1CON
	movlw	0xEF
	banksel TMR1H
	movwf	TMR1H
	movlw	0xE3
	movwf	TMR1L
	movlw	0x31
	movwf	T1CON
	goto	EndIsr

EndIsr
	movf	status_temp, w
	movwf	STATUS
	swapf	w_temp, f
	swapf	w_temp, w
	retfie

;******************************************************************************
; Initialize
;	Initialize timers and outputs
;******************************************************************************
MAIN_PROG	code
Initialize
	; init variables
	clrf	g_FrameCounter
	clrf	g_CurrentScene

	movlw	0x70
	banksel	OSCCON
	movwf	OSCCON
OscillatorWait
	btfss	OSCCON, 2
	goto OscillatorWait

	banksel	ANSEL
	clrf	ANSEL

	movlw	0xF8
	banksel TRISA
	movwf	TRISA

	movlw	0x07
	banksel	PORTA
	movwf	PORTA

	movlw	0xF7
	banksel	TRISC
	movwf	TRISC

	movlw	0x08
	banksel	PORTC
	movwf	PORTC

	banksel	TMR1L
	clrf	TMR1L
	clrf	TMR1H

	movlw	0x01
	banksel	PIE1
	movwf	PIE1

	movlw	0x31
	banksel	T1CON
	movwf	T1CON

	movlw	0x3E
	banksel	PR2
	movwf	PR2

	movlw	0xBF
	banksel	CCP1CON
	movwf	CCP1CON

	movlw	0x08
	banksel CCPR1L
	movwf	CCPR1L

	movlw	0x01
	banksel	PWM1CON
	movwf	PWM1CON

	banksel	PIR1
	bcf	PIR1, TMR2IF

	movlw	0x04
	banksel	T2CON
	movwf	T2CON

	banksel	PIR1
Tmr2Wait
	btfss	PIR1, TMR2IF
	goto	Tmr2Wait

	movlw	0xC7
	banksel	TRISC
	movwf	TRISC

	movlw	0xC0
	banksel	INTCON
	movwf	INTCON

	banksel PORTA

;******************************************************************************
; ShowFrame
;	Show a frame based on g_CurrentScene. Will increment g_FrameCounter
;******************************************************************************
ShowFrame
; Wait for VSYNC
WaitForVSyncLow
	btfsc	PORTC, 3
	goto	WaitForVSyncLow
; Clear screen color
	clrf	PORTA
WaitForVSyncHigh
	btfss	PORTC, 3
	goto	WaitForVSyncHigh

	movlw	SceneRegistryStart
	addwf	g_CurrentScene, w
	btfsc	STATUS, C
	incf	PCLATH, f
	movwf	PCL
SceneRegistryStart
	goto	Scene0
	goto	Scene1
	goto	Scene2
	goto	Scene3
	goto	Scene4
	goto	Scene5
	goto	Scene6
	goto	Scene7

Scene0
	movlw	0x01
	movwf	g_ScreenColor
	goto	PrintSingleColorScreen

Scene1
	movlw	0x02
	movwf	g_ScreenColor
	goto	PrintSingleColorScreen

Scene2
	movlw	0x04
	movwf	g_ScreenColor
	goto	PrintSingleColorScreen

Scene3
	movlw	0x07
	movwf	g_ScreenColor
	goto	PrintSingleColorScreen

Scene4
	goto 	EndFrame

Scene5
	goto 	EndFrame

Scene6
	goto 	EndFrame

Scene7
	goto 	EndFrame

EndFrame:
	movlw	D'60' ; 1 second
	xorwf	g_FrameCounter, w
	btfss	STATUS, Z
	goto	SameScene

NextScene
	incf	g_CurrentScene, f
	movf	g_CurrentScene, w
	andlw	B'00000011'
	movwf	g_CurrentScene
	clrf	g_FrameCounter
	goto	ShowFrame

SameScene
	nop
	nop
	nop
	incf	g_FrameCounter, f
	goto ShowFrame

PrintSingleColorScreen
	movf	g_ScreenColor, w
	movwf	PORTA

	goto EndFrame

	end
