#! /usr/bin/ruby

if __FILE__ == $0
  values = []
  (2 .. 100).each do |a|
    (2 .. 100).each do |b|
      values << a ** b
    end
  end

  puts values.uniq.size
end
