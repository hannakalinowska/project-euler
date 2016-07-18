#! /usr/bin/ruby

def palindrome?(number)
  number.to_s == number.to_s.reverse
end

if __FILE__ == $0
  sum = 0
  (1 .. 1_000_000).each do |number|
    sum += number if palindrome?(number) && palindrome?(number.to_s(2).to_i)
  end
  puts sum
end
