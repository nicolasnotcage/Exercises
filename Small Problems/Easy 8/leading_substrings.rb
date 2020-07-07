=begin
  Inputs:
    - String
  Outputs:
    - Array of all substrings of original string; ordered from shortest to longest
  Algorithm:
    - Create new array for nested substring storage
    - Iterate over chars array of original string with index
      a) Shovel chars[0, chars[index]] into substring array
    - Iterate over substring array (map!)
      a) value.join
    - Return substring array
=end

def substrings_at_start(string)
  substrings = []
  chars = string.chars
  
  chars.each_with_index do |value, index|
    substrings << chars[0, index + 1]
  end

  substrings.map! do |array|
    array.join
  end

  substrings
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
