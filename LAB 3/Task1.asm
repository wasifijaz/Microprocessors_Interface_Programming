
_main:

;Task1.c,1 :: 		void main()
;Task1.c,3 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;Task1.c,4 :: 		TRISD = 0x00;
	CLRF       TRISD+0
;Task1.c,5 :: 		for(;;)
L_main0:
;Task1.c,7 :: 		PORTB = 0x20;
	MOVLW      32
	MOVWF      PORTB+0
;Task1.c,8 :: 		PORTD = 0x25;
	MOVLW      37
	MOVWF      PORTD+0
;Task1.c,9 :: 		}
	GOTO       L_main0
;Task1.c,10 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
