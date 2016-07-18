#! /usr/bin/ruby

WORDS = {1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine',
11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen',
10 => 'ten', 20 => 'twenty', 30 => 'thirty', 40 => 'forty', 50 => 'fifty', 60 => 'sixty', 70 => 'seventy', 80 => 'eighty', 90 => 'ninety'}

def to_words(number)
  thousands = number / 1000
  hundreds = number % 1000 / 100
  tens_and_units = number % 1000 % 100

  result = ''
  result += "#{WORDS[thousands]} thousand " if thousands > 0
  result += "#{WORDS[hundreds]} hundred " if hundreds > 0
  result += "and " if hundreds > 0 && tens_and_units > 0
  if tens_and_units > 19 || tens_and_units < 11
    tens = tens_and_units / 10 * 10
    units = tens_and_units % 10
    result += "#{WORDS[tens]} " if tens > 0
    result += WORDS[units] if units > 0
  else
    result += WORDS[tens_and_units]
  end
  result.strip
end

if __FILE__ == $0
  huge_string = ''
  (1 .. 1000).each do |number|
    huge_string += to_words(number)
  end
  puts huge_string.gsub(' ', '').length
end
