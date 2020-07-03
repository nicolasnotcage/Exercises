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

puts int_to_str(12345)