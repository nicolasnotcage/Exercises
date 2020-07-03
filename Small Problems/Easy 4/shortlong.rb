=begin
  Inputs:
    - Two strings of varying length
  
  Outputs:
    - A concatenated string in the order of short-long-short
  
  Algorithm:
    - Pass two strings
    - Add them to a new array
    - Sort them from shortest to longest
    - Take the zero index of the array and add a copy of it to the end of the array
    - Join the array into a single string
    - Return the joined array

=end

def short_long_short(first, second)
  strings = []
  if first.length > second.length
    strings = [second, first]
  else
    strings = [first, second]
  end
  strings << strings[0]
  strings.join('')
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"
