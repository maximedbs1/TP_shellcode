; pour compiler en 64bits -> nasm -f elf64 asm01.s -o asm64.o && ld -m elf_i386 asm64.o -o asm64
; pour compiler en 32bits -> nasm -f elf32 asm01.s -o asm32.o && ld -m elf_i386 asm32.o -o asm32
; retourne 0 en x86 32bit

global _start  
section	.text

_start:                     
    ;instruction dest, source
    mov eax, 1
    mov ebx, 0
    int 80h