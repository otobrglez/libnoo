# noo

[noo] is high-performance concurrent library for social media metrics collection.

[![Build Status](https://travis-ci.org/otobrglez/noo.svg?branch=master)](https://travis-ci.org/otobrglez/noo)

## Usage

[noo] is shared library writen in [Go] that can be used in `any` programming language.
This repository comes with few examples for [C](test-integration/c/test.c), [Python](test-integration/python/test.py), [Ruby](test-integration/ruby/test.rb) and [Java](test-integration/java/NooTest.java).

## Development

    # 1. Install Go >= 1.5

    # 2. To run Python examples
    mkvirtualenv --no-site-packages noo && \
      pip install --upgrade -r requirements.txt

    # 3. Having FFI is a nice idea
    sudo apt-get install libffi-dev # On Ubuntu
    brew instal libffi              # On OSX with Homebrew

    # Building 'noo.so'
    make

    # Running all 'integration tests'
    make clean test

## Resources

- https://github.com/jbuberel/buildmodeshared
- https://github.com/jbuberel/buildmodeshared/tree/master/gofrompython
- https://github.com/jbuberel/buildmodeshared/tree/master/gofromgo
- https://github.com/akrennmair/go-stfl
- http://blog.golang.org/c-go-cgo
- http://www.thegeekstuff.com/2013/01/mix-c-and-cpp/
- http://stuf.ro/calling-c-code-from-java-using-jni
- https://www3.ntu.edu.sg/home/ehchua/programming/java/JavaNativeInterface.html
- https://isocpp.org/wiki/faq/mixing-c-and-cpp

## Author

- [Oto Brglez](http://github.com/otobrglez)

[noo]:http://github.com/otobrglez/noo
[Go]:https://golang.org/
