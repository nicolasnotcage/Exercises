DIGITS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, 
  '6' => 6, '7' => 7, '8' => 8, '9' => 9}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }
  
  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def string_to_signed_integer(str)
  if str[0] == '+'
    no_plus = str.delete('+')
    string_to_integer(no_plus)
  elsif str[0] == '-'
    no_min = str.delete('-')
    -string_to_integer(no_min)
  else
    string_to_integer(str)
  end
end

puts string_to_signed_integer('12345')
puts string_to_signed_integer('+12345')
puts string_to_signed_integer('-12345')  