# Makefile

fb3-2: fb3-2.tab.c fb3-2.lex.c fb3-2funcs.c
	cc -g -o $@ fb3-2.tab.c fb3-2.lex.c fb3-2funcs.c -lm -lfl

fb3-2.tab.c fb3-2.tab.h: fb3-2.y
	bison -d fb3-2.y

fb3-2.lex.c: fb3-2.l fb3-2.tab.h
	flex -o fb3-2.lex.c fb3-2.l

clean:
	rm -f fb3-2 fb3-2.tab.c fb3-2.tab.h fb3-2.lex.c
