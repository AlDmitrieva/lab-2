%include "io.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    LEA     ESI, [a]
;извлекаем значение с индексом 0
    MOV     AL, [ESI]
    MOV     DL, 0x07
    AND     AL, DL
    ;PRINT_UDEC 1,AL

;извлекаем значение с индексом 1
    MOV     AL, [ESI]
    MOV     DL, 0x38
    AND     AL, DL
    SHR     AL, 3
    ;PRINT_UDEC 1,AL

;извлекаем значение с индексом 2
    MOV     AL, [ESI + 1]
    MOV     DL, 0x01
    AND     AL, DL
    SHL     AL, 1
    MOV     BL, AL
    MOV     AL, [ESI]
    MOV     DL, 0xC0
    AND     AL, DL
    SHR     AL, 7
    OR      BL, AL
    ;PRINT_UDEC 1,BL
    
;извлекаем значение с индексом 3
    MOV     AL, [ESI + 1]
    MOV     DL, 0x0E
    AND     AL, DL
    SHR     AL, 1
    ;PRINT_UDEC 1,AL
    
;извлекаем значение с индексом 4
    MOV     AL,[ESI + 1]
    MOV     DL, 0x70
    AND     AL, DL
    SHR     AL, 4
    ;PRINT_UDEC 1,AL
    
;извлекаем значение с индексом 5
    MOV     AL, [ESI + 2]
    MOV     DL, 0x03
    AND     AL, DL
    SHL     AL, 1
    MOV     BL, AL
    MOV     AL, [ESI + 1]
    MOV     DL, 0x80
    AND     AL, DL
    SHR     AL, 7
    OR      BL, AL
    ;PRINT_UDEC 1,BL

;извлекаем значение с индексом 6
    MOV     AL, [ESI + 2]
    MOV     DL, 0x1C
    AND     AL, DL
    SHR     AL, 2
    ;PRINT_UDEC 1,AL
    
;извлекаем значение с индексом 7
    MOV     AL, [ESI + 2]
    MOV     DL, 0xE0
    AND     AL, DL
    SHR     AL, 5
    ;PRINT_UDEC 1,AL
    
    ret
    
section .data
;packed array [5, 4, 1, 6, 3, 2, 7, 0]
a: DB 0xA5, 0x3C, 0x1D