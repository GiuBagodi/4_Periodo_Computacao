char instrucao[30];

/************  Funções para manipulacao de  strings ****************/
// cria um código vazio
create_cod(char **codigo) {
  *codigo = (char *) malloc(1);
  strcpy(*codigo,"");
}
// insere uma instrução a uma lista de instruções ja existente
insert_cod(char **codigo, char *instrucao) {
char *aux;
  aux = *codigo;
  *codigo = (char *) malloc(strlen(*codigo)+strlen(instrucao)+2);
  strcpy(*codigo,aux);
  strcat(*codigo,instrucao);
  free(aux);
}
// imprime codigo na tela
print_cod(char *codigo) {
  printf("%s",codigo);
}
/*******************************************************************/

