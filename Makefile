CC	= gcc
CXX	= g++
STD	= -std=c++11
OPTS	= -Wall
DBG	= -O0 -g
INCL	= -I.
CFLAGS	= $(OPTS) $(DBG) $(INCL)
CXXFLAGS = $(STD) $(OPTS) $(DBG) $(INCL)

.c.o:
	$(CC) -c $(CFLAGS) $< -o $*.o

.cpp.o:
	$(CXX) -c $(CFLAGS) $< -o $*.o

ugui.o:	CFLAGS += -Wno-parentheses

OBJS	= gp.o vfd.o ugui.o

libugif.a: ugui.o
	ar cr libuguif.a ugui.o

clean:
	rm -f *.o core .errs.t

clobber: clean
	rm -f libuguif.a

# End
