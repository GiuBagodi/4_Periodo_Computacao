%{
#include <stdio.h>
#include "tabsimb.h" 
#include "mycomp.h"
int line=1;
int yyerror(char *s) { 
  fprintf(stderr, "%s na linha %d\n",s,line); 
}
%}
%%
"if"  { return IF; }
"else" { return ELSE;}
"while" { return WHILE;}
"do"  { return DO;}
"int" { return INT;}
"char" {return CHAR;}
"void" {return VOID;}
"read" {return READ;}
"print" {return PRINT;}
"println" {return PRINTLN;}
"&&" {return AND;}
"||" {return OR;}
">="  { return GE;}
"<="  { return LE;}
"=="  { return EQ;}
"!="  { return NE;}
"!"   { return NOT;}
">"   { return '>';}
"<"   { return '<';}
"="   { return '='; }
"+"   { return '+'; }
"-"   { return '-'; }
"*"   { return '*'; }
"/"   { return '/'; }
";"   { return ';'; }
"("   { return '('; }
")"   { return ')'; }
"{"   { return '{'; }
"}"   { return '}'; }
","   { return ','; }
[0-9]+("."[0-9]+)?   { yylval.place = atoi(yytext); return NUM; }
[a-zA-Z][a-zA-Z0-9]*   { yylval.place = insere(yytext); return ID; }
\        { ; }
\n       { line++; }     
\t       { ; }
"//".*\n { }             
.        { yyerror("illegal token"); }
%%
#ifndef yywrap
int yywrap() { return 1; }
#endif



