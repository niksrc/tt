CC=gcc
CFLAGS=-std=c99 -Wall

.PHONY: build
all: build

.PHONY: format
format: 
	clang-format -i *.c

.PHONY: build
build: 
	$(CC) *.c -o tt

.PHONY: install
clean:
	$(RM) tt

PREFIX = /usr/local

.PHONY: install
install: tt
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp $< $(DESTDIR)$(PREFIX)/bin/tt

.PHONY: uninstall
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/tt

