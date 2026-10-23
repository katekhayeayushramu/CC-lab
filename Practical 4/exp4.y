%{
 //Name: Ayush Katekhaye  PRN: 2400521161
 #include<stdio.h>
 int yylex(); int yyerror(char *);
%}
%token NUM
%%
E: E '+' T|T;
T: T '*' F|F;
F: '(' E ')'|NUM;
%%
int yyerror(char*s)
{
}
int main()
{
    printf("Enter Expression: ");
    if(yyparse()==0)
        printf("Valid Expression\n");
    else
        printf("Invalid Expression\n");
    return 0;
}
