=begin
  Inputs:
    - String
  Outputs:
    - Hash with the total number of lowercase, uppercase, and neither (ints, symbols, spaces, etc.) characters
  Algorithm:
    - Create constants for both lower and upper
    - Initiate hash with the above three keys equal to 0
    - Iterate over chars array of string
      a) If lower.include(chars) -> lowercase += 1
      b) upper.include -> upper += 1
      c) else neither += 1
    - Return hash
=end

LOWERCASE = ('a'..'z').to_a
UPPERCASE = ('A'..'Z').to_a

def letter_case_count(string)
  count = {
    lowercase: 0,
    uppercase: 0,
    neither: 0
  }

  string.chars.each do |char|
    if LOWERCASE.include?(char)
      count[:lowercase] += 1
    elsif UPPERCASE.include?(char)
      count[:uppercase] += 1
    else
      count[:neither] += 1
    end
  end

  count
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }