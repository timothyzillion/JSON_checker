OBJS=JSON_checker.o main.o

all: JSON_checker

clean:
	rm -f ${OBJS}

JSON_checker: ${OBJS}
	gcc -g -o JSON_checker ${OBJS}

%.o:%.c
	gcc -g -c $(CFLAGS) $< -o $@

