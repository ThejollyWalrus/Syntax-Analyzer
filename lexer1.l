%{
//Mason Hamilton
//CST-405

//#include "SymbolTable.c"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
//#include "test.tab.h"
#include "parser.tab.c"




int chars = 0;
int words = 0;
int lines = 0;
int errors = 0;
int para = 0;
int brac = 0;
//field* symTable;

%}

%%


"("|")" 	{para++;chars++;printf("%6s : PARENTHESE | Line:%i\n", yytext, lines);}

"{"|"}" 	{brac++;chars++;printf("%6s : BRACE      | Line:%i\n", yytext, lines);} 

"=" 		{chars++;printf("%6s : EQUAL SIGN | Line:%i\n", yytext, lines); return EQUAL;}
"+" 		{chars++;printf("%6s : PLUS SIGN    | Line:%i\n", yytext, lines);}
"-" 		{chars++;printf("%6s : MINUS SIGN   | Line:%i\n", yytext, lines);}
"*" 		{chars++;printf("%6s : MULTIPLY SIGN| Line:%i\n", yytext, lines);}
"/" 		{chars++;printf("%6s : DIVIDE SIGN   | Line:%i\n", yytext, lines);}
"^" 		{chars++;printf("%6s : SQUARE ROOT SIGN   | Line:%i\n", yytext, lines);}

">"|"<"|"=<"|"=>"|"=="|"<="|">=" {chars++;printf("%6s : BOOL OPERATOR | Line:%i\n", yytext, lines);}
";" 		{chars++;printf("%6s : SEMI-COLON | Line:%i\n", yytext, lines);}
":" 		{chars++;printf("%6s : COLON : Line: %i :\n", yytext, lines);}
test|write|main {words++; chars += strlen(yytext);printf("%6s : FUNCTION   | Line:%i\n", yytext, lines);}
int|return 	{words++; chars += strlen(yytext);printf("%6s : TYPE       | Line:%i\n", yytext, lines);}


Int|iNt|inT|INt|InT|INt|INT {words++; errors++; chars += strlen(yytext);printf("%6s : ERROR in line %i: At least one letter is capatilized incorrectly. Try int\n", yytext, lines);}
Test|tEst|teSt|tesT|TEst|TeSt|TesT|tESt|tEsT|teST|TESt|TeST|TEsT|tEST {words++; errors++; chars += strlen(yytext);printf("%6s : ERROR in line %i: At least one letter is capatilized incorrectly. Try test\n", yytext, lines);}
[a-zA-Z]+ {words++; chars += strlen(yytext);printf("%6s : IDENTIFIER | Line:%i\n",yytext, lines);}
\n {chars++; lines++;}
. {chars++;}

%%
/*
int main(int argc, char **argv)
{

//initSymtable(symTable, 5);

//display(symTable);

printf("_____________________________\n");
printf("Token    Type          Line\n");
printf("_____________________________\n");


if(argc > 1){
          if(!(yyin = fopen(argv[1],"r"))){
             perror(argv[1]);
             return(1);
          }
        }
        yylex();
if (para % 2 != 0){
	printf(" Error : Missing/Extra Parenthese\n");
	errors++;
	}
if (brac % 2 != 0){
	printf(" Error : Missing/Extra Brace\n");
	errors++;
	}
printf("_____________________________\n");
printf("Lines: %8d\nWords: %8d\nChars: %8d\nErrors: %7d\n", lines,words, chars, errors);
printf("_____________________________\n");
}
*/
