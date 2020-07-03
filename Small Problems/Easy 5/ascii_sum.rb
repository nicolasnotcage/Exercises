=begin
  Inputs:
    - String
  Outputs:
    - Int representing the sum of the ASCII values of the total chars in the string
  Exceptions:
    - If the passed string has no length (e.g. ''), then the total must return 0
      a) Throws an error if .ord is passed on '', so catch it beforehand
  Algorithm:
    - Check length of passed string
      a) If string.length == 0, then sum = 0 -> return sum
      b) If string.length > 0
        - Break string into array of chars
        - chars.each -> sum += char.ord
        - return sum
=end

def ascii_value(string)
  sum = 0

  if string.length == 0
    sum
  else
    string.each_char { |char| sum += char.ord}
    sum
  end
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0