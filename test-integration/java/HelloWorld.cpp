#include <jni.h>
#include <iostream>
#include <stdio.h>
#include "HelloWorld.h"
#include "../libnoo.h"
using namespace std;

JNIEXPORT void JNICALL
Java_HelloWorld_print(JNIEnv *, jobject){
    cout << "Oh JNI, how cumbersome you are!\n";
    return;
}

JNIEXPORT jint JNICALL
Java_HelloWorld_sum(JNIEnv *, jobject thisObj, jint a, jint b){
  jint result;
  result = a + b;

  printf("Sum = %lld\n", Sum(a, b));

  return result;
}
