#compiler
CC = gcc
#header dependency
HD = $(wildcard *.h)

all : hellomake

hellomake : hellomake.o hellofunc.o
	$(CC) -o hellomake $^

%.o : %.c $(HD)
	$(CC) -c -o $@ $<

clean :
	rm -f hellomake *.o