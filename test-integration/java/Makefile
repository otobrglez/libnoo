.PHONY: clean build

build:
	javac NooTest.java
	javah -jni NooTest

	g++ \
		-arch x86_64 -Xarch_x86_64 \
		-stdlib=libstdc++ \
		-Wall -g \
		-I/System/Library/Frameworks/JavaVM.framework/Headers \
		-fpic \
		-lstdc++ \
		-c NooTest.cpp \
		-o NooTest.o \
		-l noo.so

	g++ -dynamiclib -o libnootest.jnilib NooTest.o noo.so

clean:
	rm -rf *.o *.class *.jnilib

run: build
	java NooTest
