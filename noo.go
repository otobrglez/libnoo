package main

// #include <stdio.h>
// #include <stdlib.h>
import "C"
import "unsafe"
import "fmt"
// import "flag"
import "runtime"

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

func main() {
  // wordPtr := flag.String("sites", "social", "a string")
  // flag.Parse()
  // fmt.Print("Sites ", *wordPtr, "\n")
  // fmt.Println("tail:", flag.Args()[0], "\n")

	fmt.Printf("Hello %s/%s\n", runtime.GOOS, runtime.GOARCH)
}
