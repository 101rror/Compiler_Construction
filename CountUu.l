%option main

%{
	int count = 0;
%}

%%
[Uu] count++;
. ;

\n {
	printf("Count Uu = %d\n", count);
	count = 0;
}
%%