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
; scene functions
;	Include all scenes here
;******************************************************************************
#include "print_single_color.asm"

;******************************************************************************
; Initialize
;	Initialize timers and outputs
;******************************************************************************
#include "init.asm"

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

	end
