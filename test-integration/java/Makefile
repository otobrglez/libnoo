.PHONY: clean

HelloWorld: HelloWorld.class
	java HelloWorld

HelloWorld.class: libhelloworld.jnilib
	javac HelloWorld.java

HelloWorld.h:
	javah -jni HelloWorld

HelloWorld.o: HelloWorld.h
	g++ -I/System/Library/Frameworks/JavaVM.framework/Headers \
		-I../ \
		-L../ \
		-c HelloWorld.cpp

libhelloworld.jnilib: HelloWorld.o
	g++ -dynamiclib -L../../ -o libhelloworld.jnilib HelloWorld.o

clean:
	rm -rf *.h *.o *.class
