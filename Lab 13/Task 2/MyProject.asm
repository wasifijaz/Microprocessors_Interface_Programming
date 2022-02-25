
_main:

;MyProject.c,1 :: 		void main()
;MyProject.c,3 :: 		TRISB.RB0 =0;   //PORT RB0 is configured as output
	BCF        TRISB+0, 0
;MyProject.c,4 :: 		TRISC.RC0=1;     //PORT RC0 is configured as INPUT
	BSF        TRISC+0, 0
;MyProject.c,5 :: 		T1CON = 0x02; // T1CON.TMR1CS=1 to Configure timer 1 as counter
	MOVLW      2
	MOVWF      T1CON+0
;MyProject.c,6 :: 		TMR1H=0x00;
	CLRF       TMR1H+0
;MyProject.c,7 :: 		TMR1L=0x00;
	CLRF       TMR1L+0
;MyProject.c,8 :: 		T1CON.TMR1ON = 1;
	BSF        T1CON+0, 0
;MyProject.c,9 :: 		while(1)
L_main0:
;MyProject.c,12 :: 		int num = 0;
	CLRF       main_num_L1+0
	CLRF       main_num_L1+1
;MyProject.c,13 :: 		while(PIR1.TMR1IF==0)
L_main2:
	BTFSC      PIR1+0, 0
	GOTO       L_main3
;MyProject.c,17 :: 		num ++;
	INCF       main_num_L1+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_num_L1+1, 1
;MyProject.c,19 :: 		}
	GOTO       L_main2
L_main3:
;MyProject.c,20 :: 		if (num > 10){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_num_L1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main6
	MOVF       main_num_L1+0, 0
	SUBLW      10
L__main6:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
;MyProject.c,21 :: 		PORTB.RB0 = 1;
	BSF        PORTB+0, 0
;MyProject.c,22 :: 		}
L_main4:
;MyProject.c,23 :: 		T1CON.TMR1ON=0;
	BCF        T1CON+0, 0
;MyProject.c,24 :: 		TMR1H=0x00;   // Initial Values of TMR1H=0
	CLRF       TMR1H+0
;MyProject.c,25 :: 		TMR1L=0x00;   // Initial Values of TMR1L=0
	CLRF       TMR1L+0
;MyProject.c,26 :: 		T1CON.TMR1ON = 1;
	BSF        T1CON+0, 0
;MyProject.c,27 :: 		PIR1.TMR1IF=0;
	BCF        PIR1+0, 0
;MyProject.c,28 :: 		}
	GOTO       L_main0
;MyProject.c,29 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
