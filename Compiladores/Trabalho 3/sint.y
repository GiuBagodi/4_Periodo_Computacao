%{
#include "analex.c"
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
%left '+' '-'
%left '*' '/'
%start Prog
%%
Prog : Statement_Seq
	;

Statement_Seq :
	Statement Statement_Seq
	|
	;

Statement:
		Atribuicao
		| If
	;
If:
    IF '(' Exp ')' Statement
    |IF '(' Exp ')' '{' Statement_Seq'}'
    ;

Atribuicao : ID '=' Exp ';'
	;

Exp : Exp '+' Exp
	| Exp '-' Exp
	| Exp '*' Exp
	| Exp '/' Exp
	| '(' Exp ')'
	| NUM
	| ID
	;




%%
int main(int argc, char **argv) {
  yyin = fopen(argv[1],"r");
  yyparse();
}


