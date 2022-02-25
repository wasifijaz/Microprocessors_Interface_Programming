
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AX,5h;
MOV DX,2h;
MUL DX;

MOV BX,AX;

MOV AX,2h;
MOV DX,2h;
MUL DX;

ADD AX, BX;

MOV BL,2h;
DIV BL;
ret




