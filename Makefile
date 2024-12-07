CC = gcc
CFLAGS = -g

.PHONY: compile

compile: 
	${CC} ${CFLAGS} -c mathutils.c  -o mathutils.o
	ar rcs libmathutils.a mathutils.o
	${CC} -fPIC -c mathutils.c -o mathutils.o  # Compile position-independent code
	${CC} -shared -o libmathutils.so mathutils.o  # Create shared library


