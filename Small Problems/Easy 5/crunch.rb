def crunch(string)
  dedoubled = []
  string.chars.each_with_index do |char, index|
    if index == 0
      dedoubled << char
      next
    end

    dedoubled << char if string[index] != string[index -1]
  end

  dedoubled.join
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
