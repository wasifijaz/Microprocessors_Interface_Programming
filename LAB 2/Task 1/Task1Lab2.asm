
_main:

;Task1Lab2.c,1 :: 		void main()
;Task1Lab2.c,3 :: 		TRISD.RD7 = 0;
	BCF        TRISD+0, 7
;Task1Lab2.c,4 :: 		TRISD.RD6 = 0;
	BCF        TRISD+0, 6
;Task1Lab2.c,5 :: 		TRISD.RD5 = 0;
	BCF        TRISD+0, 5
;Task1Lab2.c,6 :: 		TRISD.RD4 = 0;
	BCF        TRISD+0, 4
;Task1Lab2.c,7 :: 		TRISD.RD3 = 0;
	BCF        TRISD+0, 3
;Task1Lab2.c,8 :: 		TRISD.RD2 = 0;
	BCF        TRISD+0, 2
;Task1Lab2.c,9 :: 		OPTION_REG.INTEDG = 1;
	BSF        OPTION_REG+0, 6
;Task1Lab2.c,10 :: 		INTCON.GIE = 1;
	BSF        INTCON+0, 7
;Task1Lab2.c,11 :: 		INTCON.INTE = 1;
	BSF        INTCON+0, 4
;Task1Lab2.c,12 :: 		while(1)
L_main0:
;Task1Lab2.c,14 :: 		PORTD.RD2=0;
	BCF        PORTD+0, 2
;Task1Lab2.c,15 :: 		PORTD.RD3=0;
	BCF        PORTD+0, 3
;Task1Lab2.c,16 :: 		PORTD.RD4=0;
	BCF        PORTD+0, 4
;Task1Lab2.c,18 :: 		PORTD.RD7=1;
	BSF        PORTD+0, 7
;Task1Lab2.c,19 :: 		PORTD.RD6=1;
	BSF        PORTD+0, 6
;Task1Lab2.c,20 :: 		PORTD.RD5=1;
	BSF        PORTD+0, 5
;Task1Lab2.c,21 :: 		Delay_ms(1000);
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
;Task1Lab2.c,23 :: 		PORTD.RD7=0;
	BCF        PORTD+0, 7
;Task1Lab2.c,24 :: 		PORTD.RD6=0;
	BCF        PORTD+0, 6
;Task1Lab2.c,25 :: 		PORTD.RD5=0;
	BCF        PORTD+0, 5
;Task1Lab2.c,26 :: 		Delay_ms(1000);
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
;Task1Lab2.c,27 :: 		}
	GOTO       L_main0
;Task1Lab2.c,28 :: 		}
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

;Task1Lab2.c,29 :: 		void interrupt()
;Task1Lab2.c,31 :: 		if (INTCON.INTF==1)
	BTFSS      INTCON+0, 1
	GOTO       L_interrupt4
;Task1Lab2.c,33 :: 		PORTD.RD2=1;
	BSF        PORTD+0, 2
;Task1Lab2.c,34 :: 		Delay_ms(1000);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_interrupt5:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt5
	DECFSZ     R12+0, 1
	GOTO       L_interrupt5
	DECFSZ     R11+0, 1
	GOTO       L_interrupt5
	NOP
;Task1Lab2.c,35 :: 		PORTD.RD2=0;
	BCF        PORTD+0, 2
;Task1Lab2.c,37 :: 		PORTD.RD3=1;
	BSF        PORTD+0, 3
;Task1Lab2.c,38 :: 		Delay_ms(1000);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_interrupt6:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt6
	DECFSZ     R12+0, 1
	GOTO       L_interrupt6
	DECFSZ     R11+0, 1
	GOTO       L_interrupt6
	NOP
;Task1Lab2.c,39 :: 		PORTD.RD3=0;
	BCF        PORTD+0, 3
;Task1Lab2.c,41 :: 		PORTD.RD4=1;
	BSF        PORTD+0, 4
;Task1Lab2.c,42 :: 		Delay_ms(1000);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_interrupt7:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt7
	DECFSZ     R12+0, 1
	GOTO       L_interrupt7
	DECFSZ     R11+0, 1
	GOTO       L_interrupt7
	NOP
;Task1Lab2.c,43 :: 		PORTD.RD4=0;
	BCF        PORTD+0, 4
;Task1Lab2.c,45 :: 		INTCON.INTF = 0;
	BCF        INTCON+0, 1
;Task1Lab2.c,46 :: 		}
L_interrupt4:
;Task1Lab2.c,47 :: 		}
L_end_interrupt:
L__interrupt10:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt
