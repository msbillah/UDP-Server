TOP_DIR=..
LIB_DIR=$(TOP_DIR)
GCC = gcc

CFLAGS = -g -W -Wall -I.

LIBS = 
SRCS = udpserver.c
INCDIR = includes
OBJS = udpserver.o

all: $(OBJS)
	$(GCC) $(CFLAGS) $(LIBS) $(OBJS) -o udpserver.out

udpserver.o: udpserver.c
	$(GCC) $(CFLAGS) $(INCLUDE) -c udpserver.c

clean:
	rm -f *.o *~ udpserver.out

