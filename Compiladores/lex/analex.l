    // definicoes regulares declaracoes
%{
#include <stdio.h>
#include "tokens.h"
int numeros=0, palavras=0, linha=1;
%}
%%
    //palavras reservadas
"if"    {return IF;}
"else"  {return ELSE;}
"while" {return WHILE;}
"int"   {return INT;}
"=="    {return EQ;}
">="    {return GE;}
">"     {return '>';}
"+"     {return '+';}
"-"     {return '-';}
"*"     {return '*';}
"/"     {return '/';}
"("     {return '(';}
")"     {return ')';}
"{"     {return '{';}
"}"     {return '}';}
";"     {return ';';}
"="     {return '=';}
[0-9]+   {return NUM;}
[a-zA-Z]+   {return ID;}
[ \t]+      {}
[\n]        {linha++;}
.           {printf("erro lexico na linha %d - %s\n", linha, yytext);}
%%
int yywrap(){
return 1;
}

void main(){
int token;
    token = yylex();
    while(token) {
        printf("%d - %s\n", token, yytext);
        token = yylex();
    }
}
