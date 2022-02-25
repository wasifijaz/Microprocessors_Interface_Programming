
_keypadinit:

;Task1.c,11 :: 		void keypadinit()
;Task1.c,13 :: 		TRISB=0b11110000;
	MOVLW      240
	MOVWF      TRISB+0
;Task1.c,14 :: 		PORTB=0x00000000;
	CLRF       PORTB+0
;Task1.c,15 :: 		OPTION_REG =0x7F;
	MOVLW      127
	MOVWF      OPTION_REG+0
;Task1.c,16 :: 		}
L_end_keypadinit:
	RETURN
; end of _keypadinit

_readswitches:

;Task1.c,18 :: 		char readswitches()
;Task1.c,20 :: 		rowa=0; rowb=1; rowc=1; rowd=1; // test row A
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
	BSF        RB1_bit+0, BitPos(RB1_bit+0)
	BSF        RB2_bit+0, BitPos(RB2_bit+0)
	BSF        RB3_bit+0, BitPos(RB3_bit+0)
;Task1.c,21 :: 		if (c1==0)
	BTFSC      RB4_bit+0, BitPos(RB4_bit+0)
	GOTO       L_readswitches0
;Task1.c,23 :: 		delay_ms(1000);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_readswitches1:
	DECFSZ     R13+0, 1
	GOTO       L_readswitches1
	DECFSZ     R12+0, 1
	GOTO       L_readswitches1
	DECFSZ     R11+0, 1
	GOTO       L_readswitches1
	NOP
;Task1.c,24 :: 		while(c1==0);
L_readswitches2:
	BTFSC      RB4_bit+0, BitPos(RB4_bit+0)
	GOTO       L_readswitches3
	GOTO       L_readswitches2
L_readswitches3:
;Task1.c,25 :: 		return '1';
	MOVLW      49
	MOVWF      R0+0
	GOTO       L_end_readswitches
;Task1.c,26 :: 		}
L_readswitches0:
;Task1.c,27 :: 		if (c2==0)
	BTFSC      RB5_bit+0, BitPos(RB5_bit+0)
	GOTO       L_readswitches4
;Task1.c,29 :: 		delay_ms(1000);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_readswitches5:
	DECFSZ     R13+0, 1
	GOTO       L_readswitches5
	DECFSZ     R12+0, 1
	GOTO       L_readswitches5
	DECFSZ     R11+0, 1
	GOTO       L_readswitches5
	NOP
;Task1.c,30 :: 		while(c2==0);
L_readswitches6:
	BTFSC      RB5_bit+0, BitPos(RB5_bit+0)
	GOTO       L_readswitches7
	GOTO       L_readswitches6
L_readswitches7:
;Task1.c,31 :: 		return '2';
	MOVLW      50
	MOVWF      R0+0
	GOTO       L_end_readswitches
;Task1.c,32 :: 		}
L_readswitches4:
;Task1.c,33 :: 		if (c3==0)
	BTFSC      RB6_bit+0, BitPos(RB6_bit+0)
	GOTO       L_readswitches8
;Task1.c,35 :: 		delay_ms(1000);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_readswitches9:
	DECFSZ     R13+0, 1
	GOTO       L_readswitches9
	DECFSZ     R12+0, 1
	GOTO       L_readswitches9
	DECFSZ     R11+0, 1
	GOTO       L_readswitches9
	NOP
;Task1.c,36 :: 		while(c3==0);
L_readswitches10:
	BTFSC      RB6_bit+0, BitPos(RB6_bit+0)
	GOTO       L_readswitches11
	GOTO       L_readswitches10
L_readswitches11:
;Task1.c,37 :: 		return '3';
	MOVLW      51
	MOVWF      R0+0
	GOTO       L_end_readswitches
;Task1.c,38 :: 		}
L_readswitches8:
;Task1.c,40 :: 		rowa=1; rowb=0; rowc=1; rowd=1; // test row B
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
	BSF        RB2_bit+0, BitPos(RB2_bit+0)
	BSF        RB3_bit+0, BitPos(RB3_bit+0)
;Task1.c,41 :: 		if (c1==0)
	BTFSC      RB4_bit+0, BitPos(RB4_bit+0)
	GOTO       L_readswitches12
;Task1.c,43 :: 		delay_ms(1000);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_readswitches13:
	DECFSZ     R13+0, 1
	GOTO       L_readswitches13
	DECFSZ     R12+0, 1
	GOTO       L_readswitches13
	DECFSZ     R11+0, 1
	GOTO       L_readswitches13
	NOP
;Task1.c,44 :: 		while(c1==0);
L_readswitches14:
	BTFSC      RB4_bit+0, BitPos(RB4_bit+0)
	GOTO       L_readswitches15
	GOTO       L_readswitches14
L_readswitches15:
;Task1.c,45 :: 		return '4';
	MOVLW      52
	MOVWF      R0+0
	GOTO       L_end_readswitches
;Task1.c,46 :: 		}
L_readswitches12:
;Task1.c,47 :: 		if (c2==0)
	BTFSC      RB5_bit+0, BitPos(RB5_bit+0)
	GOTO       L_readswitches16
;Task1.c,49 :: 		delay_ms(1000);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_readswitches17:
	DECFSZ     R13+0, 1
	GOTO       L_readswitches17
	DECFSZ     R12+0, 1
	GOTO       L_readswitches17
	DECFSZ     R11+0, 1
	GOTO       L_readswitches17
	NOP
;Task1.c,50 :: 		while(c2==0);
L_readswitches18:
	BTFSC      RB5_bit+0, BitPos(RB5_bit+0)
	GOTO       L_readswitches19
	GOTO       L_readswitches18
L_readswitches19:
;Task1.c,51 :: 		return '5';
	MOVLW      53
	MOVWF      R0+0
	GOTO       L_end_readswitches
;Task1.c,52 :: 		}
L_readswitches16:
;Task1.c,53 :: 		if (c3==0)
	BTFSC      RB6_bit+0, BitPos(RB6_bit+0)
	GOTO       L_readswitches20
;Task1.c,55 :: 		delay_ms(1000);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_readswitches21:
	DECFSZ     R13+0, 1
	GOTO       L_readswitches21
	DECFSZ     R12+0, 1
	GOTO       L_readswitches21
	DECFSZ     R11+0, 1
	GOTO       L_readswitches21
	NOP
;Task1.c,56 :: 		while(c3==0);
L_readswitches22:
	BTFSC      RB6_bit+0, BitPos(RB6_bit+0)
	GOTO       L_readswitches23
	GOTO       L_readswitches22
L_readswitches23:
;Task1.c,57 :: 		return '6';
	MOVLW      54
	MOVWF      R0+0
	GOTO       L_end_readswitches
;Task1.c,58 :: 		}
L_readswitches20:
;Task1.c,60 :: 		rowa=1; rowb=1; rowc=0; rowd=1; // test row C
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
	BSF        RB1_bit+0, BitPos(RB1_bit+0)
	BCF        RB2_bit+0, BitPos(RB2_bit+0)
	BSF        RB3_bit+0, BitPos(RB3_bit+0)
;Task1.c,61 :: 		if (c1==0)
	BTFSC      RB4_bit+0, BitPos(RB4_bit+0)
	GOTO       L_readswitches24
;Task1.c,63 :: 		delay_ms(1000);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_readswitches25:
	DECFSZ     R13+0, 1
	GOTO       L_readswitches25
	DECFSZ     R12+0, 1
	GOTO       L_readswitches25
	DECFSZ     R11+0, 1
	GOTO       L_readswitches25
	NOP
;Task1.c,64 :: 		while(c1==0);
L_readswitches26:
	BTFSC      RB4_bit+0, BitPos(RB4_bit+0)
	GOTO       L_readswitches27
	GOTO       L_readswitches26
L_readswitches27:
;Task1.c,65 :: 		return '7';
	MOVLW      55
	MOVWF      R0+0
	GOTO       L_end_readswitches
;Task1.c,66 :: 		}
L_readswitches24:
;Task1.c,67 :: 		if (c2==0)
	BTFSC      RB5_bit+0, BitPos(RB5_bit+0)
	GOTO       L_readswitches28
;Task1.c,69 :: 		delay_ms(1000);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_readswitches29:
	DECFSZ     R13+0, 1
	GOTO       L_readswitches29
	DECFSZ     R12+0, 1
	GOTO       L_readswitches29
	DECFSZ     R11+0, 1
	GOTO       L_readswitches29
	NOP
;Task1.c,70 :: 		while(c2==0);
L_readswitches30:
	BTFSC      RB5_bit+0, BitPos(RB5_bit+0)
	GOTO       L_readswitches31
	GOTO       L_readswitches30
L_readswitches31:
;Task1.c,71 :: 		return '8';
	MOVLW      56
	MOVWF      R0+0
	GOTO       L_end_readswitches
;Task1.c,72 :: 		}
L_readswitches28:
;Task1.c,73 :: 		if (c3==0)
	BTFSC      RB6_bit+0, BitPos(RB6_bit+0)
	GOTO       L_readswitches32
;Task1.c,75 :: 		delay_ms(1000);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_readswitches33:
	DECFSZ     R13+0, 1
	GOTO       L_readswitches33
	DECFSZ     R12+0, 1
	GOTO       L_readswitches33
	DECFSZ     R11+0, 1
	GOTO       L_readswitches33
	NOP
;Task1.c,76 :: 		while(c3==0);
L_readswitches34:
	BTFSC      RB6_bit+0, BitPos(RB6_bit+0)
	GOTO       L_readswitches35
	GOTO       L_readswitches34
L_readswitches35:
;Task1.c,77 :: 		return '9';
	MOVLW      57
	MOVWF      R0+0
	GOTO       L_end_readswitches
;Task1.c,78 :: 		}
L_readswitches32:
;Task1.c,80 :: 		rowa=1; rowb=1; rowc=1; rowd=0; // test row D
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
	BSF        RB1_bit+0, BitPos(RB1_bit+0)
	BSF        RB2_bit+0, BitPos(RB2_bit+0)
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Task1.c,81 :: 		if (c1==0)
	BTFSC      RB4_bit+0, BitPos(RB4_bit+0)
	GOTO       L_readswitches36
;Task1.c,83 :: 		delay_ms(1000);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_readswitches37:
	DECFSZ     R13+0, 1
	GOTO       L_readswitches37
	DECFSZ     R12+0, 1
	GOTO       L_readswitches37
	DECFSZ     R11+0, 1
	GOTO       L_readswitches37
	NOP
;Task1.c,84 :: 		while(c1==0);
L_readswitches38:
	BTFSC      RB4_bit+0, BitPos(RB4_bit+0)
	GOTO       L_readswitches39
	GOTO       L_readswitches38
L_readswitches39:
;Task1.c,85 :: 		return 'S';
	MOVLW      83
	MOVWF      R0+0
	GOTO       L_end_readswitches
;Task1.c,86 :: 		}
L_readswitches36:
;Task1.c,87 :: 		if (c2==0)
	BTFSC      RB5_bit+0, BitPos(RB5_bit+0)
	GOTO       L_readswitches40
;Task1.c,89 :: 		delay_ms(1000);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_readswitches41:
	DECFSZ     R13+0, 1
	GOTO       L_readswitches41
	DECFSZ     R12+0, 1
	GOTO       L_readswitches41
	DECFSZ     R11+0, 1
	GOTO       L_readswitches41
	NOP
;Task1.c,90 :: 		while(c2==0);
L_readswitches42:
	BTFSC      RB5_bit+0, BitPos(RB5_bit+0)
	GOTO       L_readswitches43
	GOTO       L_readswitches42
L_readswitches43:
;Task1.c,91 :: 		return '0';
	MOVLW      48
	MOVWF      R0+0
	GOTO       L_end_readswitches
;Task1.c,92 :: 		}
L_readswitches40:
;Task1.c,93 :: 		if (c3==0)
	BTFSC      RB6_bit+0, BitPos(RB6_bit+0)
	GOTO       L_readswitches44
;Task1.c,95 :: 		delay_ms(1000);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_readswitches45:
	DECFSZ     R13+0, 1
	GOTO       L_readswitches45
	DECFSZ     R12+0, 1
	GOTO       L_readswitches45
	DECFSZ     R11+0, 1
	GOTO       L_readswitches45
	NOP
;Task1.c,96 :: 		while(c3==0);
L_readswitches46:
	BTFSC      RB6_bit+0, BitPos(RB6_bit+0)
	GOTO       L_readswitches47
	GOTO       L_readswitches46
L_readswitches47:
;Task1.c,97 :: 		return 'H';
	MOVLW      72
	MOVWF      R0+0
	GOTO       L_end_readswitches
;Task1.c,98 :: 		}
L_readswitches44:
;Task1.c,99 :: 		return 'n';
	MOVLW      110
	MOVWF      R0+0
;Task1.c,100 :: 		}
L_end_readswitches:
	RETURN
; end of _readswitches

_getkey:

;Task1.c,102 :: 		char getkey()
;Task1.c,104 :: 		char key='n';
	MOVLW      110
	MOVWF      getkey_key_L0+0
;Task1.c,105 :: 		while (key=='n')
L_getkey48:
	MOVF       getkey_key_L0+0, 0
	XORLW      110
	BTFSS      STATUS+0, 2
	GOTO       L_getkey49
;Task1.c,106 :: 		key=readswitches();
	CALL       _readswitches+0
	MOVF       R0+0, 0
	MOVWF      getkey_key_L0+0
	GOTO       L_getkey48
L_getkey49:
;Task1.c,107 :: 		return key;
	MOVF       getkey_key_L0+0, 0
	MOVWF      R0+0
;Task1.c,108 :: 		}
L_end_getkey:
	RETURN
; end of _getkey

_main:

;Task1.c,111 :: 		void main ()
;Task1.c,113 :: 		char key='n';
;Task1.c,114 :: 		TRISD=0x00;
	CLRF       TRISD+0
;Task1.c,115 :: 		PORTD=0x00;
	CLRF       PORTD+0
;Task1.c,116 :: 		keypadinit();
	CALL       _keypadinit+0
;Task1.c,117 :: 		while(1)
L_main50:
;Task1.c,119 :: 		key= getkey();
	CALL       _getkey+0
;Task1.c,120 :: 		keyreading(key);
	MOVF       R0+0, 0
	MOVWF      FARG_keyreading_k+0
	CALL       _keyreading+0
;Task1.c,121 :: 		PORTD=j;
	MOVF       _j+0, 0
	MOVWF      PORTD+0
;Task1.c,122 :: 		}
	GOTO       L_main50
;Task1.c,123 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_keyreading:

;Task1.c,125 :: 		keyreading(char k)
;Task1.c,127 :: 		if(k=='0')
	MOVF       FARG_keyreading_k+0, 0
	XORLW      48
	BTFSS      STATUS+0, 2
	GOTO       L_keyreading52
;Task1.c,128 :: 		j=0x00;
	CLRF       _j+0
	CLRF       _j+1
L_keyreading52:
;Task1.c,129 :: 		if(k=='1')
	MOVF       FARG_keyreading_k+0, 0
	XORLW      49
	BTFSS      STATUS+0, 2
	GOTO       L_keyreading53
;Task1.c,130 :: 		j=0x01;
	MOVLW      1
	MOVWF      _j+0
	MOVLW      0
	MOVWF      _j+1
L_keyreading53:
;Task1.c,131 :: 		if(k=='2')
	MOVF       FARG_keyreading_k+0, 0
	XORLW      50
	BTFSS      STATUS+0, 2
	GOTO       L_keyreading54
;Task1.c,132 :: 		j=0x02;
	MOVLW      2
	MOVWF      _j+0
	MOVLW      0
	MOVWF      _j+1
L_keyreading54:
;Task1.c,133 :: 		if(k=='3')
	MOVF       FARG_keyreading_k+0, 0
	XORLW      51
	BTFSS      STATUS+0, 2
	GOTO       L_keyreading55
;Task1.c,134 :: 		j=0x03;
	MOVLW      3
	MOVWF      _j+0
	MOVLW      0
	MOVWF      _j+1
L_keyreading55:
;Task1.c,135 :: 		if(k=='4')
	MOVF       FARG_keyreading_k+0, 0
	XORLW      52
	BTFSS      STATUS+0, 2
	GOTO       L_keyreading56
;Task1.c,136 :: 		j=0x04;
	MOVLW      4
	MOVWF      _j+0
	MOVLW      0
	MOVWF      _j+1
L_keyreading56:
;Task1.c,137 :: 		if(k=='5')
	MOVF       FARG_keyreading_k+0, 0
	XORLW      53
	BTFSS      STATUS+0, 2
	GOTO       L_keyreading57
;Task1.c,138 :: 		j=0x05;
	MOVLW      5
	MOVWF      _j+0
	MOVLW      0
	MOVWF      _j+1
L_keyreading57:
;Task1.c,139 :: 		if(k=='6')
	MOVF       FARG_keyreading_k+0, 0
	XORLW      54
	BTFSS      STATUS+0, 2
	GOTO       L_keyreading58
;Task1.c,140 :: 		j=0x06;
	MOVLW      6
	MOVWF      _j+0
	MOVLW      0
	MOVWF      _j+1
L_keyreading58:
;Task1.c,141 :: 		if(k=='7')
	MOVF       FARG_keyreading_k+0, 0
	XORLW      55
	BTFSS      STATUS+0, 2
	GOTO       L_keyreading59
;Task1.c,142 :: 		j=0x07;
	MOVLW      7
	MOVWF      _j+0
	MOVLW      0
	MOVWF      _j+1
L_keyreading59:
;Task1.c,143 :: 		if(k=='8')
	MOVF       FARG_keyreading_k+0, 0
	XORLW      56
	BTFSS      STATUS+0, 2
	GOTO       L_keyreading60
;Task1.c,144 :: 		j=0x08;
	MOVLW      8
	MOVWF      _j+0
	MOVLW      0
	MOVWF      _j+1
L_keyreading60:
;Task1.c,145 :: 		if(k=='9')
	MOVF       FARG_keyreading_k+0, 0
	XORLW      57
	BTFSS      STATUS+0, 2
	GOTO       L_keyreading61
;Task1.c,146 :: 		j=0x09;
	MOVLW      9
	MOVWF      _j+0
	MOVLW      0
	MOVWF      _j+1
L_keyreading61:
;Task1.c,147 :: 		if(k=='S')
	MOVF       FARG_keyreading_k+0, 0
	XORLW      83
	BTFSS      STATUS+0, 2
	GOTO       L_keyreading62
;Task1.c,148 :: 		j=0x0A;
	MOVLW      10
	MOVWF      _j+0
	MOVLW      0
	MOVWF      _j+1
L_keyreading62:
;Task1.c,149 :: 		if(k=='H')
	MOVF       FARG_keyreading_k+0, 0
	XORLW      72
	BTFSS      STATUS+0, 2
	GOTO       L_keyreading63
;Task1.c,150 :: 		j=0x0B;
	MOVLW      11
	MOVWF      _j+0
	MOVLW      0
	MOVWF      _j+1
L_keyreading63:
;Task1.c,151 :: 		}
L_end_keyreading:
	RETURN
; end of _keyreading
