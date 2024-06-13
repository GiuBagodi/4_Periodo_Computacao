%union {
  struct no {
    int place;
	char *code;
  } node;
  int place;
}
%{
#include "analex.c"
#include "codigos.h"
%}
%token <place> NUM
%token <place> ID
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
%left AND OR
%left '>' '<' NE EQ GE LE
%left '+' '-'
%left '*' '/'

%type <node> Exp Atribuicao Compound_Stt
%type <node> Statement Statement_Seq If
%type <node> While Exp_Bool Exp_Rel Do_While


%start Prog
%%
Prog : Funct_Seq
	;

Funct_Seq:
    Funct_Seq Funct
    |
    ;

Funct:
    Type_f ID '(' Args ')' '{' Decls Statement_Seq'}' { printf("%s",$8.code);}
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

Statement_Seq:
	Statement				   { create_cod(&$$.code);
								 insert_cod(&$$.code,$1.code);
							   }
	| Statement_Seq Statement  { create_cod(&$$.code);
								 insert_cod(&$$.code,$1.code);
								 insert_cod(&$$.code,$2.code);
						       }

Compound_Stt:
    Statement
    |'{'Statement_Seq'}' {$$ = $2;}
    ;

Statement:
    Atribuicao
    | If
    | While
    | Do_While
    | PRINT '(' Exp ')' ';' {}
	| PRINTLN '(' Exp ')' ';' { Println(&$$,$3);}
	| ID '=' READ '(' ')' ';' { Read(&$$,$1);  }
	;


If:
    IF '(' Exp_Bool ')' Compound_Stt  { If(&$$,$3,$5); }
    |IF '(' Exp_Bool ')' Compound_Stt ELSE Compound_Stt  { IfElse(&$$,$3,$5,$7); }
    ;

While:
    WHILE '('Exp_Bool')' Compound_Stt  { While(&$$,$3,$5); }
    ;

Do_While:
    DO Compound_Stt WHILE '('Exp_Bool')' ';' {}
    ;

Atribuicao : ID '=' Exp_Bool ';'  { Atrib(&$$,$1,$3); }
	;

Exp : Exp '+' Exp       { ExpAri("add",&$$,$1,$3); }
	| Exp '-' Exp       { ExpAri("sub",&$$,$1,$3); }
	| Exp '*' Exp       { ExpAri("mul",&$$,$1,$3); }
	| Exp '/' Exp       { ExpAri("div",&$$,$1,$3); }
	| '(' Exp_Bool ')'  {$$ = $2;}
	| NUM			    {$$.place = newTemp(); Li(&$$,$1);}
	| ID                {create_cod(&$$.code); $$.place = $1;}
	;


Exp_Rel :
      Exp_Rel '>' Exp   { ExpRel("bgt",&$$,$1,$3);}
	| Exp_Rel '<' Exp   { ExpRel("blt",&$$,$1,$3);}
	| Exp_Rel GE Exp    { ExpRel("bge",&$$,$1,$3);}
	| Exp_Rel LE Exp    { ExpRel("ble",&$$,$1,$3);}
	| Exp_Rel EQ Exp    { ExpRel("beq",&$$,$1,$3);}
	| Exp_Rel NE Exp    { ExpRel("bne",&$$,$1,$3);}
	| Exp
	;

Exp_Bool :
      Exp_Bool AND Exp_Rel  { ExpRel("and",&$$,$1,$3);}
    | Exp_Bool OR Exp_Rel   { ExpRel("or",&$$,$1,$3);}
    | Exp_Rel
    ;

%%
int main(int argc, char **argv) {
  freopen("saida.asm","w",stdout);
  printf(".text\n");
  yyin = fopen(argv[1],"r");
  yyparse();

}


