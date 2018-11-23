[ENABLE]

aobscanmodule(INJECT,ninja.exe,D9 9F C8 05 00 00) // should be unique
alloc(newmem,$1000)

label(code)
label(return)

newmem:

code:
  fstp st(0)
  jmp return

INJECT:
  jmp newmem
  nop
return:
registersymbol(INJECT)

[DISABLE]

INJECT:
  db D9 9F C8 05 00 00

unregistersymbol(INJECT)
dealloc(newmem)
