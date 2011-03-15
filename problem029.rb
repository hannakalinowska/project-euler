#! /usr/bin/ruby

values = []
(2 .. 100).each do |a|
  (2 .. 100).each do |b|
    values << a ** b
  end
end

puts values.uniq.size
