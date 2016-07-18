#! /usr/bin/ruby

if __FILE__ == $0
  puts (0 .. 9).to_a.permutation(10).sort[999_999].join
end
