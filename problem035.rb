#! /usr/bin/ruby
require 'lib/prime'

class Array
  def rotate!
    return self if self.empty?
    number = self.shift
    self.push(number)
  end
end

def circular_prime?(number)
  digits = number.to_s.split('')
  length = digits.length
  1.upto(length) do
    digits.rotate!
    return false unless digits.join('').to_i.prime?
  end
  true
end

if __FILE__ == $0
  count = 0
  1.upto(999_999) do |number|
    count += 1 if circular_prime?(number)
  end
  puts count
end
