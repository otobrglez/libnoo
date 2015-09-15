.PHONY: clean test-env test-c test-python test-ruby test-php test-java

noo: test-env
	go build -o noo noo.go

noo.so: test-env
	go build -ldflags="-shared" -buildmode=c-shared -o noo.so noo.go

test: noo
	./noo -sites twitter,facebook http://databox.com

test-integration: test-c test-python test-ruby

test-env:
	go version | grep 1.5

clean:
	rm -rf noo *.so *.a \
		./test-integration/c/test
	cd ./test-integration/java && make clean

build-c: noo.so
	gcc -Wall -O2 \
		-o test-integration/c/test \
		./test-integration/c/test.c \
		./noo.so

test-c: build-c
	./test-integration/c/test

test-python: noo.so
	python ./test-integration/python/test.py

test-ruby: noo.so
	ruby ./test-integration/ruby/test.rb

test-php: noo.so
	./test-integration/php/test.php

test-java: noo.so
	cd ./test-integration/java/ && make run

test-swift: noo.so
	cd ./test-integration/swift/ && xcrun swift test.swift
