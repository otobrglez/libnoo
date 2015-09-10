#!/usr/bin/env python

from os import getenv

print "Test Python"
print "Test with ctypes"

import ctypes

GoInt = ctypes.c_int64

class GoString(ctypes.Structure):
    _fields_ = [('p', ctypes.c_char_p),
                ('n', GoInt)]

    # Convenience functions to convert from a Python string
    @classmethod
    def from_param(cls, value):
        return cls(value, len(value))

    def __str__(self):
        return ctypes.string_at(self.p, self.n)

Noo = ctypes.CDLL('./libnoo.so')

Noo.Sum.argtypes = [GoInt, GoInt]
Noo.HelloWorld.argtypes = []
Noo.HelloWorld.restype = ctypes.c_char_p

print "Sum =", Noo.Sum(20, 32)
print "HelloWorld =", Noo.HelloWorld()




print "Done."
