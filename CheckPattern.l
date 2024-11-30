%option main

%%
[0-9]{2}[1-3](-115-)[0-9]{3} {printf("It is a valid pattern for CSE.");}

.* {printf("It is not a valid.");}
%%