# Mini Ninjas Hacking
Mini Ninjas cheat table with AOB Injection.

# Screenshots
<div>
    <img src="https://i.imgur.com/7oiScUV.png" width="400"></a>
    <img src="https://i.imgur.com/jn9mf7J.png" width="400"></a>
    <img src="https://i.imgur.com/VHRj1s3.png" width="400"></a>
    <img src="https://i.imgur.com/TUoH4I5.png" width="400"></a>
</div>

# Hotkeys
|Key|Action|
|-|-|
Insert/Delete|Increase/Decrease X Coordinates by 150
Home/End|Increase/Decrease Y Coordinates by 150
PageUp/PageDown|Increase/Decrease Z Coordinates by 200
NumLock|Toggle the loading of Z vector positions on all entities
/|Zoom In player camera
*|Zoom Out player camera

# Game Engine Details

## Folliage
Folliage and other effects such as wind and floating dandelion seeds are simulated using 2D sprites, such sprites have a fixed point where they rotate around in all axis always following the player. This gives an easy and cheap effect to use in trees and bushes.

<img src="https://i.imgur.com/cyP3F7e.png" width="600"></a>

## Water Reflection
Having the Wii as one of the console targets meant having reduced graphical effects, developers opted to simply mirror some models vertically and put them under the water to mimic light reflection.

<img src="https://i.imgur.com/5MKCX6D.png" width="600"></a>

## Cutscenes and early character unlock
In Mini Ninjas you unlock characters by destroyed the cage that they're locked on. During in-game cutscenes if you lock the loading of one of the game's vector axis this cage can break and lead you to unlocking said character earlier than intended.

<img src="https://i.imgur.com/Zfj0ZpY.png" width="600"></a>

# Addresses
|Address|Bytes|Overridden Opcode|Comment|
|-|-|-|-|
|ninja.jpeg_mem_term+154AB9 | DDD0 | fst st(0) | Disable Camera Collision 1
|ninja.jpeg_mem_term+154FD5 | DDD8 | fstp st(0) | Disable camera Collision 2
|ninja.jzero_far+11408 | D9 5F 24 | fstp st(0) | Vector X Load
|ninja.jzero_far+1140F | D9 5F 28 | fstp st(0) | Vector Z Load
|ninja.jzero_far+11416 | D9 5F 2C | fstp st(0) | Vector Y Load
