%include "_Include.asm"

section .text

_toDoMenu:
    print M_S_TO_DO_MENU
    print P_S_GLOBAL

    read

    cmp al, '1'
    je _craftMenu

    cmp al, '2'
    je _collectMenu

    cmp al, '3'
    je _showStats

    jmp _invalidOption

_craftMenu:
    print M_S_CRAFT1_MENU

    print P_S_GLOBAL
    read

    jmp _invalidOption

_collectMenu:
    print M_S_COLLECT_MENU

    print P_S_GLOBAL

    read

    cmp al, '1'
    je _collectWood

    cmp al, '2'
    je _collectScrap

    cmp al, '3'
    je _collectFuel

    cmp al, '4'
    je _animalsMenu

    cmp al, 'B'
    je _toDoMenu

    jmp _invalidOption

_invalidOption:
    print M_S_INVALID_OPTION
    jmp _toDoMenu

_colleted:
    print M_S_COLLECTED
    cmp al, 1
    je ._wood

    cmp al, 2
    je ._scrap
    exit 0

    ._wood:
        print M_S_WOOD
        mov rdi, [i_wood]

    ._scrap:
        print M_S_SCRAP
        mov rdi, [i_scrap]

    ._collectItem:
        add rdi, 1

_collectWood:
    print P_S_COLLECT
    print M_S_WOOD
    read
    mov al, 1
    jmp _colleted
    exit 0

_collectScrap:
    print P_S_COLLECT
    print M_S_SCRAP
    read
    mov al, 2
    jmp _colleted
    exit 0

_collectFuel:
    print P_S_COLLECT
    print M_S_COAL
    read
    mov al, 3
    jmp _colleted
    exit 0

_animalsMenu:
    print M_S_ANIMALS_MENU
    exit 0

_showStats:
    print M_S_STATS