#! /usr/bin/ruby

if __FILE__ == $0
  fib = [1, 1]

  while fib.last.to_s.length < 1000
    fib << fib[-1] + fib[-2]
  end

  puts fib.length
end
