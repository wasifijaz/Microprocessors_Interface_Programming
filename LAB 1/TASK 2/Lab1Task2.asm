
_main:

;Lab1Task2.c,1 :: 		void main() {
;Lab1Task2.c,2 :: 		TRISB.RB1=1;
	BSF        TRISB+0, 1
;Lab1Task2.c,3 :: 		TRISD.RD7=0;
	BCF        TRISD+0, 7
;Lab1Task2.c,4 :: 		while(1)
L_main0:
;Lab1Task2.c,6 :: 		if(PORTB.RB1 == 1)
	BTFSS      PORTB+0, 1
	GOTO       L_main2
;Lab1Task2.c,8 :: 		PORTD.RD7=1;
	BSF        PORTD+0, 7
;Lab1Task2.c,9 :: 		}
	GOTO       L_main3
L_main2:
;Lab1Task2.c,12 :: 		PORTD.RD7=0;
	BCF        PORTD+0, 7
;Lab1Task2.c,13 :: 		}
L_main3:
;Lab1Task2.c,14 :: 		}
	GOTO       L_main0
;Lab1Task2.c,15 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
