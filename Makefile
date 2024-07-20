# Makefile for building fb3-2 using Bison, Flex, and GCC

# Target for final executable
fb3-2: fb3-2.tab.c fb3-2.lex.c fb3-2funcs.c
	cc -g -o $@ fb3-2.tab.c fb3-2.lex.c fb3-2funcs.c -lm -lfl

# Target for Bison parser files
fb3-2.tab.c fb3-2.tab.h: fb3-2.y
	bison -d fb3-2.y

# Target for Flex lexer file
fb3-2.lex.c: fb3-2.l fb3-2.tab.h
	flex -o fb3-2.lex.c fb3-2.l

# Clean up command
clean:
	rm -f fb3-2 fb3-2.tab.c fb3-2.tab.h fb3-2.lex.c
