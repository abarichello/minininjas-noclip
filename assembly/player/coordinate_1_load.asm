[ENABLE]

aobscanmodule(INJECT,ninja.exe,D9 5F 24 D9 44 24 14) // should be unique
alloc(newmem,$1000)

label(code)
label(return)

newmem:

code:
  fstp st(0)
  fld dword ptr [esp+14]
  jmp return

INJECT:
  jmp newmem
  nop
  nop
return:
registersymbol(INJECT)

[DISABLE]

INJECT:
  db D9 5F 24 D9 44 24 14

unregistersymbol(INJECT)
dealloc(newmem)
