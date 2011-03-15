#! /usr/bin/ruby

puts (0 .. 9).to_a.permutation(10).sort[999_999].join
