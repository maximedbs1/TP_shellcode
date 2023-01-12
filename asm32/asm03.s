section .data
    prompt db 'Enter a number:',0
    comp db '42'
    messagedb '1337'
    len equ $-message

section .text
    global _start

_start:
    ; Print the prompt
    mov eax, 4
    mov ebx, 1
    mov ecx, prompt
    mov edx, 13
    int 80h

    ; Read input into ebx
    mov eax, 3
    mov ebx, 0
    mov ecx, ebx
    mov edx, 2
    int 80h

    ; Compare input to 42
    cmp ebx, comp
    je equal

    ; Input is not equal to 42, return 1
    mov eax, 1
    mov ebx, 1
    int 80h

equal:
    ; Input is equal to 42

    ; write message to stdout
    mov edx, len
    mov ecx, message
    mov ebx, 1
    mov eax, 4
    int 80h

    ; return 0
    mov eax, 1
    mov ebx, 0
    int 80h