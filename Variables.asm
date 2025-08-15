; Input variables
section .data
    buffer times 256 db 0

; Messages
section .data
    M_S_INIT db "Welcome to 99 nights made in assembly!", 10, 10, 0
    M_S_INITING_GAME db 10, "Let's start the game!", 10, "Survive 99 nights.", 10, 0

    M_S_STATS db "Your stats is: ", 10, 0
    M_S_INVALID_OPTION db "Invalid option!", 10, 0

    M_S_COLLECTED db "You have colleted: ", 0

    M_S_WOOD db "wood", 10, 0
    M_S_SCRAP db "scrap", 10, 0
    M_S_COAL db "coal", 10, 0
    M_S_FUEL db "fuel", 10, 0

    M_S_CRAFTED db "You have crafted: ", 0

; Prompts
section .data
    P_S_GLOBAL db "Enter a valid option above: ", 0
    P_S_COLLECT db "Press enter to collect ", 0

; Menus
section .data
    M_S_INIT_MENU db "[1] Play", 10, "[2] Exit", 10, 10, 0
    M_S_TO_DO_MENU db 10, "[1] Craft", 10, "[2] Collect", 10, "[3] Show stats", 10, 10, 0
    M_S_COLLECT_MENU db 10, "[1] Wood", 10, "[2] Scrap", 10, "[3] Fuel", 10, "[4] Animals", 10,"[B] Back", 10, 10, 0
    M_S_CRAFT1_MENU db 10, "[1] Map (5 woods)", 10, "[2] Bed (20 woods)", 10, "[3] Compass (2 scraps)", 10, "[4] Sun dial (3 scraps)", 10, "[5] Better crafting table (10 woods & 5 scraps)", 10, "[B] Back", 10, 10, 0
    M_S_ANIMALS_MENU db 10, "[1] Bunny", 10, "[2] Wolf", 10, "[3] Alpha wolf", 10, 10, 0
    ; TODO: Make more craftings

; Variables
section bss
    ; Game settings -> (0 - inf)
    i_nigth_count db 0

    ; Status -> (0 - 100)
    i_hungry db 100
    i_life db 100

    ; Tools -> Have or not
    old_axe db 1 ; True
    old_sack db 1

    good_axe db 0 ; False
    good_sack db 0

    ; Items -> Amount
    i_scrap db 0
    i_wood db 0

    i_coal db 0
    i_fuel db 0

    i_bunny_foot db 0
    i_wolf_pelt db 0

    i_molten db 0
    i_soap db 0
    i_carrot db 0
    i_berry db 0
    i_cake db 0
    i_pepper db 0