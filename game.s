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

.titleMove:
    mov V0, 32
    mov V1, 26
    mov V2, 9
    mov V3, 1
    mov V4, 8
    mov V5, 10
    mov V7, 9
    mov V6, 5
    kneq V2
    jmp .spawnCookie
    kneq V4
    jmp .spawnCookie
    kneq V5
    jmp .spawnCookie
    kneq V6
    jmp .spawnCookie
    kneq V7
    jmp .spawnCookie
    jmp .titleMove

    jmp .collisionDetection

.spawnCookie:
    clear
    mov I, .characterSpr
    draw V0, V1, 5
    mov I, .cookieSpr
    rnd V8, 50
    rnd V9, 25
    draw V8, V9, 5
    jmp .collisionDetection

.goLeft:
    mov I, .characterSpr
    draw V0, V1, 5
    sub V0, V3
    draw V0, V1, 5
    jmp .collisionDetection

.goRight:
    mov I, .characterSpr
    draw V0, V1, 5
    add V0, V3
    draw V0, V1, 5
    jmp .collisionDetection

.goUp:
    mov I, .characterSpr
    draw V0, V1, 5
    sub V1 , V3
    draw V0, V1, 5
    jmp .collisionDetection

.goDown:
    mov I, .characterSpr
    draw V0, V1, 5
    add V1, V3
    draw V0, V1, 5
    jmp .collisionDetection

.controller:
    kneq V4
    jmp .goLeft
    kneq V5
    jmp .goRight
    kneq V6 
    jmp .goUp
    kneq V7
    jmp .goDown
    jmp .controller

.collisionDetection:
    eq VF, 1
    jmp .controller
    mov I, .cookieSpr
    draw V8, V9, 5 
    rnd V8, 50
    rnd V9, 25
    draw V8, V9, 5
    ssnd V3
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
