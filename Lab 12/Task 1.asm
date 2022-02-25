
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


.data
str1 db "Enter First Digit of Marks: $"
str2 db "Grade Scored: $"


.code     
   
   LEA DX, str1 
   MOV AH, 09
   INT 21H   
   
   MOV AH, 01
   INT 21H
   SUB AX, 48
   MOV BL, AL
   
   LEA DX, str2
   MOV AH, 09
   INT 21H
    
   CMP BL, 5
   JLE below50
                 
   CMP BL, 6
   JLE below60 

   CMP BL, 7   
   JLE below70
      
   CMP BL, 8
   JLE below80
   
   CMP BL, 9
   JLE below90
   
   below50:
    CALL gradeF
    JMP endProg
   
   below60:
    CALL gradeD 
    JMP endProg
   
   below70:
   call gradeC
   JMP endProg
   
   below80:
    CALL gradeB
    JMP endProg
   
   below90:
    CALL gradeA
    JMP endProg
   
   endProg:
   
ret
  
  
gradeA PROC
    MOV AH, 2
    MOV DL, 'A'
    INT 21H    
    ret
    gradeA endp 

gradeB PROC
    MOV AH, 2
    MOV DL, 'B'
    INT 21H    
    ret
    gradeB endp

gradeC PROC
    MOV AH, 2
    MOV DL, 'C'
    INT 21H    
    ret
    gradeC endp
                                  
gradeD PROC
    MOV AH, 2
    MOV DL, 'D'
    INT 21H    
    ret
    gradeD endp

gradeF PROC 
    MOV AH, 2
    MOV DL, 'F'
    INT 21H    
    ret
    gradeF endp


   
