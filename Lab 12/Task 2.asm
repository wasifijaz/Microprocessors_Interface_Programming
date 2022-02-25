
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.MODEL SMALL
.STACK 100h
.DATA  
     ;array declaration      
     arr1  db   1,2,3,4,5
     arr2  db   1,2,3,5,5
     str1  db   "Aray not Equal. $"
     str2  db   "Aray is Equal. $"   
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV CX,5
        MOV SI,0 
        MOV AH,2
        
        CALL cmpArr

     MAIN ENDP

cmpArr PROC
    comparing:
          MOV DL, arr1[SI]
          MOV BL, arr2[SI]
          CMP BL, DL
          JNE msg
          INC SI
        LOOP comparing
        
        LEA DX, str2 
        MOV AH, 09
        INT 21H
        JMP endProg
    
    cmpArr endp 

msg:
   LEA DX, str1 
   MOV AH, 09
   INT 21H
   JMP endProg
   
endProg:

    END MAIN
ret   
