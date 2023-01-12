; pour compiler en 64bits -> nasm -f elf64 a64.asm -o a64.o ld a64.o -o a64
; pour compiler en 32bits -> nasm -f elf32 a32.asm -o a32.o ld a32.o -o a32
; retourne 0 en x86 32bit

mov eax, 1
mov ebx, 0
int 80h