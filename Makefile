CC = gcc
CXX = g++

INCLUDES = 

CFLAGS = -g -Wall $(INCLUDES)
CXXFLAGS = -g -Wall $(INCLUDES)

LDFLAGS = -g

LDLIBS = 

main: main.o
	CXX main.o $(CXXFLAGS) -o main
main.o: main.c
	CXX -c main.c
.PHONY: clean
clean:
	rm -f *.o a.out core main

.PHONY: all
all: clean main

