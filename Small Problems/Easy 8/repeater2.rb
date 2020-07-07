VOWELS = %w(A E I O U a e i o u)

def double_consonants(string)
  result = ''
  string.each_char do |char|
    if char =~ /[a-z]/i && VOWELS.include?(char) == false
      result << char << char
    else
      result << char
    end
  end
    
  result
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
