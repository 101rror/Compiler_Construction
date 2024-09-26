%option noyywrap
%{
	#include<stdio.h>
%}

%%
[0-9] {printf("Digit");}
[a-zA-Z] {printf("Character");}
[^a-zA-Z0-9 \n] {printf("Special");}
. ;
%%
int main()
{
	yylex();
	return 0;
}