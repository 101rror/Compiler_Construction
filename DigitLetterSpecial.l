%option main

%%
[A-Z]+ {printf("Capital letters = %s\n", yytext);}

[a-z]+ {printf("Small letters = %s\n", yytext);}

[0-9]+ {printf("Digit = %s\n", yytext);}

[^a-zA-Z0-9\n]+ {printf("Special Characters = %s\n\n", yytext);}
%%