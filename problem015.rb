#! /usr/bin/ruby

def factorial(n)
  (1 .. n).reduce(:*)
end

puts factorial(40)/(factorial(20) * factorial(20))
