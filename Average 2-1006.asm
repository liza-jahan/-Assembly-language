
.MODEL SMALL
.DATA
    A DB 1
    B DB 1
    C DB 1
    D DB ?
    
.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AL,A
    mov bl,2
    mul bl 
    
    mov bl,al
    
    MOV cL,B
    mov bl,3    ;MULTIPLICATION A AND B
    MUL BL
    
    MOV CL,AL   ;STORE INTO CL REGISTER 
    
    MOV AL,C 
    mov bl,4
    mul bl
    
    mov dl,al
    
    
   add bl,cl
   add bl,dl
   ADD bl,48
   mov cl,bl
    
   
    mov dx,0
    mov al,cl
    
     mov  bl,9
     div bl
   
   
    MOV AH,2
    MOV DL,bl   ;PRINT RESULT
    INT 21H
    
    
MAIN ENDP
END
