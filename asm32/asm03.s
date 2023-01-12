section .data
    message db "Entrer a number:",0
    len_message equ $-message
    correct_msg db "1337",0
    len_correct_msg equ $-correct_msg
    input_message db 2

section .text
    global _start

_start:
    ; write message to stdout
    mov edx, len_message
    mov ecx, message
    mov ebx, 1
    mov eax, 4
    int 0x80

    ; read input from stdin
    mov eax, 3
    mov ebx, 0
    mov ecx, input_message
    mov edx, 8
    int 0x80

    ; check if input is "42"
    cmp byte [input_message], '4'
    jne incorrect
    cmp byte [input_message+1], '2'
    jne incorrect

    ; write "Correct" to stdout
    mov edx, len_correct_msg
    mov ecx, correct_msg
    mov ebx, 1
    mov eax, 4
    int 0x80

    ; return 0
    mov eax, 1
    mov ebx, 0
    int 0x80

incorrect:
    ; return 1
    mov eax, 1
    mov ebx, 1
    int 0x80