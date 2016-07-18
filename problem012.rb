#! /usr/bin/ruby
require 'mathn'

def divisor_count_for(number)
  count = 0
  (1 .. Math.sqrt(number).to_i).each do |i|
    count += 2 if number % i == 0
  end
  count
end

if __FILE__ == $0
  number_divisors = 500

  number = 1
  current_integer = 2
  while (count = divisor_count_for(number)) <= number_divisors do
    number += current_integer
    current_integer += 1
  end
  puts number
end
