[ENABLE]

aobscanmodule(INJECT,ninja.exe,43 08 D9 CA D9 19 D9 59 04 D9 59 08) // should be unique
alloc(newmem,$1000)

label(code)
label(return)

newmem:

code:
  fstp st(0)
  fstp dword ptr [ecx+08]
  jmp return

INJECT+06:
  jmp newmem
  nop
return:
registersymbol(INJECT)

[DISABLE]

INJECT+06:
  db D9 59 04 D9 59 08

unregistersymbol(INJECT)
dealloc(newmem)
