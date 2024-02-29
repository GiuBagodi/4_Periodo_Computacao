#include <stdio.h>
#include <stdlib.h>
#include "analex.h"

/*
Codigo testa se analex.h esta funcionando
mostra se os caracteres estao sendo reconhecidos como tokens
precisa do ";" para funcionar corretamente (Ex: "5+6;")
*/

void main() {
  int token;
  int i = 1;
  token = analex();
  while (token != ';') {
  	printf("%d: %d -> %d\n",i++,token,tokenval);
  	token = analex();
  }
}
