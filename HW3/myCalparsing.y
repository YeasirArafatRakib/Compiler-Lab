%{
#include <stdio.h>
int yylex();
void yyerror(const char *s);
%}
%token NUMBER PLUS TIMES MINUS DIVISION BRA KET NEWLINE
%%
lines	:	line
	|	line lines
	;

line	:	expr NEWLINE		{ printf("line:value: %d\n",$1);}
	;
expr	:	expr PLUS term		{$$ = $1+$3;}
	|       expr MINUS term		{$$ = $1 - $3;}
	|	term			{$$ =  $1;}
	;
term	:	term TIMES factor	{$$ = $1 * $3;}
	|	term DIVISION factor	{$$ = $1 / $3;}
	|	factor			{$$ = $1;}
	;
factor	:	BRA expr KET		{$$ = $2;}
	|	NUMBER			{$$ =$1;}
	;
%%
#include "lex.yy.c"
