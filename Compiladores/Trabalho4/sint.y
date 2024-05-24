%{
#include "analex.c"
#include "codigos.h"
%}

%token NUM
%token ID
%token INT
%token IF
%token ELSE
%token WHILE
%token GE
%token DO
%token LE
%token NE
%token EQ
%token FLOAT
%token CHAR
%token DOUBLE
%token VOID
%token LONG
%token SHORT
%token UNSIGNED
%token SIGNED
%token SIZEOF
%token AT_MOD
%token FOR
%token AND
%token OR
%token INC
%token DEC
%token AT_SOMA
%token AT_SUBT
%token AT_MULT
%token AT_DIV
%token STRUCT
%token RETURN
%token DESL_DIR
%token DESL_ESQ
%token SWITCH
%token CASE
%token BREAK
%token DEFAULT
%token TYPEDEF
%token PRINT
%token PRINTLN
%token READ
%left '>' '<'
%left '+' '-'
%left '*' '/'
%start Prog
%%
Prog : Funct_Seq
	;

Funct_Seq:
    Funct_Seq Funct
    |
    ;

Funct:
    Type_f ID '(' Args ')' '{' Decls Statement_Seq'}'
    ;

Args:
    Type_f ID
    | Type_f ID ';' Args
    |
    ;

Type_f:
    INT
    | CHAR
    | FLOAT
    | DOUBLE
    | SHORT
    | LONG
    | VOID
    ;

Type:
      INT
    | CHAR
    | FLOAT
    | DOUBLE
    | SHORT
    | LONG
    ;

Decls:
     Decl ';' Decls
    |
    ;

Decl:
    Type Id_Seq
    ;

Id_Seq:
    ID ',' Id_Seq
    | ID
    ;


Statement_Seq :
	Statement Statement_Seq
	|
	;

Compound_Stt:
    Statement
    |'{'Statement_Seq'}'
    ;


Statement:
    Atribuicao
    | If
    | While
    | Do_While
    | PRINT '('ID')' ';'
    | PRINTLN '('ID')' ';'
    | ID '=' READ '('')' ';'
    ;


If:
    IF '(' Exp_Bool ')' Compound_Stt
    |IF '(' Exp_Bool ')' Compound_Stt ELSE Compound_Stt
    ;

While:
    WHILE '('Exp_Bool')' Compound_Stt
    ;

Do_While:
    DO Compound_Stt WHILE '('Exp_Bool')' ';'
    ;

Atribuicao : ID '=' Exp_Bool ';' {Move($1,$3);}
	;

Exp : Exp '+' Exp
	| Exp '-' Exp
	| Exp '*' Exp
	| Exp '/' Exp
	| '(' Exp_Bool ')'
	| NUM			{$$ = newTemp(); Li($$,$1);}
	| ID
	;


Exp_Rel :
      Exp_Rel '>' Exp
	| Exp_Rel '<' Exp
	| Exp_Rel GE Exp
	| Exp_Rel LE Exp
	| Exp_Rel EQ Exp
	| Exp_Rel NE Exp
	| '(' Exp_Rel ')'
	| NUM
	| ID
	;

Exp_Bool :
      Exp_Bool AND Exp_Rel
    | Exp_Bool OR Exp_Rel
    | Exp_Rel
    ;

%%
int main(int argc, char **argv) {
  yyin = fopen(argv[1],"r");
  yyparse();
}


