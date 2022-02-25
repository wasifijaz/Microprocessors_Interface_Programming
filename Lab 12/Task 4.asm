
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
.stack 100h

.data
    newLine db 13, 10, "$"

.code  

MAIN proc

    MOV CX, 7H
    MOV BX, 0000H
    
    readLOOP:
        MOV AH, 1H
        INT 21H
        MOV [BX], AL
        INC BX
        LOOP readLOOP   
    
    ;NEXT LINE 
    MOV AH, 09
    MOV DX, offset newLine
    INT 21h
     
    MOV CX, 7H 
    MOV BX, 0000H  
    
    writeLOOP:
        MOV DL, [BX]
        INC BX
        MOV AH, 2 
        INT 21h
        LOOP writeLOOP   
    
    
    MAIN endp
ret



