.model
.stack  100h
.DATA
    NUM1 DB ?
    NUM2 DB ?
RESULT DB ? 

.CODE
    MAIN PROC 
        
    MOV AX,@DATA
    MOV DS,AX
    
   MOV AH,1
   INT 21H
   SUB AL,30H   ;INPUT 
   MOV NUM1,AL
   
   MOV AH,1
   INT 21H
   SUB AL,30H
   MOV NUM2,AL
   
   MUL NUM1    ; NUM1=NUM1*NUM2
   
   
   MOV RESULT,AL
   ADD AH,30H
   ADD AL,30H 
   
   
   MOV BX,AX
   
   MOV AH,2
   MOV DL,13
   INT 21H
   MOV DL,10
   INT 21H  
               
               

   MOV AH,2
   MOV DL,BL
   INT 21H
  
   
    MAIN ENDP
    END MAIN



