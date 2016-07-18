#! /usr/bin/ruby

if __FILE__ == $0
  number = 2**1000
  puts number.to_s.split('').reduce(0) {|sum, digit| sum + digit.to_i}
end
