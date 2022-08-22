



.MODEL SMALL
.DATA
    A DB 2
    B DB 4
    C DB 1
   
    
.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AL,A
    ADD AL,48
   
     
    MOV AH,2
    MOV DL,AL   
    INT 21H
    
    
    
    
    MOV AL,B
    MOV BL,C    ;MULTIPLICATION A AND B
    MUL BL
    
    MOV CL,AL   ;STORE INTO CL REGISTER 
    ADD CL,48
   
   MOV AH,2
   MOV DL,10
   INT 21H
   MOV DL,13
   INT 21H  
             
    
   
  
    MOV AH,2
    MOV DL,CL   
    INT 21H
    
    
MAIN ENDP
END


