%{
#include <stdio.h>
#include "sint.h"
#include "tabsimb.h"
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
"float" {return FLOAT;}
"char" {return CHAR;}
"double" {return DOUBLE;}
"void" {return VOID;}
"long" {return LONG;}
"short" {return SHORT;}
"unsigned" {return UNSIGNED;}
"signed" {return SIGNED;}
"for" {return FOR;}
"return" {return RETURN;}
"switch" {return SWITCH;}
"case" {return CASE;}
"break" {return BREAK;}
"default" {return DEFAULT;}
"struct" {return STRUCT;}
"typedef" {return TYPEDEF;}
"sizeof" {return SIZEOF;}
"print" {return PRINT;}
"println" {return PRINTLN;}
"read" {return READ;}
"#" {return '#';}
"&" {return '&';}
"&&" {return AND;}
"||" {return OR;}
"!" {return '!';}
"|" {return '|';}
"%" {return '%';}
"^" {return '^';}
"~" {return '~';}
"<<" {return DESL_ESQ;}
">>" {return DESL_DIR;}
"++" {return INC;}
"--" {return DEC;}
"+=" {return AT_SOMA;}
"-=" {return AT_SUBT;}
"*=" {return AT_MULT;}
"/=" {return AT_DIV;}
"%=" {return AT_MOD;}
">="  { return GE;}
"<="  { return LE;}
"=="  { return EQ;}
"!="  { return NE;}
">"   { return '>';}
"<"   { return '<';}
"="   { return '='; }
"+"   { return '+'; }
"-"   { return '-'; }
"*"   { return '*'; }
"/"   { return '/'; }
";"   { return ';'; }
":" {return ':';}
"_" {return '_';}
"." {return '.';}
"[" {return '[';}
"]" {return ']';}
"("   { return '('; }
")"   { return ')'; }
"{"   { return '{'; }
"}"   { return '}'; }
","   { return ','; }
[0-9]+("."[0-9]+)?   { yylval.place = atoi(yytext); return NUM; }
[a-zA-Z_][a-zA-Z0-9]*   { yylval.place = insere(yytext); return ID; }
\        { ; }
\n       { line++; }
\t       { ; }
\r       { }
"//".*\n { }
.        { yyerror("illegal token"); }
%%
#ifndef yywrap
int yywrap() { return 1; }
#endif

