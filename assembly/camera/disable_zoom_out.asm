[ENABLE]

aobscanmodule(INJECT,ninja.exe,D9 5E 10 D9 EE D9 56) // should be unique
alloc(newmem,$1000)

label(code)
label(return)

newmem:

code:
  fstp st(0)
  fldz 
  jmp return

INJECT:
  jmp newmem
return:
registersymbol(INJECT)

[DISABLE]

INJECT:
  db D9 5E 10 D9 EE

unregistersymbol(INJECT)
dealloc(newmem)
