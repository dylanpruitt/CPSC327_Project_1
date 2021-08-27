default: myexe

myexe: main.o myfunc.o
	g++ -o myexe main.o myfunc.o

main.o: main.cpp
	g++ -c main.cpp

myfunc.o: myfunc.cpp myfunc.h
	g++ -c myfunc.cpp

clean:
	$(RM) myexe *.o
