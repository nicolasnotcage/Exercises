
=begin
  Inputs: 
    - String
  Outputs:
    - All substrings of the given string
  Algorithm:
    - Going to reuse the method from the previous exercise
    - Initate new array to contain all substrings
    - Begin loop
        a) Shovel first_method(string) into new_array
        b) Delete first index of string
        c) pass new string into method
        d) repeat until string.length == 0
    - Return new_array.flatten

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

def substrings(string)
  all_subs = []
  loop do 
    all_subs << substrings_at_start(string)
    string.delete!(string[0])
    break if string.length == 0
  end

  all_subs.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'


]
