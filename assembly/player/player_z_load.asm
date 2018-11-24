[ENABLE]

aobscanmodule(INJECT,ninja.exe,D9 5F 28 D9 44 24 0C) // should be unique
alloc(newmem,$1000)

label(code)
label(return)

newmem:

code:
  fstp st(0)
  fld dword ptr [esp+0C]
  jmp return

INJECT:
  jmp newmem
  nop
  nop
return:
registersymbol(INJECT)

[DISABLE]

INJECT:
  db D9 5F 28 D9 44 24 0C

unregistersymbol(INJECT)
dealloc(newmem)
