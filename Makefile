LEX = lex
YACC = bison
CXX = g++

all: 
	$(YACC) -dv -b geny calc.ypp
	$(LEX) -o genl.cpp calc.l
	$(CXX) -c genl.cpp -o genl.o
	$(CXX) -c  -o geny.o geny.tab.cpp
	$(CXX) -o genexe genl.o geny.o

clean:
	rm gen*

# echo "1+1;"|./gencal