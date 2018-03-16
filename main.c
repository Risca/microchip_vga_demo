#include <xc.h>
__PROG_CONFIG(1, 0x184);

enum Scene {
	SCENE_BOX,
	SCENE_RED,
	SCENE_GREEN,
	SCENE_BLUE,
};
static enum Scene g_CurrentScene = SCENE_BOX;
static enum Scene g_NextScene = SCENE_RED;
static unsigned char g_FrameCount = 0;

void __interrupt() isr(void)
{
	// statements in this order due to timing
	TMR1IF = 0;
	if (PORTC & 0x08) {
		T1CON = 0x30;
		TMR1H = 0xFF;
		TMR1L = 0xFF - 0x0C;
		T1CON = 0x31;
		PORTC = 0x00;
	}
	else {
		NOP();
		PORTC = 0x08;
		T1CON = 0x30;
		__delay_us(2);
		TMR1H = 0xFF - 0x10;
		TMR1L = 0xFF - 0x2A;
		T1CON = 0x31;
	}
}

void draw_box(void)
{
	// delay 35 lines - VSYNC + back porch - switch-case
	__delay_ms(1);
	__delay_us(32);
	__delay_us(15);

	asm("bcf	status, 5"); // RP0=0, select bank0
	asm("movlw	7");
	asm("movwf	5");
	__delay_us(30);
	asm("clrf	5");
	asm("nop");
	__delay_us(32);
	__delay_us(32);

#define START_OFFSET 320
	__delay_us(START_OFFSET);

	__delay_us(320);

	for (char i = 0; i < 49; ++i) {
		__delay_us(8);
#asm
	bcf	status, 5	;RP0=0, select bank0
	movlw	7
	movwf	5
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	movlw	1
	movwf   5
	movlw	2
	movwf	5
	movlw	4
	movwf	5
	clrf	5
	movlw	7
	movwf	5
	nop
	nop
	nop
	nop
	nop
	clrf	5
#endasm	
		__delay_us(7);
	}

	__delay_ms(12);
	__delay_us(1214 - START_OFFSET);
	__delay_us(32);
	__delay_us(32);

	asm("movlw	7");
	asm("movwf	5");
	__delay_us(14);
	asm("movlw	1");
	asm("movwf	5");
	asm("movlw	7");
	asm("movwf	5");
	__delay_us(14);
	asm("nop");
	asm("clrf	5");

	asm("nop");
	__delay_us(32);
	__delay_us(32);
	__delay_us(32);
	__delay_us(32);
	__delay_us(32);
	__delay_us(32);
	__delay_us(32);
	__delay_us(10);
}

void red_screen(void)
{
	// delay 35 lines - VSYNC + back porch - switch-case
	__delay_ms(1);
	__delay_us(123);
	asm("nop");

	asm("movlw	1");
	asm("movwf	5");
	__delay_ms(15);
	__delay_us(350);
	asm("clrf	5");

	asm("nop");
	__delay_us(32);
	__delay_us(32);
	__delay_us(32);
	__delay_us(6);
}

void green_screen(void)
{
	// delay 35 lines - VSYNC + back porch - switch-case
	__delay_ms(1);
	__delay_us(123);
	asm("nop");

	asm("movlw	2");
	asm("movwf	5");
	__delay_ms(15);
	__delay_us(350);
	asm("clrf	5");

	asm("nop");
	__delay_us(32);
	__delay_us(32);
	__delay_us(32);
	__delay_us(6);
}

void blue_screen(void)
{
	// delay 35 lines - VSYNC + back porch - switch-case
	__delay_ms(1);
	__delay_us(123);
	asm("nop");

	asm("movlw	4");
	asm("movwf	5");
	__delay_ms(15);
	__delay_us(350);
	asm("clrf	5");

	asm("nop");
	__delay_us(32);
	__delay_us(32);
	__delay_us(32);
	__delay_us(6);
}

void main(void)
{
	OSCCON = 0x70;
	while ((OSCCON & 0x4) == 0);

	ANSEL = 0x00;
	TRISA = 0xF8;
	PORTA = 0x07;
	TRISC = 0xF7;
	PORTC = 0x08;

	TMR1L = 0;
	TMR1H = 0;
	PIE1 = 0x01;
	T1CON = 0x31;

	PR2 = 63;
	CCP1CON = 0xBF;
	CCPR1L = 0x07;
	PWM1CON = 0;
	TMR2IF = 0;
	__delay_us(7);
	NOP();
	T2CON = 0x04;
	while (TMR2IF == 0);
	TRISC = 0xC7;

	INTCON = 0xC0;

	__delay_ms(13);
	__delay_us(365);
	NOP();
	while (1) {
		switch (g_CurrentScene & 0x03) {
		case SCENE_BOX:
			draw_box();
			break;
		case SCENE_RED:
			red_screen();
			break;
		case SCENE_GREEN:
			green_screen();
			break;
		case SCENE_BLUE:
			blue_screen();
			NOP();
			NOP();
			break;
		}
		asm("incf	_g_FrameCount");
		if (g_FrameCount == 120) {
			asm("incf	_g_CurrentScene");
			asm("clrf	_g_FrameCount");
			asm("nop");
			asm("nop");
		}
		else {
			asm("nop");
		}
	}
}

