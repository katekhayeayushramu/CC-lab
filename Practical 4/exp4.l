%{
 //Name: Ayush Katekhaye  PRN: 24070521161
 #include "y.tab.h"
%}
%%
[0-9]+ {return NUM;}
[ \t] ;
\n return 0;
. {return yytext[0];}
%%
int yywrap()
{
    return 1;
}
