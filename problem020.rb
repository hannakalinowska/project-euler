#! /usr/bin/ruby

def factorial(number)
  number == 0 ? 1 : number * factorial(number - 1)
end

puts factorial(100).to_s.split('').map(&:to_i).reduce(:+)
