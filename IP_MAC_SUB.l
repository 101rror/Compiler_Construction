%option noyywrap
%{
	#include<stdio.h>
%}

%%

255\.[0-255]{1,3}\.[0-255]{1,3}\.[0-255]{1,3}  { printf("Subnet Mask: %s\n", yytext); }
[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}   { printf("IP Address: %s\n", yytext); }
[0-9A-Fa-f]{2}:[0-9A-Fa-f]{2}:[0-9A-Fa-f]{2}:[0-9A-Fa-f]{2}:[0-9A-Fa-f]{2}:[0-9A-Fa-f]{2}  { printf("MAC Address: %s\n", yytext); }
.;

%%

int main()
{
	yylex();
	return 0;
}