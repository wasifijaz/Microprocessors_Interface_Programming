
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data
even db " is even$"
odd db " is odd$"
.code

;input data
mov ah, 1
int 21h

test al, 01h

jnz check:
 lea dx, even
 
 ;write string
 mov ah, 09
 int 21h
 
 jmp exit


 check:
 lea dx, odd
 mov ah, 09
 int 21h

 exit:  
 
ret




