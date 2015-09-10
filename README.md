# noo

[noo] is high-performance concurrent library for social media metrics collection.

## Usage

[noo] is shared library writen in [Go] that can be used in `any` programming language.
This repository comes with few examples for [Python](test/python/test.py) and [Ruby](test/ruby/test.rb).

## Development

    mkvirtualenv --no-site-packages noo

    sudo apt-get install libffi-dev # On Ubuntu
    brew instal libffi              # On OSX with Homebrew

    make clean test

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
