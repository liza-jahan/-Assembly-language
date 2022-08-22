
.MODEL SMALL
.DATA
    A DB 2
    B DB 2
    C DB 1
    D DB 3 
    E DB 1
    F DB 2
    
.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX   
    
    
 
    MOV AL,A
    MOV BL,B    
    MUL BL
    
    MOV CL,AL   
    
   
    MOV AL,C
    MOV BL,D    
    MUL BL
    
    ADD CL,AL  
    ADD CL,48
    
     mov bh,E
     mov dh,F
     
     
     
    MOV AH,2
    MOV DL,CL   
    INT 21H
    
    
MAIN ENDP
END
