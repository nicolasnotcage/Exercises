DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def int_to_str(int)
  result = ''
  loop do
    int, remainder = int.divmod(10)
    result.prepend(DIGITS[remainder])
    break if int == 0
  end
  result
end

def signed_int_to_str(signed_int)
  abs_int = signed_int.abs
  str_int = int_to_str(abs_int)
  if signed_int.abs == signed_int && signed_int != 0
    str_int.prepend('+')
  elsif signed_int.abs != signed_int && signed_int != 0
    str_int.prepend('-')
  end
  str_int
end

puts signed_int_to_str(4321) == '+4321'
puts signed_int_to_str(-123) == '-123'
puts signed_int_to_str(0) == '0'