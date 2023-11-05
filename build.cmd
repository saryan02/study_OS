mkdir _build
cd _build
g++ -c -Wall -g ../func.cpp
g++ -c -Wall -g ../prog.cpp
g++ -g -o prog.exe prog.o func.o
cd ..