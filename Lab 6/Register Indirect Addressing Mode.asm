
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AX, 12h; 
MOV BX,1234h;  
MOV [BX],1234h;
MOV AX,BX;


ret




