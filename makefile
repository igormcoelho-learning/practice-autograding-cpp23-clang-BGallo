all: clean test

appTests: deps
	mkdir -p build
	cd build && cmake .. -GNinja

test: appTests
	./build/app_tests

deps:

clean:
	rm -drf build/
