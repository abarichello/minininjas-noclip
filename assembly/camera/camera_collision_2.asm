[ENABLE]

aobscanmodule(INJECT,ninja.exe,D9 58 04 D9 44 24 10 D9 58 08 C3) // should be unique
alloc(newmem,$1000)

label(code)
label(return)

newmem:

code:
  fstp st(0)
  fld dword ptr [esp+10]
  jmp return

INJECT:
  jmp newmem
  nop
  nop
return:
registersymbol(INJECT)

[DISABLE]

INJECT:
  db D9 58 04 D9 44 24 10

unregistersymbol(INJECT)
dealloc(newmem)

