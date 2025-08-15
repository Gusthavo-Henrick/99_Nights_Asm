%macro print 1
    xor rcx, rcx
    mov rbx, %1
    push rbx
    %%.countLoop:
        mov al, byte [rbx]
        cmp al, 0
        jz %%.endLoop

        inc rcx
        inc rbx

        jmp %%.countLoop

    %%.endLoop:
        mov rax, 1
        mov rdi, 1
        pop rsi
        mov rdx, rcx
        syscall
%endmacro

%macro printInt 1
    xor rcx, rcx
    mov rbx, 10
    mov r8, %1
    push r8

    %%.convertLoop:
        mov rax, r8
        div rbx
        mov r9, rdx
        add r9, '0'

    %%.endConvertLoop:

    %%.countLoop:

    %%.endCountLoop:
%endmacro

%macro read 0
    %%.clearBuffer:
        mov rdi, buffer
        mov rcx, 256
        xor rax, rax
        rep stosb

    mov rax, 0
    mov rdi, 0
    mov rsi, buffer
    mov rdx, 256
    syscall

    mov al, byte [buffer]
%endmacro

%macro exit 1
    mov rax, 60
    mov rdi, %1
    syscall
%endmacro