#! /usr/bin/ruby

def divisors_for(number)
  divisors = []
  1.upto(number / 2) do |divisor|
    divisors << divisor if number % divisor == 0
  end
  divisors
end

def amicable_for(number)
  divisors = divisors_for(number)
  amicable = divisors.reduce(&:+)
  amicable_divisors = divisors_for(amicable)
  amicable_divisors.reduce(&:+) == number ? amicable : nil
end

sum = 0

2.upto(10000) do |number|
  amicable = amicable_for(number)
  sum = sum + number + amicable if amicable && amicable > number
end

puts sum
