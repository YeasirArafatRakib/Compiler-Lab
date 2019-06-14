%{
#include<stdio.h>
int yylex();
int sym[26];
void yyerror(const char *s);
%}
%left '+' '-'
%left '*' '/'
%token  VARIABLE INTEGER
%% 
program  :program statement '\n'
         |
         ;

statement :expr                      { printf("%d\n", $1); }
         | VARIABLE '=' expr       { sym[$1] = $3; }
         ;  

expr:INTEGER
         | VARIABLE                { $$ = sym[$1]; }
         | expr '+' expr           { $$ = $1 + $3; }
         | expr '-' expr           { $$ = $1 - $3; }
         | expr '*' expr           { $$ = $1 * $3; }
         | expr '/' expr           { $$ = $1 / $3; }
         | '(' expr ')'            { $$ = $2; }
         ;
%%
#include "lex.yy.c"
extern int yylex();
extern int yyparse();
int main() { yyparse(); }
