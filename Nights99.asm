%include "Macros.asm"
%include "Variables.asm"

section .text
    global _start

_start:
    print M_S_INIT
    print M_S_INIT_MENU
    print P_S_GLOBAL

    clearBuffer
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

_toDoMenu:
    print M_S_TO_DO_MENU
    print P_S_GLOBAL

    clearBuffer
    read

    cmp al, '1'
    je _craftMenu

    cmp al, '2'
    je _collectMenu

    jmp _invalidOption

_craftMenu:
    print M_S_CRAFT1_MENU

    print P_S_GLOBAL
    clearBuffer
    read

    jmp _invalidOption

_collectMenu:
    print M_S_COLLECT_MENU

    print P_S_GLOBAL

    clearBuffer
    read

    cmp al, '1'
    je _exit

    cmp al, 'B'
    je _toDoMenu

    jmp _invalidOption

_invalidOption:
    print M_S_INVALID_OPTION
    jmp _toDoMenu

_exit:
    exit 0