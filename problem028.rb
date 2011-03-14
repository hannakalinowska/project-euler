#! /usr/bin/ruby

def corner_sum(length)
  return 1 if length == 1
  4 * length ** 2 - 6 * (length - 1)
end

sum = 0
(1 .. 1001).select(&:odd?).reduce {|sum, length| sum += corner_sum(length)}
puts sum
