def cleanup(string)
  accepted = ('a'..'z').to_a
  chars = string.chars
  erased = chars.map do |char|
    char = ' ' unless accepted.include?(char)
    char
  end

  cleaned = []
  erased.each_with_index do |char, index|
    if index == 0
      cleaned << char
      next
    end  
    cleaned << char unless erased[index - 1] == ' ' && char == ' ' 
  end
  
  cleaned.join
end
   
puts cleanup("---what's my +*& line?") == ' what s my line '