
_main:

;Lab1.c,1 :: 		void main() {
;Lab1.c,2 :: 		TRISD=0x00;
	CLRF       TRISD+0
;Lab1.c,3 :: 		while(1)
L_main0:
;Lab1.c,5 :: 		PORTD=00000000;
	CLRF       PORTD+0
;Lab1.c,6 :: 		PORTD.RD0=1;
	BSF        PORTD+0, 0
;Lab1.c,7 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;Lab1.c,8 :: 		PORTD.RD0=0;
	BCF        PORTD+0, 0
;Lab1.c,10 :: 		PORTD.RD1=1;
	BSF        PORTD+0, 1
;Lab1.c,11 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;Lab1.c,12 :: 		PORTD.RD1=0;
	BCF        PORTD+0, 1
;Lab1.c,14 :: 		PORTD.RD2=1;
	BSF        PORTD+0, 2
;Lab1.c,15 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;Lab1.c,16 :: 		PORTD.RD2=0;
	BCF        PORTD+0, 2
;Lab1.c,18 :: 		PORTD.RD3=1;
	BSF        PORTD+0, 3
;Lab1.c,19 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;Lab1.c,20 :: 		PORTD.RD3=0;
	BCF        PORTD+0, 3
;Lab1.c,22 :: 		PORTD.RD4=1;
	BSF        PORTD+0, 4
;Lab1.c,23 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;Lab1.c,24 :: 		PORTD.RD4=0;
	BCF        PORTD+0, 4
;Lab1.c,26 :: 		PORTD.RD5=1;
	BSF        PORTD+0, 5
;Lab1.c,27 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;Lab1.c,28 :: 		PORTD.RD5=0;
	BCF        PORTD+0, 5
;Lab1.c,30 :: 		PORTD.RD6=1;
	BSF        PORTD+0, 6
;Lab1.c,31 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
;Lab1.c,32 :: 		PORTD.RD6=0;
	BCF        PORTD+0, 6
;Lab1.c,34 :: 		PORTD.RD7=1;
	BSF        PORTD+0, 7
;Lab1.c,35 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
	NOP
;Lab1.c,36 :: 		PORTD.RD7=0;
	BCF        PORTD+0, 7
;Lab1.c,37 :: 		}
	GOTO       L_main0
;Lab1.c,38 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
