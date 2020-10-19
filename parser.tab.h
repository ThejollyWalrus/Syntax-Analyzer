/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_PARSER_TAB_H_INCLUDED
# define YY_YY_PARSER_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    IDENTIFIER = 258,
    NUM = 259,
    OTHER = 260,
    SEMICOLON = 261,
    LPARN = 262,
    WRITE = 263,
    WRITELN = 264,
    IF = 265,
    ELSE = 266,
    RETURN = 267,
    RPARN = 268,
    BREAK = 269,
    READ = 270,
    LEFTBRAC = 271,
    RIGHTBRAC = 272,
    LEFTCURLY = 273,
    RIGHTCURLY = 274,
    WHILE = 275,
    KEYWORD = 276,
    AND = 277,
    OR = 278,
    ADD = 279,
    MINUS = 280,
    MUL = 281,
    DIV = 282,
    EQUAL = 283,
    EQUALS = 284,
    NOTEQUAL = 285,
    LESSTHAN = 286,
    LESSTHANOREQ = 287,
    GREATERTHAN = 288,
    GREATERTHANOREQ = 289,
    INT = 290,
    CHAR = 291,
    ID = 292,
    CONSTANT = 293
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 51 "Parser.y" /* yacc.c:1909  */

	  char identifier[20];
	  char identifier1[7]; 
    	  int numbers;
	  char seperator[1];
	  char operator[2];
	  char keyword[7];

#line 102 "Parser.tab.h" /* yacc.c:1909  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_PARSER_TAB_H_INCLUDED  */
