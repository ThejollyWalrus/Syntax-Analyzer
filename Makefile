default:
	clear
	flex -l lexer1.l
	bison -dv Parser.y
	gcc -o Analyzer text.tab.c lex.yy.c -lfl
	./Analyzer 