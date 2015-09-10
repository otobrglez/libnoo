package main

import "C"

//export Sum
func Sum(a, b int) int {
	return a + b
}

//export AddDot
func AddDot(s *C.char) string {
	return C.GoString(s) + "."
}

func main() {}