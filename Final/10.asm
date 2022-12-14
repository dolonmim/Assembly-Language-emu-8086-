.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    CALL MULTIPLY
    MOV AH,4CH
    INT 21H
    MAIN ENDP

MULTIPLY PROC
    PUSH AX
    PUSH BX
    XOR DX,DX
    
    REPEAT:
    TEST BX,1
    JZ END_IF
    
    ADD DX,AX
    
    END_IF:
    SHL AX,1
    SHR BX,1
    
    JNZ REPEAT
    POP BX
    POP AX
    RET
    
    MULTIPLY ENDP
END MAIN