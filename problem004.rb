#! /usr/bin/ruby

max = 0

999.downto(100) do |a|
  999.downto(100) do |b|
    number = a * b
    max = number if number.to_s == number.to_s.reverse && number > max
  end
end

puts max
