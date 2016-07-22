#!/usr/bin/env ruby

if __FILE__ == $0
  s = ''
  i = 1
  while s.length < 10**6
    s << i.to_s
    i += 1
  end

  puts s[1 - 1].to_i * s[10 - 1].to_i * s[10**2 - 1].to_i * s[10**3 - 1].to_i * s[10**4 - 1].to_i * s[10**5 - 1].to_i * s[10**6 - 1].to_i
end
