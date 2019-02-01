%{
#include "main.h"
#include "geny.tab.hpp"
#include <iostream>

using namespace std;

#define YY_DECL int yylex(int debug)
%}

%x COMMENT

%%

[0-9\.]+                {yylval.a_number = atof(yytext);
                         DEBUG {cout<<yytext<<"\n";}
                         return number;}
[ \t\n]                 ;
[-+*/^%()=~e]           {return yytext[0];}
[#]                     {BEGIN COMMENT;}
pi                      {yylval.a_number = PI;
                         return number;}
<COMMENT>\n             {BEGIN INITIAL;}
<COMMENT>.              ;
.                       {ECHO; yyerror (0, "unexpected character");}

%%

int yywrap(void)
{
    return 1;
}
