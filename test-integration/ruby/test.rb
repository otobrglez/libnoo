#!/usr/bin/env ruby

puts "Test: Ruby with Fiddle"

require 'fiddle'
libnoo = Fiddle.dlopen('noo.so')

sum = Fiddle::Function.new(libnoo['Sum'], [Fiddle::TYPE_INT, Fiddle::TYPE_INT], Fiddle::TYPE_INT)
hello_world = Fiddle::Function.new(libnoo['HelloWorld'], [], Fiddle::TYPE_VOIDP)

puts "Sum = %d" % sum.call(998, 1)
puts "HelloWorld = %s" % hello_world.call()

puts "Done."
