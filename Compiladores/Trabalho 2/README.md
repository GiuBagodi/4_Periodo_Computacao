
# Trabalho 2 - Analisador Léxico + Gerenciador de Tabela de Símbolos

## Lex: Gerador de Analisadores Léxicos

- Reconhecer os tokens da linguagem escolhida e retornar um código diferente para cada tokem
- Inserir todo Identificador na Tabela de Símbolos
  - Nome
  - Tipo
  - Tamanho

## Arquivos
- analex.l -> LEX -> analex.c (yylex())
- tokens.h
- tabsimb.h

Código exemplo de tabsimb.h
```c
int procura (char * nome);
int insere(char * nome);
char * nome obtemnome(int pos);
void imprime();
``` 

## O analisador deverá :

- Ler um arquivo na linguagem escolhida/desenvolvida (passado por linha de comando). Para cada token encontrado o programa deverá imprimir uma linha com o código do token e seu respectivo lexema.

- Uma tabela de símbolos deverá ser construída para armazenar cada identificador encontrado no arquivo fonte.

- O gerenciamento da tabela de símbolos (identificadores) deverá ser escrito em um arquivo de biblioteca de funções **(.h)**, por exemplo, **"tabsimb.h"**.

### As seguintes funções deverão ser implementadas:

```
int insere(char *nome)
```
   insere um nome na tabela e retorna a posição inserida

```
int procura(char * nome)
```
   procura um nome na tabela e retorna a posição encontrada (0 a n) ou -1 se não encontrar.
```
void imprime()
```
   imprime os símbolos da tabela na tela.
```
char * obtemNome(int pos)
```
  retorna o nome do símbolo na posição pos.

###  Exemplo da estrutura simbolo
```
struct symbol {

   char nome[30];

   int tamanho;

   int tipo;

};
```

### Como Compilar:
```
lex -oanalex.c analex.l

gcc analex.c -o analex.exe

analex.exe teste.c

 ```
