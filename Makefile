.PHONY: clean test-env test-integration

noo.so: test-env
	go build -buildmode=c-shared -o noo.so noo.go

test-env:
	go version | grep 1.5

clean:
	rm -rf *.so *.a


# .PHONY: clean test test-env
#
# noo_test_in: libnoo.so
# 	gcc -Wall -O2 -o noo_test_in ./test/noo_test_in.c ./libnoo.so
#
# libnoo.so: test-env
# 	go build -buildmode=c-shared -o libnoo.so libnoo.go
#
# noo_test_in.py:
# 	./noo_test_in.py
#
# test-env:
# 	go version | grep 1.5
#
# test: test-c test-python test-ruby test-java
#
# test-c: noo_test_in
# 	./noo_test_in
#
# test-python:
# 	python ./test/noo_test_in.py
#
# test-ruby:
# 	ruby ./test/noo_test_in.rb
#
# test-java:
# 	cd ./test/java && make clean HelloWorld
#
# clean:
# 	rm -rf *.so *.a libnoo.h
#
