#! /usr/bin/ruby

content = nil
File.open('names.txt', 'r') do |f|
  content = f.read
end

def name_score(name)
  name.split('').map{|letter| letter[0] - 64}.reduce(:+)
end

if __FILE__ == $0
  names = content.split(',').map{|name| name.gsub('"', '')}.sort

  sum = 0
  names.each_with_index do |name, index|
    sum += name_score(name) * (index + 1)
  end

  puts sum
end
