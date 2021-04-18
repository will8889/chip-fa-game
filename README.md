# chip-fa-game
A game for chip-fa emulator with character movement, sound timer, and collision detection.
<br>
<p>Move your character using W,A,S,D keys and when your character sprite collide with the cookie sprite, it will detect the collision, playing sound effect from sound timer, and despawn the cookie and spawn it again at random place.<p>
data register:<br>
  V0-V5 = used for Binary Coded Decimal (BCD) which is used to display the current score <br>
  V6-V7 = used for drawing character sprite and movement (V6 = x, V7 = y) <br>
  V8-V9 = used for drawing cookie sprite (V8 = x, V9 - y) <br>
  VA = used for storing the WASD keys to move our character <br>
  VB = used to store the sound timer <br>
  VC-VE = not used <br>
  VF = used for collision detector <br>
