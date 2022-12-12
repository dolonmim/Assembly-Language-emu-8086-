.MODEL SMALL
.STACK 100H
.DATA  
A DW "ENTER A BINARY NUMBER: $"
B DW "NUMBER IS EVEN $"
C DW "NUMBER IS ODD $"           
           
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    LEA DX, A
    MOV AH, 9
    INT 21H
    
    CALL CHECK
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
    
    
CHECK PROC
    XOR BX,BX
    MOV AH,1
    INT 21H
    
    WHILE_:
    CMP AL, 0DH
     
    JE END_WHILE
      
    AND AL,0FH
    SHL BX, 1
    OR BL, AL
    INT 21H
    
    JMP WHILE_
    
    END_WHILE:
    
    MOV AH,2        
    MOV DL,0AH     
    INT 21H
    MOV DL,0DH      
    INT 21H
    
    TOP:
    TEST BL,1
    JZ  EVEN
    JNZ ODD
        
    EVEN:
    LEA DX,B
    MOV AH, 9
    INT 21H
     
    JMP EXIT  
    
    ODD:
    LEA DX, C
    MOV AH, 9
    INT 21H
    
    JMP EXIT
    RET
       
END MAIN