#include <stdio.h>
#include <stdlib.h>
#include "analex.h"

void main() {
  int token;
  int i = 1;
  token = analex();
  while (token != ';') {
  	printf("%d: %d -> %d\n",i++,token,tokenval);
  	token = analex();
  }
}
