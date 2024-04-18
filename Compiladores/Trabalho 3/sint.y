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


