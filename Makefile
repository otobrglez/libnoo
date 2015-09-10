.PHONY: run-main in-python

noo_test_in: libnoo.so
	gcc -Wall -o noo_test_in noo_test_in.c ./libnoo.so

libnoo.so:
	go build -buildmode=c-shared -o libnoo.so libnoo.go

clean:
	rm -rf *.so *.a libnoo.h