delim	[ \t]
ws	{delim}+
digit	[0-9]
number	{digit}+
%%
{ws};
\n	return(NEWLINE);
{number}	{
		yylval = atoi(yytext);
		return(NUMBER);
		}

"+"	return (PLUS);
"*"	return(TIMES);
"-"	return (MINUS);
"/"	return(DIVISION);

"("	return(BRA);
")"	return(KET);
%%
