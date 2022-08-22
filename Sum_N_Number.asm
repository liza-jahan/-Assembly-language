 .model small
 .stack
 .data
  i DB 1
  sum DB ?    
  .code  
      main proc
         mov ax,@data
         mov dS,ax
         mov cx,10
         mov bx,0
         
     addition:
          ADD bh,i
          INC i
          loop addition
          
          mov  sum,bh
            
     main endp
    end main 

