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
