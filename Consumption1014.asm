
.MODEL SMALL
.DATA
    A DB 1
    B DB 1
    C DB 1
  
    
.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AL,A
    Add Al,48
  
   
   
    MOV AH,2
    MOV DL,Al ;PRINT RESULT
    INT 21H
    
    
MAIN ENDP
END
