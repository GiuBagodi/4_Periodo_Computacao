#include <stdio.h>
#include <stdlib.h>
#include "analex.h"

int token;

void E();
void T();
void E_linha();
void T_linha();
void F();
void erro();
void reconhecer(int tok);

void erro() {
	printf("Erro sintatico\n");
	exit(1);
}

void reconhecer(int tok) {
	if (tok == token)
	  token = analex();
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
        break;
    case '-':
        reconhecer('-');
        break;
    default:
        T();
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
        T_linha();
        break;
    case '/':
        reconhecer('/');
        F();
        T_linha();
        break;
    default:
        erro();
        break;
    }
}

void F(){
    switch(token){
    case NUM:
        reconhecer(NUM);
        break;
    case '(':
        reconhecer('(');
        E();
        reconhecer(')');
        break;


    }
}

main() {
   token = analex();
   E();
   if (token != ';')
     erro();
   else
     printf("Sucesso!!\n");
}

