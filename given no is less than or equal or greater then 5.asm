.MODEL SMALL
.STACK 100H     
.DATA

msg1 DB 'Enter a number: $'
msg2 DB ' is greater Than $'
msg3 DB ' is less Than $'
msg4 DB ' Equl To $'

.CODE
MAIN PROC  
    
    mov ax,@DATA
    mov ds, ax
    
   
    ;1st line print
    lea dx,msg1 
    mov ah,9
    int 21h
    
    ;1st input
    mov ah,1    
    int 21h    
    mov bl,al
    
     
    mov cl,35h
    
    cmp bl,cl  
    



   JE case1
     
    ;cmp bx,cx
    
    JG case2   
    
    
    ;new line
    mov ah,2
    mov dl,0ah  
    int 21h
    mov dl,0dh  
    int 21h
    
    ;output value 5
    mov ah,2    
    mov dl,bl
    int 21h
    
    
    
    ;1st line print
    lea dx,msg3 
    mov ah,9
    int 21h
    
    ;output value 5
    mov ah,2    
    mov dl,cl
    int 21h
    
    jmp case3
    
    
   
    
    
    
    
    case1:
    mov ah,2
    mov dl,0ah  
    int 21h
    mov dl,0dh  
    int 21h
    
    ;output value 5
    mov ah,2    
    mov dl,bl
    int 21h
    
    
    
    ;output massage 4
    lea dx,msg4 
    mov ah,9
    int 21h
    
    ;output value 5
    mov ah,2    
    mov dl,cl
    int 21h
    
    jmp case3  
    
   
    
    
    case2:
    mov ah,2
    mov dl,0ah  
    int 21h
    mov dl,0dh  
    int 21h
    
    ;output value 5
    mov ah,2    
    mov dl,bl
    int 21h
    
    
    
    ;output massage 3
    lea dx,msg2 
    mov ah,9
    int 21h
    
    ;output value 5
    mov ah,2    
    mov dl,cl
    int 21h
    
   
    
   
    
    case3:
    
   
    EXIT:
    MOV AX,4CH
    INT 21H
    
    MAIN ENDP
END MAIN