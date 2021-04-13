.start:               
    mov V0, 10            
    mov V1, 5              
    mov I, .gSpr              

.titleScreen:                 
    draw V0, V1, 5

    mov I, .rSpr
    mov V0, 15
    draw V0, V1, 5

    mov I, .oSpr
    mov V0, 20
    draw V0, V1, 5

    mov I, .uSpr
    mov V0, 25
    draw V0, V1, 5

    mov I, .pSpr
    mov V0, 30
    draw V0, V1, 5

    mov I, .fiveSpr
    mov V0, 36
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
    mov V2, 9
    mov V0, 32
    mov V1, 26
    kneq V2
    jmp .spawnCookie
    jmp .titleMove

.gameScreen:
    mov I, .characterSpr
    draw V0, V1, 5
    mov V3, 1
    jmp .controller

.spawnCookie:
    clear
    mov I, .cookieSpr
    rnd V8, 80
    rnd V9, 60
    draw V8, V9, 5
    jmp .gameScreen

.goLeft:
    draw V0, V1, 5
    sub V0, V3
    jmp .gameScreen

.goRight:
    draw V0, V1, 5
    add V0, V3
    jmp .gameScreen

.goUp:
    draw V0, V1, 5
    sub V1 , V3
    jmp .gameScreen

.goDown:
    draw V0, V1, 5
    add V1, V3
    jmp .gameScreen

.controller:
    mov V4, 8
    kneq V4
    jmp .goLeft
    mov V5, 10
    kneq V5
    jmp .goRight
    mov V6, 5
    kneq V6 
    jmp .goUp
    mov V7, 9
    kneq V7
    jmp .goDown
    jmp .controller

.end:
    jmp .end

.gSpr:
    .spr "xxxx    "
    .spr "x       "
    .spr "x xx    "
    .spr "x  x    "
    .spr "xxxx    " 

.rSpr:
    .spr "xxx     "
    .spr "x  x    "
    .spr "x       "
    .spr "x       "
    .spr "x       "

.oSpr:
    .spr "xxxx    "
    .spr "x  x    "
    .spr "x  x    "
    .spr "x  x    "
    .spr "xxxx    "

.uSpr:
    .spr "x  x    "
    .spr "x  x    "
    .spr "x  x    "
    .spr "x  x    "
    .spr "xxxx    "

.pSpr:
    .spr "xxx     "
    .spr "x  x    "
    .spr "xxx     "
    .spr "x       "
    .spr "x       "

.fiveSpr:
    .spr "xxxx    "
    .spr "x       "
    .spr "xxx     "
    .spr "   x    "
    .spr "xxx     "

.aSpr:
    .spr " xx     "
    .spr "x  x    "
    .spr "xxxx    "
    .spr "x  x    "
    .spr "x  x    "

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

.objectSpr:
    .spr "  xxxx  "
    .spr " xxxxxxx"
    .spr "xxxxxxxx"
    .spr "xxxxxxxx"
    .spr " xxxxxx "

.cookieSpr:
    .spr "  XXXXX "
    .spr " XX XX X"
    .spr " XXXXX X"
    .spr " XX XXXX"
    .spr "  XXXXX "
