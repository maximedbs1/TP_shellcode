section .data
    asm01 db 'asm01',0

section .text
    global _start

_start:
    ; Execute asm01
    mov eax, 11
    mov ebx, asm01
    xor ecx, ecx
    xor edx, edx
    int 0x80