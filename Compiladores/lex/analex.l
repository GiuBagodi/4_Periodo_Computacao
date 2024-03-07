    // definicoes regulares declaracoes
%{
#include <stdio.h>
int numeros=0, palavras=0, linha=1;
%}

%%
[0-9]+      {numeros++;}
[a-zA-Z]+   {palavras++;}
[ \t]+       {}
\n          {linha++;}
.           {printf("erro lexico na linha %d\n", linha);}

%%
void main(){
    yylex();
    printf("Constantes: %d  Palavras: %d\n", numeros, palavras);
}
