%{
#include<stdio.h>
#include<string.h>
FILE *yyin,*yyout;
%}
%%
strcpy(line,yytext);
%%
yywrap() { }
main()
{
yyin=fopen("input.txt","r");
yyout=fopen("output.txt","w");
yylex();
}
