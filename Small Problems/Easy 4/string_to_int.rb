DIGITS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, 
          '6' => 6, '7' => 7, '8' => 8, '9' => 9}
def string_to_int(number)
  digits = number.chars.map { |char| DIGITS[char]}
  
  value = 0
  digits.each { |num| value = value * 10 + num}
  value
end

puts string_to_int('12345')