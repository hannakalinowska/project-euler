#! /usr/local/bin/ruby

if __FILE__ == $0
  (1 .. 1000).each do |a|
    (a .. 1000).each do |b|
      c = 1000 - a - b
      if a**2 + b**2 == c**2
        puts "#{a} * #{b} *  #{c} = #{a * b * c}"
        exit
      end
    end
  end
end
