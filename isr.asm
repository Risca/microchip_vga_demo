; isr takes 5+13+6 = 24 instructions for sync low
;           5+12+6 = 23 instructions for sync high
;           24+23 = 47 instructions per frame
int_vector	code	0x004
isr
	movwf	w_temp
	movf	STATUS, w
	movwf	status_temp
	banksel TMR1H
	; TMR1 is our only enabled interrupt
	bcf	PIR1, TMR1IF

	btfss	PORTC, 3
	goto	SetSyncHigh

SetSyncLow:
	movlw	0x30
	movwf	T1CON
	movlw	0xff
	movwf	TMR1H
	movlw	0xF2
	bcf	PORTC,3
	movwf	TMR1L
	movlw	0x31
	movwf	T1CON
	goto	EndIsr

SetSyncHigh:
	bsf	PORTC,3
	movlw	0x30
	movwf	T1CON
	movlw	0xEF
	movwf	TMR1H
	movlw	0xDD
	movwf	TMR1L
	movlw	0x31
	movwf	T1CON

EndIsr
	movf	status_temp, w
	movwf	STATUS
	swapf	w_temp, f
	swapf	w_temp, w
	retfie
