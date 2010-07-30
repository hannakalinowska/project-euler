#! /usr/bin/ruby

@step_1 = 1
@step_2 = 2

def fib(i)
  return i if i < 3
  prev_step = @step_1
  @step_1 = @step_2
  @step_2 = prev_step + @step_2
end

sum = 0
fib = 0
1.upto(4_000) do |i|
  fib = fib(i)
  sum += fib if fib.even? && fib < 4_000_000
  break if fib >= 4_000_000
end
puts sum
