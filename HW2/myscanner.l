%{
#include "myscanner.h"
%}
%%
: return COLON;
"db_type" return TYPE;
"db_name" return NAME;
"db_table_prefix" return TABLE_PREFIX;
"db_port"
return PORT;
[a-zA-Z][_a-zA-Z0-9]*
[1-9][0-9]*
[ \t\n]
.
return IDENTIFIER;
return INTEGER;
;
printf("unexpected character");
%%
int yywrap(void)
{
return 1;
}
