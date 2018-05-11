BirdieNoScroll
;delay_cycles(61) {
	movlw	D'20'
	movwf	g_WaitCount1
u200
	decfsz	g_WaitCount1, f
	goto	u200
;}
	goto	BirdieText

BirdieScrollDown
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u300
	decfsz	g_WaitCount1, f
	goto	u300
	nop
	nop
;}
;delay_cycles(61) {
	movlw	D'20'
	movwf	g_WaitCount1
u400
	decfsz	g_WaitCount1, f
	goto	u400
;}
	goto	BirdieText

BirdieScrollUp
BirdieText
;BACK PORCH
;initial delay from VSYNC high: ~10.5 us -> 33*31.5 - 10.5 - 1 = 1028 us
;delay_cycles(2056) {
	movlw	D'3'
	movwf	g_WaitCount2
	movlw	D'170'
	movwf	g_WaitCount1
u101
	decfsz	g_WaitCount1, f
	goto	u101
	decfsz	g_WaitCount2, f
	goto	u101
	nop
;}
;VISIBLE AREA
;delay_cycles(2) {
	nop
	nop
;}
;delay_cycles(1888) {
	movlw	D'3'
	movwf	g_WaitCount2
	movlw	D'114'
	movwf	g_WaitCount1
u103
	decfsz	g_WaitCount1, f
	goto	u103
	decfsz	g_WaitCount2, f
	goto	u103
	nop
;}
;delay_cycles(5) {
	movlw	D'1'
	movwf	g_WaitCount1
u104
	decfsz	g_WaitCount1, f
	goto	u104
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
;delay_cycles(26) {
	movlw	D'8'
	movwf	g_WaitCount1
u110
	decfsz	g_WaitCount1, f
	goto	u110
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u111
	decfsz	g_WaitCount1, f
	goto	u111
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
;delay_cycles(26) {
	movlw	D'8'
	movwf	g_WaitCount1
u117
	decfsz	g_WaitCount1, f
	goto	u117
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u118
	decfsz	g_WaitCount1, f
	goto	u118
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
;delay_cycles(26) {
	movlw	D'8'
	movwf	g_WaitCount1
u124
	decfsz	g_WaitCount1, f
	goto	u124
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u125
	decfsz	g_WaitCount1, f
	goto	u125
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
;delay_cycles(26) {
	movlw	D'8'
	movwf	g_WaitCount1
u131
	decfsz	g_WaitCount1, f
	goto	u131
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u132
	decfsz	g_WaitCount1, f
	goto	u132
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(WHITE)
	movlw	D'7'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
;delay_cycles(26) {
	movlw	D'8'
	movwf	g_WaitCount1
u138
	decfsz	g_WaitCount1, f
	goto	u138
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u139
	decfsz	g_WaitCount1, f
	goto	u139
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;delay_cycles(29) {
	movlw	D'9'
	movwf	g_WaitCount1
u141
	decfsz	g_WaitCount1, f
	goto	u141
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u142
	decfsz	g_WaitCount1, f
	goto	u142
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;delay_cycles(29) {
	movlw	D'9'
	movwf	g_WaitCount1
u144
	decfsz	g_WaitCount1, f
	goto	u144
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u145
	decfsz	g_WaitCount1, f
	goto	u145
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;delay_cycles(29) {
	movlw	D'9'
	movwf	g_WaitCount1
u147
	decfsz	g_WaitCount1, f
	goto	u147
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u148
	decfsz	g_WaitCount1, f
	goto	u148
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;delay_cycles(29) {
	movlw	D'9'
	movwf	g_WaitCount1
u150
	decfsz	g_WaitCount1, f
	goto	u150
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u151
	decfsz	g_WaitCount1, f
	goto	u151
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;delay_cycles(29) {
	movlw	D'9'
	movwf	g_WaitCount1
u153
	decfsz	g_WaitCount1, f
	goto	u153
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u154
	decfsz	g_WaitCount1, f
	goto	u154
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;delay_cycles(29) {
	movlw	D'9'
	movwf	g_WaitCount1
u156
	decfsz	g_WaitCount1, f
	goto	u156
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u157
	decfsz	g_WaitCount1, f
	goto	u157
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;delay_cycles(29) {
	movlw	D'9'
	movwf	g_WaitCount1
u159
	decfsz	g_WaitCount1, f
	goto	u159
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u160
	decfsz	g_WaitCount1, f
	goto	u160
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;delay_cycles(29) {
	movlw	D'9'
	movwf	g_WaitCount1
u162
	decfsz	g_WaitCount1, f
	goto	u162
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u163
	decfsz	g_WaitCount1, f
	goto	u163
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;delay_cycles(29) {
	movlw	D'9'
	movwf	g_WaitCount1
u165
	decfsz	g_WaitCount1, f
	goto	u165
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u166
	decfsz	g_WaitCount1, f
	goto	u166
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(CYAN)
	movlw	D'3'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;delay_cycles(29) {
	movlw	D'9'
	movwf	g_WaitCount1
u168
	decfsz	g_WaitCount1, f
	goto	u168
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u169
	decfsz	g_WaitCount1, f
	goto	u169
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;delay_cycles(2) {
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
	nop
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
;delay_cycles(26) {
	movlw	D'8'
	movwf	g_WaitCount1
u174
	decfsz	g_WaitCount1, f
	goto	u174
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u175
	decfsz	g_WaitCount1, f
	goto	u175
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;delay_cycles(2) {
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
	nop
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
;delay_cycles(26) {
	movlw	D'8'
	movwf	g_WaitCount1
u180
	decfsz	g_WaitCount1, f
	goto	u180
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u181
	decfsz	g_WaitCount1, f
	goto	u181
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;delay_cycles(2) {
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
	nop
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
;delay_cycles(26) {
	movlw	D'8'
	movwf	g_WaitCount1
u186
	decfsz	g_WaitCount1, f
	goto	u186
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u187
	decfsz	g_WaitCount1, f
	goto	u187
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;delay_cycles(2) {
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
	nop
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
;delay_cycles(26) {
	movlw	D'8'
	movwf	g_WaitCount1
u192
	decfsz	g_WaitCount1, f
	goto	u192
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u193
	decfsz	g_WaitCount1, f
	goto	u193
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;delay_cycles(2) {
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
	nop
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(MAGENTA)
	movlw	D'5'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
;delay_cycles(26) {
	movlw	D'8'
	movwf	g_WaitCount1
u198
	decfsz	g_WaitCount1, f
	goto	u198
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u199
	decfsz	g_WaitCount1, f
	goto	u199
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;delay_cycles(29) {
	movlw	D'9'
	movwf	g_WaitCount1
u201
	decfsz	g_WaitCount1, f
	goto	u201
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u202
	decfsz	g_WaitCount1, f
	goto	u202
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;delay_cycles(29) {
	movlw	D'9'
	movwf	g_WaitCount1
u204
	decfsz	g_WaitCount1, f
	goto	u204
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u205
	decfsz	g_WaitCount1, f
	goto	u205
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;delay_cycles(29) {
	movlw	D'9'
	movwf	g_WaitCount1
u207
	decfsz	g_WaitCount1, f
	goto	u207
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u208
	decfsz	g_WaitCount1, f
	goto	u208
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;delay_cycles(29) {
	movlw	D'9'
	movwf	g_WaitCount1
u210
	decfsz	g_WaitCount1, f
	goto	u210
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u211
	decfsz	g_WaitCount1, f
	goto	u211
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;delay_cycles(29) {
	movlw	D'9'
	movwf	g_WaitCount1
u213
	decfsz	g_WaitCount1, f
	goto	u213
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u214
	decfsz	g_WaitCount1, f
	goto	u214
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;delay_cycles(29) {
	movlw	D'9'
	movwf	g_WaitCount1
u216
	decfsz	g_WaitCount1, f
	goto	u216
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u217
	decfsz	g_WaitCount1, f
	goto	u217
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;delay_cycles(29) {
	movlw	D'9'
	movwf	g_WaitCount1
u219
	decfsz	g_WaitCount1, f
	goto	u219
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u220
	decfsz	g_WaitCount1, f
	goto	u220
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;delay_cycles(29) {
	movlw	D'9'
	movwf	g_WaitCount1
u222
	decfsz	g_WaitCount1, f
	goto	u222
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u223
	decfsz	g_WaitCount1, f
	goto	u223
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;delay_cycles(29) {
	movlw	D'9'
	movwf	g_WaitCount1
u225
	decfsz	g_WaitCount1, f
	goto	u225
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u226
	decfsz	g_WaitCount1, f
	goto	u226
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(RED)
	movlw	D'4'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;delay_cycles(29) {
	movlw	D'9'
	movwf	g_WaitCount1
u228
	decfsz	g_WaitCount1, f
	goto	u228
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u229
	decfsz	g_WaitCount1, f
	goto	u229
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
;delay_cycles(26) {
	movlw	D'8'
	movwf	g_WaitCount1
u234
	decfsz	g_WaitCount1, f
	goto	u234
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u235
	decfsz	g_WaitCount1, f
	goto	u235
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
;delay_cycles(26) {
	movlw	D'8'
	movwf	g_WaitCount1
u240
	decfsz	g_WaitCount1, f
	goto	u240
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u241
	decfsz	g_WaitCount1, f
	goto	u241
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
;delay_cycles(26) {
	movlw	D'8'
	movwf	g_WaitCount1
u246
	decfsz	g_WaitCount1, f
	goto	u246
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u247
	decfsz	g_WaitCount1, f
	goto	u247
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
;delay_cycles(26) {
	movlw	D'8'
	movwf	g_WaitCount1
u252
	decfsz	g_WaitCount1, f
	goto	u252
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u253
	decfsz	g_WaitCount1, f
	goto	u253
	nop
	nop
;}
;delay_cycles(2) {
	nop
	nop
;}
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
	nop
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;ClearColor()
	clrf	PORTA
	nop
;SetColor(BLUE)
	movlw	D'1'
	movwf	PORTA
;delay_cycles(3) {
	nop
	nop
	nop
;}
;ClearColor()
	clrf	PORTA
;delay_cycles(26) {
	movlw	D'8'
	movwf	g_WaitCount1
u258
	decfsz	g_WaitCount1, f
	goto	u258
	nop
;}
;delay_cycles(63) {
	movlw	D'20'
	movwf	g_WaitCount1
u259
	decfsz	g_WaitCount1, f
	goto	u259
	nop
	nop
;}
;delay_cycles(24694) {
	movlw	D'33'
	movwf	g_WaitCount2
	movlw	D'16'
	movwf	g_WaitCount1
u260
	decfsz	g_WaitCount1, f
	goto	u260
	decfsz	g_WaitCount2, f
	goto	u260
	nop
;}
;delay_cycles(3) {
	nop
	nop
	nop
;}
	goto	EndFrame
