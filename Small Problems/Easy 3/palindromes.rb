def palindrome?(text)
  check1 = text.chars
  check2 = check1.reverse
  return true if check1 == check2
  false
end

def real_palindrome?(text)
  text = text.gsub(/[^0-9A-Za-z]/, '').downcase
  palindrome?(text)
end

def palindromic_number?(int)
  palindrome?(int.to_s)
end

# first palindrome
puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

# second palindrome
puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false

# number palindromes
puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true