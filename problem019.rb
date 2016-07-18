#! /usr/bin/ruby
require 'date'

if __FILE__ == $0
  count = 0

  0.upto(99) do |year|
    1.upto(12) do |month|
      if Date.parse("#{year + 1901}-#{"%02d" % month}-01").cwday == 7
        count += 1
      end
    end
  end

  puts count
end
