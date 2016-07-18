#! /usr/bin/ruby

def factorial(number)
  number == 0 ? 1 : number * factorial(number - 1)
end

if __FILE__ == $0
  puts factorial(100).to_s.split('').map(&:to_i).reduce(:+)
end
