[ENABLE]

aobscanmodule(INJECT,ninja.exe,D9 5F 2C 81 4F 3C 00 00 10 00) // should be unique
alloc(newmem,$1000)

label(code)
label(return)

newmem:

code:
  fstp st(0)
  or [edi+3C],00100000
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
  db D9 5F 2C 81 4F 3C 00 00 10 00

unregistersymbol(INJECT)
dealloc(newmem)
