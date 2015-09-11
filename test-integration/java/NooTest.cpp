#include <jni.h>
#include <iostream>
#include "NooTest.h"
#include "noo.h"

using namespace std;

JNIEXPORT jint JNICALL
Java_NooTest_sum(JNIEnv *env, jobject, jint a, jint b){
  return Sum(333, 333);
}

JNIEXPORT void JNICALL
Java_NooTest_hello_1world(JNIEnv *env, jobject obj){
  cout << HelloWorld() << "\n";
  return;
}

/*
JNIEXPORT jint JNICALL
Java_NooTest_sum(JNIEnv *env, jobject, jint a, jint b){
  jint result;
  result = a + b;
  return result;
}
*/
