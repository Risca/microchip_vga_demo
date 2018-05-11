	; use PIC 16F684
	list		p=16f684
	#include	<p16f684.inc>

; set configuration word.
	__CONFIG	_FCMEN_OFF & _IESO_OFF & _BOD_OFF & _CPD_OFF & _CP_OFF & _MCLRE_OFF & _PWRTE_OFF & _WDT_OFF & _INTRC_OSC_NOCLKOUT

#include "globals.asm"

reset_vector	code	0x000
	goto	Initialize

;******************************************************************************
; isr
;	Interrupt handler
;******************************************************************************
#include	"isr.asm"

;******************************************************************************
; Initialize
;	Initialize timers and outputs
;******************************************************************************
#include "init.asm"

;******************************************************************************
; Wait for VSYNC
;	Busy waits for VSYNC negative pulse
;******************************************************************************
WaitForVSync
	btfsc	PORTC, 3
	goto	WaitForVSync
; Clear screen color
	clrf	PORTA
WaitForVSyncHigh
	btfss	PORTC, 3
	goto	WaitForVSyncHigh

;******************************************************************************
; ShowFrame
;	Show a frame based on g_CurrentScene. Will increment g_FrameCounter
;******************************************************************************
ShowFrame
; Setup for next scene:
; 1. Take address of SceneRegistryStart
	movlw	SceneRegistryStart
; 2. Add g_CurrentScene
	addwf	g_CurrentScene, w
; 3. Load into PC (take address overflow into account)
	btfsc	STATUS, C
	incf	PCLATH, f
	movwf	PCL
SceneRegistryStart
; g_CurrentScene initializes to 5, next scene will then become 6 & 3 = 1
	goto	BirdieScrollUp
	goto	BirdieScrollDown
	goto	BirdieScrollUp
	goto	BirdieScrollDown
	goto	BirdieNoScroll

EndFrame:
	movlw	D'30'
	xorwf	g_FrameCounter, w
	btfss	STATUS, Z
	goto	TurnOnAudio
	goto	TurnOffAudio
	
EndFrameContinue
	movlw	D'240'
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
	goto	ShowFrame

TurnOnAudio
	nop
	bsf	PORTC, 0
	goto	EndFrameContinue
TurnOffAudio
	bcf	PORTC, 0
	goto	EndFrameContinue

;******************************************************************************
; scene functions
;	Include all scenes here
;******************************************************************************
;#include "print_single_color.asm"
;#include "print_test_image.asm"
#include "birdie.asm"

	end
