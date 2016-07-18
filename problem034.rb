#! /usr/bin/ruby
FACTORIALS = {'0' => 1, '1' => 1, '2' => 2, '3' => 6, '4' => 24, '5' => 120, '6' => 720, '7' => 5040, '8' => 40320, '9' => 362880}

def factorial(digit)
  FACTORIALS[digit]
end

def factorial_sum(number)
  number.to_s.chars.map {|digit| factorial(digit)}.reduce(:+)
end

if __FILE__ == $0
  sum = 0
  10.upto(9_999_999) do |number|
    if number == factorial_sum(number)
      sum += number
    end
  end

  puts sum
end
