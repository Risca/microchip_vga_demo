MAIN_PROG	code
Initialize
	; init variables
	movlw	D'4'
	movwf	g_CurrentScene
	clrf	g_FrameCounter

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

	movlw	0xC6
	banksel	TRISC
	movwf	TRISC

	movlw	0x09
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

	movlw	0xC0
	banksel	INTCON
	movwf	INTCON

	banksel PORTA
