.MODEL SMALL
.STACK 100H
.DATA 

 
.CODE

MAIN PROC
                  
          
          MOV AH,1
          INT 21H
          
          
          MOV BL,AL     ;INPUT 
          INT 21H
          
          MOV BH,AL   
          
          
          XCHG BL,BH     
           
         
          MOV AH,2
          MOV DL,10      ;NEW LINE
          INT 21H
          MOV AH,2
          MOV DL,13
          INT 21H
              
          MOV AH,2
          MOV DL,BL
          INT 21H 
          MOV DL,BH       ;OUTPUT
          INT 21H
              
      
 
 
MAIN ENDP
END MAIN