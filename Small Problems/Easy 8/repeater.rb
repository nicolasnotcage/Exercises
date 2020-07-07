=begin
  Inputs:
    - String
  Outputs:
    - New string where every character in the original string is doubled
  Algorithm:
    - Create chars array from string
    - Iterate over chars array with index
      a) Insert char at chars[index]
    - Return string
=end

def repeater(string)
  chars = string.chars
  second = chars.dup

  chars.zip(second).flatten.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
