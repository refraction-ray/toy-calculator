#ifndef MAIN
#define MAIN
#define YY_SKIP_YYWRAP
#define DEBUG if (debug == 1)

#define PI 3.14159265

extern "C"
{
    int yyparse(int);
    int yylex(int);
    int yyerror(int, char*);
    int yywrap(void);
}

#endif