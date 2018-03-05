#include <xc.h>
__PROG_CONFIG(1, 0x184);

static inline void tmr1_isr(void)
{
	static char sync = 1;
	if (sync == 0) {
		PORTC = 0x00;
		T1CON = 0x30;
		TMR1H = 0xFF;
		TMR1L = 0xFF - 0x07;
		T1CON = 0x31;
		sync = 1;
	}
	else {
		// statements in this order due to timing
		sync = 0;
		T1CON = 0x30;
		PORTC = 0x08;
		TMR1H = 0xFF - 0x10;
		TMR1L = 0xFF - 0x2B;
		T1CON = 0x31;
	}
}

void __interrupt isr(void)
{
	if (TMR1IF == 1) {
		tmr1_isr();
		TMR1IF = 0;
	}
}

void main(void)
{
	OSCCON = 0x70;
	while ((OSCCON & 0x4) == 0);

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
	T2CON = 0x04;
	while (TMR2IF == 0);
	TRISC = 0xC7;

	INTCON = 0xC0;

	while (1) {
	}
}

