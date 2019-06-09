import strutils
import prelude
import lex


proc repl(): void =
    let prompt = "slambda"
    while true:
        var input = ""
        try :
            print("\n", prompt, "> ")
            input = readLine(stdin)
        except EOFError:
            echo ""
            break
        echo input
        lexString(input);
repl();

