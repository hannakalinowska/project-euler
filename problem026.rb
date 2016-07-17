#! /usr/bin/ruby
require 'prime'
require 'bigdecimal'

@previous_length = 1
longest_recurrence = 0
max_d = 0

def recurring?(string, substring)
  string.match(/^(.*?)((?:#{substring}){2,})(.*?)$/) && $3 == substring[0, $3.length]
end

def find_recurrence(string)
  substring = ''
  0.upto(string.length - 2) do |start|
    search_start = [start + 1, @previous_length].max
    search_start.upto(string.length - 1) do |stop|
      puts "Searching: #{search_start} to #{stop}"
      substring = string[search_start .. stop]
      if recurring?(string, substring)
        return substring
      end
    end
  end
  return nil
end

def decimal_part_from(number)
  string = number.to_s.gsub(/E.+$/, '').gsub(/^0./, '')
  string = string[0 .. -2] # discard last character which is possibly rounding and breaks everything
end

def recurrence(denominator, precision)
  if denominator.prime? && ![2, 5].include?(denominator)
    decimal = BigDecimal('1.0').div(denominator, precision)
    string = decimal_part_from(decimal)
    puts "#{denominator}: #{decimal}"
    recurrence = find_recurrence(string)
    if recurrence
      puts "recurrence: #{recurrence}"
      puts
      return recurrence
    else
      @previous_length = precision
      return recurrence(denominator, precision * 2)
    end
  else
    false
  end
end


#2.upto(1000) do |d|
  d = 7
  recurrence = recurrence(d, 4)
  if recurrence && recurrence.length > longest_recurrence
    longest_recurrence = recurrence.length
    max_d = d
  end
#end

puts longest_recurrence
puts max_d
