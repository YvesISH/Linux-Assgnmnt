
section .data
    prompt_first db "Enter your first name: ", 0
    prompt_last db "Enter your last name: ", 0
    hello db "Hello, ", 0
    newline db 10, 0

section .bss
    first_name resb 50
    last_name resb 50

section .text
    global _start

_start:
    ; Prompt for first name
    mov eax, 4
    mov ebx, 1
    mov ecx, prompt_first
    mov edx, 22
    int 0x80

    ; Read first name
    mov eax, 3
    mov ebx, 0
    mov ecx, first_name
    mov edx, 50
    int 0x80

    ; Prompt for last name
    mov eax, 4
    mov ebx, 1
    mov ecx, prompt_last
    mov edx, 21
    int 0x80

    ; Read last name
    mov eax, 3
    mov ebx, 0
    mov ecx, last_name
    mov edx, 50
    int 0x80

    ; Print "Hello, "
    mov eax, 4
    mov ebx, 1
    mov ecx, hello
    mov edx, 7
    int 0x80

    ; Print last name
    mov eax, 4
    mov ebx, 1
    mov ecx, last_name
    mov edx, 50
    int 0x80

    ; Print space
    mov eax, 4
    mov ebx, 1
    mov ecx, 32
    mov edx, 1
    int 0x80

    ; Print first name
    mov eax, 4
    mov ebx, 1
    mov ecx, first_name
    mov edx, 50
    int 0x80

    ; Print newline
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    ; Exit
    mov eax, 1
    xor ebx, ebx
    int 0x80