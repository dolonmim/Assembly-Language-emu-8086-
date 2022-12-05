.MODEL SMALL
.STACK 100H     
       
.DATA

msg1 DB 0DH,0AH,"TYPE A CHARACTER $"
         
msg2 DB 0DH,0AH,"THE ASCII CODE OF A IN BINARY IS $"  

msg3 DB 0DH,0AH,"THE NUMBER OF BITS IS $" 

a DW 0


.CODE

MAIN PROC
  
  MOV ax,@DATA
  mov ds,ax 
   
  
   
  call INPUT 
  
   call BINARY

   
  MOV AX,4CH
    INT 21H 
    
        
            
 
 
            
  INPUT PROC 
    
     lea dx,msg1 ;print mas1
     mov ah,9
     int 21h 
     
     mov ah,1 ;input
     int 21h
     mov bl,al
  
 
  
  RET
  
  INPUT ENDP

  BINARY PROC
     
     lea dx,msg2  ;print msg23
     mov ah,9
     int 21h
     
     
     mov cx,8 ; limit for loop i<=8 for 8 bit 
     mov bh,0
     
     
     
     convert:
     
     shl bl,1 
     
     jnc zero; CF=0 
     
     inc bh
     mov dl,31h
     
     jmp display
     
     
     zero:
     
     mov dl,30h
     inc a
     display:
     mov ah,2
     int 21h 
     
     
     loop convert
     
     lea dx,msg3  ;print msg23
     mov ah,9
     int 21h  
             
     mov ax,a 
     add ax,48
     mov dx,ax
     mov ah,2
     int 21h
  
  
  RET 
  
  BINARY ENDP
   
  
  END MAIN     
   
        
    
 
    




