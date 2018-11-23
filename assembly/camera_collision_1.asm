[ENABLE]

aobscanmodule(INJECT,ninja.exe,D9 56 10 8D 84 24 84 00 00 00) // should be unique
alloc(newmem,$1000)

label(code)
label(return)

newmem:

code:
  fst st(0)
  lea eax,[esp+00000084]
  jmp return

INJECT:
  jmp newmem
  nop
  nop
  nop
  nop
  nop
return:
registersymbol(INJECT)

[DISABLE]

INJECT:
  db D9 56 10 8D 84 24 84 00 00 00

unregistersymbol(INJECT)
dealloc(newmem)
