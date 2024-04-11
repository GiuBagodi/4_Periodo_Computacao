#include <stdio.h>
#include <ctype.h>
#define NUM 256
//#define ID  257
//#define QUIT 258
//#define PRINT 259

int tokenval;
int line = 1;

int analex(){
    int ch;
    tokenval = -1;
    ch = getchar();

// elimina espacos em branco e tabulacoes

while (ch == ' ' || ch == '\t' || ch == '\n'){

    if( ch == '\n')
        line++;
    ch = getchar();
}
switch (ch){

    case '-': return '-';
    break;

    case '+': return '+';    if ( ch == '+')
    return '+';

    break;

    case '/': return '/';
    break;

    case '*': return '*';
    break;

    case '(': return '(';
    break;

    case ')': return ')';
    break;

    case ';': return ';';
    break;

    }
if (isdigit(ch))
    {
    tokenval = ch - '0';
    ch = getchar();

    while(isdigit(ch)){
        tokenval = tokenval*10 + ch - '0';
        ch = getchar();
    }
    ungetc(ch,stdin);
    return NUM;

    }
    printf("Erro lexico na linha (%c): %d\n", line);
}





