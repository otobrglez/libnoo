package main

// #include <stdio.h>
// #include <stdlib.h>
import "C"
import "unsafe"

//export Sum
func Sum(a, b int) int {
	return a + b
}

//export HelloWorld
func HelloWorld() *C.char {

	/* Experimenting with pointers and 'free' */
	s := "Oto was here"
	cs := C.CString(s)
	C.free(unsafe.Pointer(cs))

	/* Returning * C.char */
	return C.CString("Hello from Go!")
}

func main() {}
