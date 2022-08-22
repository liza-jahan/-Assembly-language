
 newline macro

  lea dx,nl
  mov ah,9
  int 21h
  
endm
  
  
  
.model small
.stack 100h



.data


msg1 db 'number is even', '$'
msg2 db 'number is odd',  '$'
nl   db  0dh,0ah,         '$'



.code 
.startup
                            
  mov ax,@data
  mov ds,ax
     
  
 
  mov ah,1                ;ah=1 is take input   
  int 21h
  

                   
                          ;divide al by whatever is in bl
  mov bl,2
  div bl
  
 
  mov al,ah
  
  
  cmp al,0               ;check if remainder is zero
  
 
  jg odd                  ;use any condition here jump greater, jump if not equal etc
          
          
  
  
  even:                   ;if it was a odd number than it would never reach here
                           ;print a new line if even
      newline  
  
  

  mov ah,9
  int 21h
  jmp exit 
  
  
    
   
  odd:
    newline        
          
            
        
  lea dx,msg2            ;show the message for odd number  
  mov ah,9
  int 21h
          
  
                        ;just a jump label to skip executing some codes        
  exit:
  
 
.exit

  lea dx,nl
  mov ah,9
  int 21h
  
endm
  
  
  
