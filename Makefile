PROGRAM := browser
OBJECTS := browser.o

GTK_VERSION := 2.0
WEBKITGTK := webkitgtk-3.0
ifeq (2.0,$(GTK_VERSION))
WEBKITGTK := webkit-1.0
endif

DEPS := gtk+-$(GTK_VERSION) $(WEBKITGTK)

CC      := gcc
CFLAGS  := $(shell pkg-config --cflags $(DEPS))
CFLAGS  += -Wall -g -O2

LDFLAGS := $(shell pkg-config --libs $(DEPS))

all: $(PROGRAM)

$(PROGRAM): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $(PROGRAM)

clean:
	rm -rf $(PROGRAM) $(OBJECTS)
	
%.o : %.c
	$(CC) $(CFLAGS) -c $<
