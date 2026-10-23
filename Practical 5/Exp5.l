%{
/*Name: Ayush Katekhaye PRN: 24070521161*/
#include <stdio.h>
char convert_char(char c){
    if (c >= 'a' && c <= 'z'){
        return c - 'a' + 'A';
    } else if (c >= 'A' && c <= 'Z'){
        return c - 'A' + 'a';
    }
    return c;
}
%}

%%
[a-zA-Z]    {putchar(convert_char(yytext[0]));}
            {putchar(yytext[0]);}
%%

int main(){
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}
