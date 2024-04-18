
# Trabalho 3 - Analisador Sintático 

## Implemente um Analisador Sintático para uma linguagem de Alto nível usando o YACC.

### As seguintes estruturas devem ser reconhecidas e traduzidas:

- Atribuições - 1 ponto 

- Expressões Aritméticas/Lógicas Booleanas/Relacionais - 1 ponto 

- Estruturas de seleção IF-ELSE - 1 ponto

- Estruturas de repetição WHILE e DO-WHILE - 2 pontos

- Definição e chamadas de procedimentos/funções - 2 pontos 


### Como Compilar:
```
lex -oanalex.c analex.l

yacc -o sint.c sint.y -d

gcc sint.c -o sint.exe
```

### Para executar:
```
sint.exe teste.c
```
