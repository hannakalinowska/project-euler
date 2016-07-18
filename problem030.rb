#! /usr/bin/ruby

def powerful?(number, power)
  number == number.to_s.split('').map{|digit| digit.to_i ** power}.reduce(:+)
end

if __FILE__ == $0
  sum = 0
  11.upto(500000) do |number|
    sum += number if powerful?(number, 5)
  end
  puts sum
end
