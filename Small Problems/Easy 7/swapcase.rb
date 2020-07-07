=begin
  Inputs:
    - String
  Outputs: 
    - New string of original string case swapped
  Algorithm:
    - Build hash for lowercase to uppercase
    - Iterate (map) over chars array of string
      a) If hash[char] == nil && hash.values.include?(char)
        - char = hash.key?(char)
      b) elsif hash[char] != nil
        - char = hash[char]
    end
=end

LETTERS = {
  'a' => 'A', 'b' => 'B', 'c' => 'C', 'd' => 'D', 'e' => 'E',
  'f' => 'F', 'g' => 'G', 'h' => 'H', 'i' => 'I', 'j' => 'J',
  'k' => 'K', 'l' => 'L', 'm' => 'M', 'n' => 'N', 'o' => 'O',
  'p' => 'P', 'q' => 'Q', 'r' => 'R', 's' => 'S', 't' => 'T',
  'u' => 'U', 'v' => 'V', 'w' => 'W', 'x' => 'X', 'y' => 'Y', 'z' => 'Z'
}

def swapcase(string)
  swapped = string.chars.map do |char|
    if LETTERS[char] == nil && LETTERS.values.include?(char)
      char = LETTERS.key(char)
    elsif LETTERS[char] != nil
      char = LETTERS[char]
    else
      char
    end
  end

  swapped.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
