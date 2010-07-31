#! /usr/bin/ruby

class Integer
  def prime?
    return false if self == 1

    square_root = (self ** 0.5).to_i
    2.upto(square_root) do |i|
      if i.odd? || i == 2
        if self % i == 0
          return false
        end
      end
    end
    return true
  end
end

class Array
  def set_delete(array)
    array.each do |element|
      index = self.index(element)
      self.delete_at(index) unless index.nil?
    end
    self
  end
end

def prime_factors_for(number)
  prime_factors = []
  prime_factors << number if number.prime?

  2.upto(number - 1) do |i|
    if number % i == 0 && i.prime?
      prime_factors << i
      prime_factors << prime_factors_for(number / i)
      break
    end
  end

  prime_factors.flatten.sort
end

range = 1 .. 20

prime_factors = []

range.each do |n|
  prime_factors << prime_factors_for(n).set_delete(prime_factors)
  prime_factors.flatten!
end
puts prime_factors.flatten.reduce(1, :*)
