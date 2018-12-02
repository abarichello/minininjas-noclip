[ENABLE]

aobscanmodule(INJECT,ninja.exe,D8 4C 24 14 D9 41 04)
alloc(newmem,$1000)

label(code)
label(return)

newmem:

code:
  nop
  nop
  nop
  nop
  fld dword ptr [ecx+04]
  jmp return

INJECT:
  jmp newmem
  nop
  nop
return:
registersymbol(INJECT)

[DISABLE]

INJECT:
  db D8 4C 24 14 D9 41 04

unregistersymbol(INJECT)
dealloc(newmem)

