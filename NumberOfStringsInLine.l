%option main
%{
	int count = 0;
%}

%%
[a-zA-Z]+     { count++; }
. ;

\n { 
	printf("%d\n", count); 
        count = 0; 
	}
%%