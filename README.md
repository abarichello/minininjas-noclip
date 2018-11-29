# Mini Ninjas Hacking
Mini Ninjas cheat table with AOB Injection.

# Screenshots
<div>
    <img src="https://i.imgur.com/VHRj1s3.png" width="500"></a>
    <img src="https://i.imgur.com/4OsUGFv.png" width="500"></a>
</div>

# Hotkeys
|Key|Action|
|-|-|
Insert/Delete|Increase/Decrease X Coordinates by 150
Home/End|Increase/Decrease Y Coordinates by 150
PageUp/PageDown|Increase/Decrease Z Coordinates by 200
NumLock|Toggle the loading of Z vector positions on all entities

# Addresses
|Address|Bytes|Overridden Opcode|Comment|
|-|-|-|-|
|ninja.jpeg_mem_term+154AB9 | DDD0 | fst st(0) | Disable Camera Collision 1
|ninja.jpeg_mem_term+154FD5 | DDD8 | fstp st(0) | Disable camera Collision 2
|ninja.jzero_far+11408 | D9 5F 24 | fstp st(0) | Vector X Load
|ninja.jzero_far+1140F | D9 5F 28 | fstp st(0) | Vector Z Load
|ninja.jzero_far+11416 | D9 5F 2C | fstp st(0) | Vector Y Load
