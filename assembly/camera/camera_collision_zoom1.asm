define(address,"ninja.exe"+230139)
define(bytes,DD D0 90 8D 84 24 84 00 00 00)

[ENABLE]

assert(address,bytes)
alloc(newmem,$1000)

label(code)
label(return)

newmem:

code:
  fst st(0)
  nop 
  lea eax,[esp+00000084]
  jmp return

address:
  jmp newmem
  nop
  nop
  nop
  nop
  nop
return:

[DISABLE]

address:
  db bytes
  fst dword ptr [esi+10]
  lea eax,[esp+00000084]

dealloc(newmem)
