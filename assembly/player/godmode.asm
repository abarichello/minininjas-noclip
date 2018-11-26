[ENABLE]

aobscanmodule(INJECT,ninja.exe,18 D9 56 04 DD 1C 24)
alloc(newmem,$1000)

label(code)
label(return)

newmem:

code:
  fst st(0)
  fstp qword ptr [esp]
  jmp return

INJECT+01:
  jmp newmem
  nop
return:
registersymbol(INJECT)

[DISABLE]

INJECT+01:
  db D9 56 04 DD 1C 24

unregistersymbol(INJECT)
dealloc(newmem)
