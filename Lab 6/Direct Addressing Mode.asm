
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AX, 1234h; add your code here
MOV DS:[1234h],AX;
MOV BX,DS:[1234h];
ret




