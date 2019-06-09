
template print*(parameters: varargs[string, `$`]) =
    for p in parameters:
      write(stdout, p)

type
  LexType* = enum Number, Word, OpenBracket, CloseBracket
  LexItem* = object 
    lextype* : LexType
    value* : string
    