
_main:

;Task1.c,2 :: 		void main() {
;Task1.c,3 :: 		TRISD.RD7 = 0;
	BCF        TRISD+0, 7
;Task1.c,4 :: 		TRISD.RD6 = 0;
	BCF        TRISD+0, 6
;Task1.c,5 :: 		TRISD.RD5 = 0;
	BCF        TRISD+0, 5
;Task1.c,6 :: 		TRISD.RD4 = 0;
	BCF        TRISD+0, 4
;Task1.c,7 :: 		TRISD.RD3 = 0;
	BCF        TRISD+0, 3
;Task1.c,8 :: 		TRISD.RD2 = 0;
	BCF        TRISD+0, 2
;Task1.c,9 :: 		TRISD.RD1 = 0;
	BCF        TRISD+0, 1
;Task1.c,10 :: 		TRISD.RD0 = 0;
	BCF        TRISD+0, 0
;Task1.c,12 :: 		INTCON.GIE = 1;
	BSF        INTCON+0, 7
;Task1.c,13 :: 		INTCON.RBIE = 1;
	BSF        INTCON+0, 3
;Task1.c,14 :: 		while (1)
L_main0:
;Task1.c,16 :: 		PORTD.RD7=0;
	BCF        PORTD+0, 7
;Task1.c,17 :: 		PORTD.RD6=0;
	BCF        PORTD+0, 6
;Task1.c,18 :: 		PORTD.RD5=0;
	BCF        PORTD+0, 5
;Task1.c,19 :: 		PORTD.RD4=0;
	BCF        PORTD+0, 4
;Task1.c,21 :: 		PORTD.RD3=1;
	BSF        PORTD+0, 3
;Task1.c,22 :: 		PORTD.RD2=1;
	BSF        PORTD+0, 2
;Task1.c,23 :: 		PORTD.RD1=1;
	BSF        PORTD+0, 1
;Task1.c,24 :: 		PORTD.RD0=1;
	BSF        PORTD+0, 0
;Task1.c,25 :: 		Delay_ms(1000);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
;Task1.c,26 :: 		PORTD.RD3=0;
	BCF        PORTD+0, 3
;Task1.c,27 :: 		PORTD.RD2=0;
	BCF        PORTD+0, 2
;Task1.c,28 :: 		PORTD.RD1=0;
	BCF        PORTD+0, 1
;Task1.c,29 :: 		PORTD.RD0=0;
	BCF        PORTD+0, 0
;Task1.c,30 :: 		Delay_ms(1000);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;Task1.c,31 :: 		}
	GOTO       L_main0
;Task1.c,32 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;Task1.c,33 :: 		void interrupt()
;Task1.c,35 :: 		if (INTCON.RBIF==1)
	BTFSS      INTCON+0, 0
	GOTO       L_interrupt4
;Task1.c,37 :: 		PORTD.RD3=0;
	BCF        PORTD+0, 3
;Task1.c,38 :: 		PORTD.RD2=0;
	BCF        PORTD+0, 2
;Task1.c,39 :: 		PORTD.RD1=0;
	BCF        PORTD+0, 1
;Task1.c,40 :: 		PORTD.RD0=0;
	BCF        PORTD+0, 0
;Task1.c,42 :: 		PORTD = temp^PORTB;
	MOVF       PORTB+0, 0
	XORWF      _temp+0, 0
	MOVWF      PORTD+0
;Task1.c,43 :: 		temp = PORTB;
	MOVF       PORTB+0, 0
	MOVWF      _temp+0
;Task1.c,44 :: 		Delay_ms(2000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_interrupt5:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt5
	DECFSZ     R12+0, 1
	GOTO       L_interrupt5
	DECFSZ     R11+0, 1
	GOTO       L_interrupt5
	NOP
;Task1.c,45 :: 		INTCON.RBIF=0;
	BCF        INTCON+0, 0
;Task1.c,46 :: 		}
L_interrupt4:
;Task1.c,47 :: 		}
L_end_interrupt:
L__interrupt8:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt
