.start:               
    mov V0, 10            
    mov V1, 5              
    mov I, .cSpr              

.titleScreen:                 
    draw V0, V1, 5

    mov I, .hSpr
    mov V0, 15
    draw V0, V1, 5

    mov I, .iSpr
    mov V0, 20
    draw V0, V1, 5

    mov I, .pSpr
    mov V0, 24
    draw V0, V1, 5

    mov I, .dashSpr
    mov V0, 29
    draw V0, V1, 5

    mov I, .fSpr
    mov V0, 34
    draw V0, V1, 5

    mov I, .aSpr
    mov V0, 39
    draw V0, V1, 5

    mov I, .gSpr
    mov V0, 30
    mov V1, 15 
    draw V0, V1, 5

    mov I, .aSpr
    mov V0, 35 
    draw V0, V1, 5

    mov I, .mSpr
    mov V0, 40 
    draw V0, V1, 5

    mov I, .eSpr
    mov V0, 46 
    draw V0, V1, 5

    jmp .titleMove

.zeroCreate:
    mov I, .0Spr
    draw V3, V4, 5
    mov I, 000
    bcd V5
    ldm V2
    ret

.bcd:
    mov V3, 54
    mov V4, 1
    mov I, 000
    bcd V5
    ldm V2
    chr V1
    neq V1, 0
    call .zeroCreate
    eq V1, 0
    draw V3, V4, 5
    add V3, 5
    chr V2
    neq V2, 0
    call .zeroCreate
    eq V2, 0
    draw V3, V4, 5
    ret
        
.titleMove:
    mov V6, 32
    mov V7, 26
    mov VA, 5
    kneq VA
    jmp .spawnCookie
    mov VA, 8
    kneq VA
    jmp .spawnCookie
    mov VA, 9
    kneq VA
    jmp .spawnCookie
    mov VA, 10
    kneq VA
    jmp .spawnCookie
    jmp .titleMove

.spawnCookie:
    clear
    mov I, .characterSpr
    draw V6, V7, 5
    mov I, .cookieSpr
    rnd V8, 40
    rnd V9, 25
    draw V8, V9, 5
    mov V5, 0
    call .bcd
    jmp .collisionDetection

.goLeft:
    neq V6, 0
    jmp .controller
    mov VA, 1
    mov I, .characterSpr
    draw V6, V7, 5
    sub V6, VA
    draw V6, V7, 5
    jmp .collisionDetection

.goRight:
    neq V6, 57
    jmp .controller
    mov VA, 1
    mov I, .characterSpr
    draw V6, V7, 5
    add V6, VA
    draw V6, V7, 5
    jmp .collisionDetection

.goUp:
    neq V7, 0
    jmp .controller
    mov VA, 1
    mov I, .characterSpr
    draw V6, V7, 5
    sub V7 , VA
    draw V6, V7, 5
    jmp .collisionDetection

.goDown:
    neq V7, 27
    jmp .controller
    mov VA, 1
    mov I, .characterSpr
    draw V6, V7, 5
    add V7, VA
    draw V6, V7, 5
    jmp .collisionDetection

.controller:
    mov VA, 5
    kneq VA 
    jmp .goUp

    mov VA, 8
    kneq VA
    jmp .goLeft

    mov VA, 9
    kneq VA
    jmp .goDown

    mov VA, 10
    kneq VA
    jmp .goRight

    jmp .controller

.collisionDetection:
    eq VF, 1
    jmp .controller
    mov I, .cookieSpr
    draw V8, V9, 5 
    rnd V8, 45
    rnd V9, 25
    draw V8, V9, 5
    mov VB, 1
    ssnd VB
    call .bcd
    add V5, 1
    call .bcd
    jmp .controller

.end:
    jmp .end

.cSpr:
    .spr "XXXX    "
    .spr "X       "
    .spr "X       "
    .spr "X       "
    .spr "XXXX    "

.hSpr:
    .spr "X  X    "
    .spr "X  X    "
    .spr "XXXX    "
    .spr "X  X    "
    .spr "X  X    "

.iSpr:
    .spr "XXX     "
    .spr " X      "
    .spr " X      "
    .spr " X      "
    .spr "XXX     "

.pSpr:
    .spr "XXXX    "
    .spr "X  X    "
    .spr "XXXX    "
    .spr "X       "
    .spr "X       "

.fSpr:
    .spr "XXXX    "
    .spr "X       "
    .spr "XXXX    "
    .spr "X       "
    .spr "X       "

.aSpr:
    .spr "XXXX    "
    .spr "X  X    "
    .spr "XXXX    "
    .spr "X  X    "
    .spr "X  X    "

.dashSpr:
    .spr "        "
    .spr "        "
    .spr "XXXX    "
    .spr "        "
    .spr "        "

.gSpr:
    .spr "xxxx    "
    .spr "x       "
    .spr "x xx    "
    .spr "x  x    "
    .spr "xxxx    " 

.mSpr:
    .spr "xxxxx   "
    .spr "x x x   "
    .spr "x x x   "
    .spr "x x x   "
    .spr "x x x   "

.eSpr:
    .spr "xxxx    "
    .spr "x       "
    .spr "xxxx    "
    .spr "x       "
    .spr "xxxx    "

.0Spr:
    .spr "xxxx    "
    .spr "x  x    "
    .spr "x  x    "
    .spr "x  x    "
    .spr "xxxx    "

.characterSpr:
    .spr "  xxx   "
    .spr "   x    "
    .spr " xxxxx  "
    .spr "x  x  x "
    .spr " xx xx  "

.cookieSpr:
    .spr "  XXXXX "
    .spr " XX XX X"
    .spr " XXXXX X"
    .spr " XX XXXX"
    .spr "  XXXXX "
