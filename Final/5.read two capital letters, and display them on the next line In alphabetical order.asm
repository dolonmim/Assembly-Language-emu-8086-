.STACK 100H
.DATA     

msg1 DB 'Enter a charater :$'

msg2 DB 0AH,0DH,'Output : $' 
msg3 DB 0AH,0DH,'Thank You $'

.CODE

MAIN PROC  
    
    mov ax,@DATA
    mov ds, ax  
    
   
    
    lea dx,msg1 ;output msg1
    mov ah,9
    int 21h   

    mov ah,1
    int 21h
    mov bx,ax
    
    mov ah,1
    int 21h
    mov cx,ax
    
    
    lea dx,msg2 ;output msg2
    mov ah,9
    int 21h 
    
    
    


    cmp bx,cx
    jg CHECK
    
    jmp EXIT
    
    
    
    CHECK:
      xchg bx,cx 
      
      jmp EXIT
  
      



    


EXIT: 
    mov ah,2
    mov dx,bx
    int 21h 
    
    mov ah,2
    mov dx,cx
    int 21h
    
    
    lea dx,msg3 ;output msg3
    mov ah,9
    int 21h
      
    MOV AH,4CH
    INT 21H 
    
    MAIN ENDP
END MAIN



 

