def swap(string)
  swapped = string.split.map do |word|
    swapped = word.gsub(word[0], word[-1])
    swapped[-1] = word[0]
    swapped
  end

  swapped.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
