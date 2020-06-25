def reverse_words(string)
  string_array = string.split
  string_array.each do |x|
    x.reverse! if x.length >= 5
  end
  string_array.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS