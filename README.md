## Toy Calculator

Minimal demo on the usage of GNU lex(flex) and yacc(bison).

Features explored in this demo include:
* C++ support
* Different states in lex
* Precedence and associativity in yacc
* Pass parameters into yyparse() and yylex()

### Quick Start

```bash
$ make all
$ ./genexe
1+1*2=
> the result is 3
3e3+(3/~)=
> the result is 3001
```



