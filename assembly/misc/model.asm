[ENABLE]

aobscanmodule(INJECT,ninja.exe,D9 59 04 D9 59 08 83 C4 08 C3 CC CC CC CC CC CC CC 83 EC 08 53) // should be unique
alloc(newmem,$1000)

label(code)
label(return)

newmem:

code:
  fstp st(0)
  fstp dword ptr [ecx+08]
  jmp return

INJECT:
  jmp newmem
  nop
return:
registersymbol(INJECT)

[DISABLE]

INJECT:
  db D9 59 04 D9 59 08

unregistersymbol(INJECT)
dealloc(newmem)
