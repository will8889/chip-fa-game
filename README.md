# chip-fa-game
A game for chip-fa emulator with scores, character movement, sound timer, and collision detection.
<br>
<p>Move your character using W, A, S, D keys and when your character sprite collides with the cookie sprite, it will detect the collision, playing sound effect from sound timer, and despawn the cookie and spawn it again at random place, and add +1 into the score.<p>
data register:<br>
  V0-V5 = used for Binary Coded Decimal (BCD) which is used to display the current score <br>
  V6-V7 = used for drawing character sprite and movement (V6 = x, V7 = y) <br>
  V8-V9 = used for drawing cookie sprite (V8 = x, V9 - y) <br>
  VA = used for storing the WASD keys to move our character <br>
  VB = used to store the sound timer <br>
  VC-VE = not used <br>
  VF = used for collision detector <br>
<p>The score works by using 5 registers. V0 store the BCD 100's which is required but not going to be used in our game, V1 store the BCD 10's, V2 store the BCD 1's, V3 and V4 will store the x and y when we going to draw the score, and V5 will store the current scores.<p>
<p>The character movement is done by drawing the sprite to remove it, add or sub the value of V6 or V7 with 1 to make it go up, down, left, and right, and redraw the character sprite again.<p>
<p>The cookie sprite is similar to the character movement but the V8 and V9 are assigned to random values so when we draw the cookie, both the x and y will be random.<p>
<p>The collision detector is already built into the instruction DXYN so when a collision happens, the register VF will automatically set into 1. <p>
<p>Sound timer uses register VB and when we send a number into the sound timer it will decrement every 20mS while playing the beep sound until the number reaches 0, in this game we only use 1 so it will only play the beep sound for 20mS.<p>
When a collision happened, the game will draw the cookie sprite to remove it, get random V8 and V9, draw the cookie again using the random V8 and V9, send 1 to the sound timer to play the beep sound, draw the score to remove it, add 1 to the V5 where the score is stored, and draw the score again where the score is already added.
