#! /usr/bin/ruby

def factorial(n)
  (1 .. n).reduce(:*)
end

if __FILE__ == $0
  puts factorial(40)/(factorial(20) * factorial(20))
end
