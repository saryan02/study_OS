ifdef OS
	RM = del /Q
else
	RM = rm -f
endif
all: prog 

prog: prog.o func.o
	g++ -g -o prog prog.o func.o
prog.o: prog.cpp
	g++ -c -Wall prog -g prog.cpp
func.o: func.cpp
	g++ -c -Wall -g func.cpp

clean: 
	$(RM) *.o
	$(RM) *.exe
