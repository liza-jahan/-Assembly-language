
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt



; add your code here      
.model small
.stack 100h
.data
a DB "My name is Liza$"
.code


main proc
    
mov ax , @data
mov ds,ax
int 21h

 LEA dx,a

mov ah,9
int 21h

main endp
end main




