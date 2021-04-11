.start:               
    mov V0, 10            
    mov V1, 5              
    mov I, .gSpr              

.titleScreen:                 
    draw V0, V1, 5

    mov I, .rSpr
    mov V0, 15
    draw V0, V1, 5

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
    .spr "   xx   "
    .spr "   xx   "
    .spr " xxxxxx "
    .spr "xxxxxxxx"
    .spr "  xxxx  "

.objectSpr:
    .spr "  xxxx  "
    .spr " xxxxxxx"
    .spr "xxxxxxxx"
    .spr "xxxxxxxx"
    .spr " xxxxxx "