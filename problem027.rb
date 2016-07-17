#!/usr/bin/env ruby
require_relative 'lib/prime'

class ConsecutivePrimes
  def initialize(a, b)
    @a = a
    @b = b
  end

  def length
    n = 0

    loop do
      number = n ** 2 + @a * n + @b
      if number.prime?
        n += 1
      else
        break
      end
    end

    n
  end
end

class Result
  attr_accessor :a, :b, :length
  def initialize(a, b, length)
    @a = a
    @b = b
    @length = length
  end
end

result = Result.new(nil, nil, 0)

(-1000 .. 1000).each do |a|
  (-1000 .. 1000).each do |b|
    length = ConsecutivePrimes.new(a, b).length
    if length > result.length
      result = Result.new(a, b, length)
    end
  end
end

puts result.a, result.b, result.length
puts result.a * result.b
