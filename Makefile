CC = gcc
CFLAGS = -g

.PHONY: compile

compile: 
	${CC} ${CFLAGS} -c mathutils.c  -o mathutils.o
	ar rcs libmathutils.a mathutils.o
	
