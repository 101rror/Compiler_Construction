%option noyywrap
%{
	#include<stdio.h>
%}


%%
[^ \n]{1,10} { printf("Invalid Phone Number\n"); }
[^ \n]{15,} { printf("Invalid Phone Number\n"); }
\\+88017[0-9]{8} { printf("Bangladesh\n"); }
\\+1[0-9]{9} { printf("USA\n"); }
\\+1[0-9]{10} { printf("Canada\n"); }
\\+61[0-9]{8} { printf("Australia\n"); }
. ;

%%

int main()
{
	yylex();
	return 0;
}
