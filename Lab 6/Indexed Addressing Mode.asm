
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV DS:[1234h],90;
MOV BX,1234h;
MOV 0002h[BX],90;
MOV AL,0001h[BX];

ret




