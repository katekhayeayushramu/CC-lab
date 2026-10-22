
/* Name : Ayush Katekhaye Prn no : 24070521161 */

%{
#include <stdio.h>

int count = 0;
%}

%%

[A-Za-z]+ {
    if (yytext[0] == 'A' || yytext[0] == 'a')
        count++;
}

[ \t]+ ;
\n      return 0;
.       ;

%%

int main()
{
    yylex();

    printf("Number of words starting with 'A' or 'a' : %d\n", count);

    return 0;
}

int yywrap()
{
    return 1;
}
