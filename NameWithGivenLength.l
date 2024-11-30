%option main

%%
[A-Z]{1}[a-z]{5} {printf("It is a 5 digit name of a person.\n");}

[A-Z][a-z]+ {printf("It is not a 5 digit name of a person.\n");}

.* {printf("It is not written in right form of a name.\n");}
%%