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

#define START_OFFSET 119
	while (1) {
		__delay_us(START_OFFSET);

		for (int i = 1; i < 51; ++i) {
			__delay_us(5);
			PORTA = i >> 2;
			__delay_us(10);
			PORTA = 0;
			__delay_us(9);
			NOP();

			__delay_us(5);
			PORTA = i >> 2;
			__delay_us(10);
			PORTA = 0;
			NOP();
		}

		__delay_ms(12);
		__delay_us(1389 - START_OFFSET);
	}
}

