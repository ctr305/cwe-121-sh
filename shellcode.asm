section .text
global _start

_start:

    jmp short dummy

imprimir_str:
    pop ecx
    mov al, 4
    xor ebx, ebx
    inc ebx
    xor edx, edx
    mov dl, 19
    int 0x80

    mov al, 1
    dec ebx
    int 0x80

dummy:
    call imprimir_str
    db 'ganaste, Leonardo!', 0x0b
