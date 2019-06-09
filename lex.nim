

import npeg, strutils, tables
import sequtils


import npeg
import prelude
var wordlist : seq[LexItem] = @[]


let parser = peg "lex":
    lex <- *((cbracket | obracket | num | word) * *' ')
    word <- > +Alpha : wordlist.add( LexItem(lextype:Word, value: $1))
    num <- > +Digit : wordlist.add( LexItem(lextype:Number, value: $1))
    obracket <- > '[' : wordlist.add( LexItem(lextype:OpenBracket, value:"["))
    cbracket <- > ']' : wordlist.add( LexItem(lextype:CloseBracket, value:"]"))

proc lexString*( input: string ): void =
    let result = parser.match("[[test 12 ]]")
    print(wordlist)






