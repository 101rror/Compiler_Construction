%option noyywrap
%{
	#include<stdio.h>
%}

%%
Hello printf("Hello everyone") ;
. ;
%%
int main()
{
	yylex();
	return 0;
}