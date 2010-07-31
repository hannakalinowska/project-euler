#! /usr/bin/ruby

def step_for(n)
  if n.even?
    n/2
  else
    3*n + 1
  end
end

chain_length = 0
max_chain_length, max_number = 0, 0

2.upto(1_000_000) do |start_number|
  number = start_number
  chain_length = 0
  while number > 1 do
    number = step_for(number)
    chain_length += 1
  end
  if chain_length > max_chain_length
    max_chain_length, max_number = chain_length, start_number
  end
end

puts "#{max_number} (#{max_chain_length})"
