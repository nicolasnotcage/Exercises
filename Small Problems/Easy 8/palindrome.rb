=begin
  Inputs:
    - String
  Outputs:
    - An array of all substrings of the given string that are palindromic
  Explicit Requirements:
    - Return value should be arranged in the same sequence as the substrings appear in the string
    - Duplicate palindromes should be included multiple times
    - Consider all characters
    - Single characters are not palindromes
    - Case sensitive (e.g. Abba is not a palindrome)
  Algorithm:
    - Set new array == calling substrings on the given string
    - Set new array for all palindromes
    - Iterate over new array of all substrings
      a) if string == string.reverse
        - Shovel string into palindrome array unless string.length == 1
    - Return palindrome array
    
=end

def substrings_at_start(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(substrings_at_start(this_substring))
  end
  results
end

def palindromes(string)
  substrings = substrings(string)
  palindromes = []

  substrings.each do |string|
    palindromes << string if string == string.reverse && string.length > 1
  end

  palindromes
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
