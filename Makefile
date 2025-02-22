CC=clang
CFLAGS=-g -Wall -Wextra -pedantic -I./include
LDFLAGS=-g -L./build/src
LDLIBS=-ledit
RM=rm
BUILD_DIR=./build

.PHONY: test
test:
	$(MAKE) -C $@
	$(BUILD_DIR)/test/test_gc

coverage:
	$(MAKE) -C test coverage

.PHONY: clean
clean:
	$(MAKE) -C test clean

distclean: clean
	$(MAKE) -C test distclean

