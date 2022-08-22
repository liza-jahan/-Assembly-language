
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here    
.model small
.stack 100h
.data
.code
main proc
    
MOV AL, 10
MOV BH, 2
MUL BH
 
mov ah,2
mov dl,BH
int 21h


main endp
end main

ret




