%{
#include <stdio.h>

int yylex();
int yyerror(char *s);
extern FILE *yyin;

%}

%token IDENTIFIER NUM OTHER SEMICOLON LPARN WRITE WRITELN IF ELSE RETURN RPARN
%token BREAK READ LEFTBRAC RIGHTBRAC LEFTCURLY RIGHTCURLY WHILE KEYWORD AND OR
%token ADD MINUS MUL DIV EQUAL EQUALS NOTEQUAL LESSTHAN LESSTHANOREQ GREATERTHAN GREATERTHANOREQ
%token INT CHAR ID CONSTANT

%type <identifier> IDENTIFIER
%type <numbers> NUM
%type <keyword> KEYWORD
%type <keyword> WRITE
%type <keyword> WRITELN
%type <keyword> WHILE
%type <keyword> IF
%type <keyword> ELSE
%type <keyword> RETURN 
%type <keyword> BREAK
%type <keyword> READ
%type <seperator> LPARN
%type <seperator> RPARN
%type <seperator> LEFTBRAC
%type <seperator> RIGHTBRAC
%type <seperator> LEFTCURLY
%type <seperator> RIGHTCURLY
%type <seperator> SEMICOLON
%type <operator> ADD
%type <operator> MINUS
%type <operator> MUL
%type <operator> DIV
%type <operator> EQUAL
%type <operator> EQUALS
%type <operator> NOTEQUAL 
%type <operator> LESSTHAN
%type <operator> LESSTHANOREQ
%type <operator> GREATERTHAN
%type <operator> GREATERTHANOREQ
%type <operator> AND
%type <operator> OR
%type <identifier> INT
%type <identifier> CHAR
%type <identifier> ID
%type <identifier> CONSTANT

%union{
	  char identifier[20];
	  char identifier1[7]; 
    	  int numbers;
	  char seperator[1];
	  char operator[2];
	  char keyword[7];
}

%%

prog:	
 stmts
;

stmts:
		| stmt SEMICOLON stmts

stmt:
		IDENTIFIER {
				printf("You entered THE IDENTIFIER - %s", $1);
		}
		| KEYWORD {
				printf("You entered the KEYWORD - %s", $1);
		}
		| NUM {
				printf("The number you entered is - %d", $1);
		}
		| WRITE {
				printf("Write is the keyword you entered - %s", $1);
		}
		| WHILE {
				printf("While is the keyword you entered - %s", $1);
		}
		| IF {
				printf("If is the keyword you entered - %s", $1);
		}
		| ELSE {
				printf("Else is the keyword you entered- %s", $1);
		}
		| RETURN {
				printf("Return is the keyword you entered - %s", $1);
		}
		| BREAK {
				printf("Break is the keyword you entered- %s", $1);
		}
		| READ {
				printf("Read is the keyword you entered - %s", $1);
		}
		| LPARN {
				printf("LParn is the left seperator you entered - %s", $1);
		}
		| RPARN {
				printf("RParn is the seperator you entered - %s", $1);
		}
		| LEFTBRAC {
				printf("LeftBra is the seperator you entered - %s", $1);
		}
		| RIGHTBRAC {
				printf("RightBra is the seperator you entered - %s", $1);
		}
		| LEFTCURLY {
				printf("LeftCurl is the seperator you entered - %s", $1);
		}		
		| RIGHTCURLY {
				printf("Right Curly is the seperator you entered - %s", $1);
		}
		| ADD {
				printf("Add is the operator you entered - %s", $1);
		}
		| MINUS {
				printf("Minus is the operator you entered - %s", $1);
		}
		| MUL {
				printf("Mul is the operator you entered - %s", $1);
		}
		| DIV {
				printf("Div is the operator you entered - %s", $1);
		}
		| EQUAL {
				printf("Equal is the operator you entered - %s", $1);
		}
		| EQUALS {
				printf("Equals is the operator you entered- %s", $1);
		}
		| NOTEQUAL {
				printf("NotEqual is the operator you entered - %s", $1);
		}
		| LESSTHAN {
				printf("LessThan is the operator you entered- %s", $1);
		}
		| LESSTHANOREQ {
				printf("LessThanOr is the operator you entered - %s", $1);
		}
		| GREATERTHAN {
				printf("GreaterThan is the operator you entered - %s", $1);
		}
		| GREATERTHANOREQ {
				printf("GreaterThanOrEqis the operator you entered - %s", $1);
		}
		| AND {
				printf("And is the operator you entered- %s", $1);
		}
		| OR {
				printf("Or is the operator you entered - %s", $1);
		}		
		| OTHER
;

%%

int yyerror(char *s)
{
	printf("Syntax Error on line %s\n", s);
	return 0;
}

int main(argc, argv)
int argc;
char **argv;
{

  if(argc > 1){
    if(!(yyin = fopen(argv[1],"r"))){
      perror(argv[1]);
      return(1);
    }
  }
  yylex();
  //printf("%8d lines\n %8d words\n %8d  chars\n",lines, words, chars);
}
