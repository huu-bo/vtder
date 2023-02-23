CPPFLAGS    = ''
LINKERFLAGS = ''
objects     = main.o

OBJECTS     = $(addprefix build/,$(objects))

make: $(OBJECTS) | build
	g++ -o vtder $(OBJECTS)

build/main.o: src/main.cpp build
	g++ -o build/main.o -c src/main.cpp

build:
	mkdir -p build
