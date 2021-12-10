%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    LEA     EBX, [a]
    MOV     ECX, 5
    XOR     EDX, EDX
next:
    MOV     AL, [EBX]
    CMP     AL, 0 
    JNZ     summ
    INC     EBX
    LOOP    next
summ:
    ADD     DL, AL
    INC     EBX
    CMP     ECX, 0
    JZ      break
    LOOP    next
break:
    PRINT_UDEC 1, DL
    ret

section .data
a: DB 5, 3, 0, 2, 0