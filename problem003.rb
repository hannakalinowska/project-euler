#! /usr/bin/ruby

number = 600851475143
root = (number ** 0.5).to_i
max_lpf = 0

def largest_prime_factor(number)
  root = (number ** 0.5).to_i
  root.downto(2) do |i|
    if i.odd? || i == 2
      if number % i == 0
        return largest_prime_factor(number/i)
      end
    end
  end
  return number
end

if __FILE__ == $0
  root.downto(2) do |i|
    if i.odd? || i == 2
      if number % i == 0
        lpf = largest_prime_factor(number/i)
        max_lpf = lpf if max_lpf < lpf
      end
    end
  end
  puts max_lpf
end
