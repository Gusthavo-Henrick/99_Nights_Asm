%include "Menus.asm"

section .text
    global _start

_start:
    print M_S_INIT
    print M_S_INIT_MENU
    print P_S_GLOBAL

    read

    mov al, byte [buffer]
    cmp al, '1'
    je _play

    cmp al, '2'
    je _exit

    exit 1

_play:
    print M_S_INITING_GAME

    call _toDoMenu

    exit 0

_exit:
    exit 0