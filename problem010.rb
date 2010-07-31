#! /usr/local/bin/ruby

require 'mathn'

prime_generator = Prime.new
sum = 0

while (prime = prime_generator.next) < 2_000_000 do
  sum += prime
end
puts sum
