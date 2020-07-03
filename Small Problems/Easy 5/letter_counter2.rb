def word_sizes(string)
  words = string.split

  length_counter = { }
  words.each do |word|
    word = word.delete('^A-Za-z')
    if length_counter.has_key?(word.length)
      length_counter[word.length] += 1
    else
      length_counter[word.length] = 1
    end
  end

  p length_counter
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}