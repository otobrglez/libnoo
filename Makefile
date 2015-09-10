.PHONY: clean test

noo_test_in: libnoo.so
	gcc -Wall -O2 -o noo_test_in ./test/noo_test_in.c ./libnoo.so

libnoo.so:
	go build -buildmode=c-shared -o libnoo.so libnoo.go

noo_test_in.py:
	./noo_test_in.py

test: noo_test_in
	./noo_test_in
	python ./test/noo_test_in.py
	./test/noo_test_in.php

clean:
	rm -rf *.so *.a libnoo.h