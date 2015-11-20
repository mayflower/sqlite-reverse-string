CFLAGS ?= -O2
PREFIX ?= /usr
CC ?= gcc
LDFLAGS ?=
INSTALL ?= install

cflags_effective = $(CFLAGS) -fPIC
ldflags_effective = $(LDFLAGS) -shared
source = sqlite_reverse_string.c
lib = libsqlite_reverse_string.so

objects = $(source:.c=.o)
garbage = $(lib) $(objects)

all: lib

lib: $(lib)

$(lib): $(objects)
	$(CC) $(ldflags_effective) -o $@ $^

$(objects): %.o : %.c
	$(CC) $(cflags_effective) -c -o $@ $^

install: lib
	$(INSTALL) -m 0755 $(lib) $(PREFIX)/lib

clean:
	-rm -f $(garbage)
