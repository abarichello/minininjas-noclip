[ENABLE]

aobscanmodule(INJECT,ninja.exe,83 81 14 0E 01 00 FF)
alloc(newmem,$1000)

label(code)
label(return)

newmem:

code:
  add dword ptr [ecx+00010E14], 00
  jmp return

INJECT:
  jmp newmem
  nop
  nop
return:
registersymbol(INJECT)

[DISABLE]

INJECT:
  db 83 81 14 0E 01 00 FF

unregistersymbol(INJECT)
dealloc(newmem)

