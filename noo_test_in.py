#!/usr/bin/env python

from ctypes import *

Noo = CDLL('./libnoo.so')

print dir(Noo)

print Noo.Sum(20, 32)
