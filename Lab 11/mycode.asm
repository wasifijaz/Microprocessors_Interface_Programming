
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV CX, 0AH         ;counter for array

arrayLoop:
         PUSH CX
LOOP arrayLoop  
  
CALL arrayAvg
CALL display

ret
    
       
; calculating average of array using subroutine  

arrayAvg PROC
    MOV CX, 0AH
    MOV AX, 0000H
    POP BX 
    
    sumLoop:
        POP BX
        ADD AX, BX
    LOOP sumLoop     
    
    MOV BX, 10            
    DIV BX          
arrayAvg endp 
     
     
; display subroutine

display PROC
    
    MOV AH, 2
    MOV DL, AL 
    ADD DL, 48 ; change to ASCII
    INT 21H
    
display endp   





