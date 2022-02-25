
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV BX, 1230h;
MOV SI, 4h;
MOV 0005h[BX][SI],1234h;
MOV AL,0005h[BX][SI];

ret




