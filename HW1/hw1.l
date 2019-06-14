%%
[1-9][0-9]* printf( "integer ") ;
[0-9]*[.][0-9]* printf("This is float number");
[+]
printf("This is plus operator");
[-] printf("This is minus operator");
[*] printf("This is multiply operator");
[/] printf("This is divided operator");
[(] printf("This is open parenthesis");
[)] printf("This is close parenthesis");
[{] printf("This is open second bracket");
[}] printf("This is close second bracket");
[\[] printf("This is open third bracket");
[]] printf("This is close third bracket");
. printf("Unexpected Value");
%%
