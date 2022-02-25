
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.MODEL SMALL
.STACK 100h
.DATA  
     ;array declaration      
     arr1  db   1,2,3,4,5
     arr2  db   5,4,3,2,1
  
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV CX,5
        MOV SI,0 
        MOV AH,2
        
        CALL dotProd

     MAIN ENDP

dotProd PROC
    product:
          MOV AL, arr1[SI]
          MOV BL, arr2[SI]
          MUL BL
          MOV arr1[SI], AL
          INC SI
        LOOP product 
        MOV CX,5 
        MOV SI,0
        JMP output
    dotProd endp 

output:
        MOV DL, arr1[SI]
        MOV AH, 2
        ADD DL, 30H
        INT 21H
        INC SI
        LOOP output 

   JMP endProg
   
endProg:

    END MAIN
ret   
