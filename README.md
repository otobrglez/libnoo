# noo

[noo] is high-performance concurrent library for social media metrics collection.

[![Build Status](https://travis-ci.org/otobrglez/noo.svg?branch=master)](https://travis-ci.org/otobrglez/noo)

## Usage

[noo] is shared library writen in [Go] that can be used in `any` programming language.
This repository comes with few examples for [C](test-integration/c/test.c), [Python](test-integration/python/test.py), [Ruby](test-integration/ruby/test.rb) and [Java](test-integration/java/NooTest.java).

## Development

    mkvirtualenv --no-site-packages noo

    sudo apt-get install libffi-dev # On Ubuntu
    brew instal libffi              # On OSX with Homebrew

    make clean noo.so

## Resources

- https://github.com/jbuberel/buildmodeshared
- https://github.com/jbuberel/buildmodeshared/tree/master/gofrompython
- https://github.com/jbuberel/buildmodeshared/tree/master/gofromgo
- https://github.com/akrennmair/go-stfl
- http://blog.golang.org/c-go-cgo

## Author

- [Oto Brglez](http://github.com/otobrglez)

[noo]:http://github.com/otobrglez/noo
[Go]:https://golang.org/
