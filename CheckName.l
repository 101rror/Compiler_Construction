%option main

%%
([A-Z][a-z]+[ ]?)+ {printf("It is a name of a person.\n");}

([A-Z][a-z ]+)+ {printf("It is a name of a person, But you should write the first letter in capital form.\n");}

.* {printf("It is not a name of a person.\n");}
%%