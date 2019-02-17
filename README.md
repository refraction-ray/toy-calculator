## Toy Calculator

Minimal demo on the usage of GNU lex(flex) and yacc(bison).

Features explored in this demo include:
* C++ support
* Different states in lex
* Precedence and associativity in yacc
* Pass parameters into yyparse() and yylex()

Syntax supported by the calculator include:

* `+,-,*,/,^,%` for calculation
* `3e-5` for scientific notion of number
* `~` for the result of last expression
* special constants, only `pi` is supported in this demo

### Quick Start

```bash
$ make all
$ ./genexe
1+1*2=
> the result is 3
3e3+(3/~)=
> the result is 3001
```

For a live demo of the program, see [here](http://showterm.io/f0c90e76c3437f1f37dbb).

