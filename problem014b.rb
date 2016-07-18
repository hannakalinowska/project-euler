#!/usr/bin/env ruby

require 'pry'

class Collatz
  def initialize(n, known_lengths = [])
    @n = n
    @known_lengths = known_lengths
    @known_lengths[1] = 1
  end

  def sequence_length
    if @known_lengths[@n].nil?
      next_item = next_item(@n)
      Collatz.new(next_item, @known_lengths).sequence_length + 1
    else
      @known_lengths[@n]
    end
  end

  def sequence
    current = @n
    result = [current]
    while current != 1
      current = next_item(current)
      result << current
    end
    result
  end

  private

  def next_item(current)
    if current.even?
      current / 2
    else
      3 * current + 1
    end
  end
end

class Result
  attr_accessor :n, :length

  def initialize(n, length)
    @n = n
    @length = length
  end
end

if __FILE__ == $0
  result = Result.new(0, 0)
  known_lengths = []

  1.upto(1_000_000) do |n|
    length = Collatz.new(n, known_lengths).sequence_length
    known_lengths[n] = length

    if length > result.length
      result = Result.new(n, length)
    end
  end

  puts result.n, result.length
end
