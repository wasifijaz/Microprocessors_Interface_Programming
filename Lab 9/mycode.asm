
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;STEP 5     ;N=5
ADD AX, 0Eh ;Q=1110
ADD BX, 0Eh ;B=00001110
ADD DX, 0h  ;A=00000000 

;STEP 4     ;N=4
SHR AX, 1   ;Q=0111
SHL BX, 1   ;B=00011100

;STEP 3     ;N=3
ADD DX, BX  ;A=00011100                                                      
SHR AX, 1   ;Q=0011
SHL BX, 1   ;B=00111000 
          
;STEP 2     ;N=2
ADD DX, BX  ;A=01010100
SHR AX, 1   ;Q=0001
SHL BX, 1   ;B=01110000

;STEP 1     ;N=1
ADD DX, BX  ;A=11000100
SHR AX, 1   ;Q=0000
SHL BX, 1   ;B=11100000
            
            ;N=0
ret




