#include "libnoo.h"
#include <stdio.h>

int main(int argc, char const *argv[])
{
    printf("Test: C\n");

    const long a = 2;
    const long b = 40;

    printf("Sum = %lld\n", Sum(a, b));

    printf("Hello World = %s\n", HelloWorld());
    // printf("AddDot = %s\n", AddDots("Test"));

    printf("Done.\n");
    return 0;
}