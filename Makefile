ifdef OS
	RM = del /Q
else
	RM = rm -f
all: prog

prog: prog.o func.o
	g++ -g -o prog prog.o func.o
prog.o: prog.cpp
	g++ -c -Wall -g prog.cpp
func.o: func.cpp
	g++ -c -Wall -g func.cpp

clean: 
	$(RM) /Q *.o
	$(RM) /Q *.exe
