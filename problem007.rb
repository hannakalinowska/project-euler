#! /usr/local/bin/ruby

if __FILE__ == $0
  iterations = 10001
  prime_numbers = [2, 3, 5]
  number = 7

  while prime_numbers.length < iterations do
    prime = true
    prime_numbers.each do |prime_number|
      prime = true
      if number % prime_number == 0
        prime = false
        break
      end
    end
    prime_numbers << number if prime
    number += 2
  end
  puts prime_numbers.last
end
