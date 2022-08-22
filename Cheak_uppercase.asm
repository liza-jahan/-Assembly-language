.MODEL
.STACK 100H
.DATA
A DB 10,13, 'INPUT ONLY LETTER $'
B DB 10,13, 'UPPER CASE $'
C DB 10,13, 'LOWER CASE $'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,A
    INT 21H
    
    MOV AH,1
    INT 21H
    CMP AL,5AH
    JL NO
    
    CMP AL,5aH
    JG YES
        
    
    YES:
       MOV AH,9
       LEA DX,C
       INT 21H
       JMP EXIT
            
    
    NO:
       MOV AH,9
       LEA DX,B
       INT 21H
    
   
    
    EXIT: 
     
      
      
    
    MAIN ENDP

END MAIN