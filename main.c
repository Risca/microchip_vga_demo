#include <xc.h>
__PROG_CONFIG(1, 0x184);

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

void main(void)
{
	OSCCON = 0x70;
	while ((OSCCON & 0x4) == 0);

	ANSEL = 0x00;
	TRISC = 0xF7;
	PORTC = 0x08;

	TMR1L = 0;
	TMR1H = 0;
	PIE1 = 0x01;
	T1CON = 0x31;

	PR2 = 63;
	CCP1CON = 0xBE;
	CCPR1L = 0x04;
	PWM1CON = 0x01;
	TMR2IF = 0;
	__delay_us(6);
	NOP();
	T2CON = 0x04;
	while (TMR2IF == 0);
	TRISC = 0xC7;

	INTCON = 0xC0;

	while (1) {
	}
}

