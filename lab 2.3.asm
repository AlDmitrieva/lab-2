%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    LEA     EBX, [array]
    MOV     ECX, 7 
next:
    PUSH    EBX
    PUSH    ECX  
next1:
    MOV     DL, [EBX] 
    MOV     AL, [EBX+4]
    CMP     DL, AL
    JNL     swap
    JMP     skip     
swap:
    MOV     [EBX+4], DL
    MOV     [EBX], AL
skip:
    ADD     EBX, 4   
    LOOP    next1
    POP     ECX
    POP     EBX 
    ADD     EBX, 4
    LOOP    next        
 
    ret

section .data
array: DD 4,1,2,9,3,5,8,6