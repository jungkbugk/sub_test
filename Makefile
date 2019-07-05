all: sub

sub: sub.o main.o
	g++ -o sub sub.o main.o

sub.o : sub.h sub.cpp
	g++ -c -o sub.o sub.cpp

main.o : sub.h main.cpp
	g++ -c -o main.o main.cpp

clean :
	rm -f sub.o
	rm -f main.o
	rm -f sub
