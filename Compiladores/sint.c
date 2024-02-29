#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>
#include "analex.h"
#include "pilha.h"

/*
    pilha.h realiza a traducao
    analex.h realiza a funcao lexica
*/

int token;
void P();
void E();
void T();
void E_linha();
void T_linha();
void F();
void erro();
void reconhecer(int tok);

void erro() {
	printf("Erro sintatico na linha %d\n", line);
	exit(1);
}

void reconhecer(int tok) {
	if (tok == token)
	  token = analex();
	else
	  erro();
}

void P(){
    E();
    if (token == ';')
        printf("\n%d\n", topo());
    else
        erro();
}
// implementar aqui
void E() {
    T();
    E_linha();
}

void E_linha(){
    switch(token){
    case '+':
        reconhecer('+');
        T();
        printf("+ ");
        //5 6 + (testando com 5+6;)
        a = pop();
        b = pop();
        push(b+a);

        E_linha();
        break;
    case '-':
        reconhecer('-');
        T();
        printf("- ");

        a = pop();
        b = pop();
        push(b-a);

        E_linha();
        break;

    }
}

void T(){
    F();
    T_linha();
}

void T_linha(){
    switch(token){
    case '*':
        reconhecer('*');
        F();
        printf("* ");

        a = pop();
        b = pop();
        push(b*a);

        T_linha();
        break;
    case '/':
        reconhecer('/');
        F();
        printf("/ ");

        a = pop();
        b = pop();
        push(b/a);

        T_linha();
        break;
    }
}

void F(){
    switch(token){
    case NUM:
        printf("%d ", tokenval);
        push(tokenval);
        reconhecer(NUM);

        break;
    case '(':
        reconhecer('(');
        E();
        reconhecer(')');
        break;

    }
}


int main() {
   token = analex();
   P();

}
