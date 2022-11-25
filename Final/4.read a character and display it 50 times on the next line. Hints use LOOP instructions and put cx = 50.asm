.STACK 100H
.DATA     

msg1 DB 'Enter a charater :$'

msg2 DB 0AH,0DH,'Output : $'

.CODE

MAIN PROC  
    
    mov ax,@DATA
    mov ds, ax  
    
    mov cx,50
    
    lea dx,msg1 ;output msg1
    mov ah,9
    int 21h   

    mov ah,1
    int 21h
    mov bx,ax
    
    
    lea dx,msg2 ;output msg2
    mov ah,9
    int 21h



    TOP:
  
      mov ah,2
      mov dx,bx
      int 21h



    LOOP TOP 
      


EXIT:
    MOV AH,4CH
    INT 21H 
    
    MAIN ENDP
END MAIN



 

