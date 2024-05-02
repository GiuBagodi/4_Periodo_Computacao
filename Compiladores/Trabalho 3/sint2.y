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
Prog : Funct_Seq
	;

Funct_Seq:
    Funct_Seq Funct
    |
    ;

Funct:
    Type_f ID '(' Args ')' '{' Decls Statement_Seq'}'

Args:
    Type_f
    | Type_f ';' Args
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
    Decls Decl ';'
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
	;


If:
    IF '(' Exp ')' Compound_Stt
    |IF '('Exp')' Compound_Stt ELSE Compound_Stt
    ;

While:
    WHILE '('Exp')' Compound_Stt
    ;

Do_While:
    DO Compound_Stt WHILE '('Exp')'
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


