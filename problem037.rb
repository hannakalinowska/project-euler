#!/usr/bin/env ruby
require 'prime'

def left_to_right_primes(number)
  (1 .. number.length - 1)
    .map { |i| number[i .. -1] }
    .reject { |n| n.to_i.prime? }
    .empty?
end

def right_to_left_primes(number)
  (0 .. number.length - 2)
    .map { |i| number[0 .. i] }
    .reject { |n| n.to_i.prime? }
    .empty?
end

if __FILE__ == $0
  MAX_TRUNCATABLE_PRIMES = 11

  prime_count = 0
  truncatable_primes = []
  number = 11

  while prime_count < MAX_TRUNCATABLE_PRIMES
    if number.prime? && left_to_right_primes(number.to_s) && right_to_left_primes(number.to_s)
      prime_count += 1
      truncatable_primes << number
    end
    number += 2
  end

  puts "Numbers found: #{truncatable_primes}"
  puts "Sum: #{truncatable_primes.reduce(:+)}"
end
