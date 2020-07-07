=begin
  Inputs: 
    - String
  Outputs:
    - New string with the first character of every word capitalized
  Algorithm:
    - Set new array equal to original.split.map {|word| word.capitalize}
    - Return new_array.join(' ')
=end

def word_cap(string)
  capped = string.split.map { |word| word.capitalize}
  capped.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'