CC=gcc
CFLAGS=-I. -lncurses
DEPS=ncurses_util/drawing.h util/box_drawing.h
OBJ=ncurses_util/drawing.o main.o

%.o: %.c $(DEPS)
	rm $@ || true
	$(CC) -c -o $@ $< $(CFLAGS)

main: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

.PHONY: clean

clean:
	rm **/*.o