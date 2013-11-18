cc.o () {
  OBJ="$(basename "$1" '.c').o"
  ${CC:-cc} -O2 -o "${OBJ}" "$1"
}

alias cc.symbols="${CC:-cc} -O2 -g"

alias cdecl.ex="cdecl explain"

alias gcc.lint="gcc \
  -ansi -pedantic \
  -W -Wall \
  -Wundef \
  -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations \
  -Wcast-qual -Wwrite-strings \
  -O2"

alias valgrind.full="valgrind --leak-check=full"
