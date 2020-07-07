#this solution modifies the original array, so it's not the ideal solution

VOWELS = %w(a e i o u A E I O U)

def remove_vowels(string)
  string.each do |word|
    word.chars.each do |char|
      word.delete!(char) if VOWELS.include?(char)
    end
  end
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
