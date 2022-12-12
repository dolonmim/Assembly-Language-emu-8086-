.model small 
.stack 100h 
.data 
 
main proc 
     MOV BX,0 
     MOV CL,4 
      
     MOV AH,1
      
     FOR1: 
     INT 21h 
     CMP AL,0DH
     JE END_FOR 
      
     CMP AL,41h ;a
     JGE LETTER 
      
     SUB AL,48 
     JMP SHIFT 
      
     LETTER: 
     SUB AL,37h 
      
     SHIFT: 
     SHL BX, CL 
     OR BL,AL 
      
     JMP FOR1 
      
     END_FOR:
     MOV AH,2
     MOV DL,BL
     INT 21H
     
      
     MOV CX, 4
     MOV AH, 2 
     
     MOV DL, 10
     INT 21H
     MOV DL, 13
     INT 21H
     
     MOV AH, 2
     INT 21H
     
     FOR2:
     
    MOV DL, BH
    SHR DL, 4
    SHL BX, 4
    CMP DL, 10
    JGE LETTER2
    
    ADD DL, 48
    INT 21H
    JMP END_OF_LOOP2
    
    LETTER2:
    ADD DL,37H
    INT 21H
    
    END_OF_LOOP2:
    LOOP FOR2
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN

