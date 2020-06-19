def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end


first = nil
loop do
  puts "Please enter a positive or a negative integer"
  first = gets.chomp
  if first.to_i == 0
    puts "Please enter a number that isn't 0"
    next
  end
  break if valid_number?(first)
  puts "That's not a valid number. Please try again."
end

second = nil
loop do
  puts "Please enter a positive or a negative integer"
  second = gets.chomp
  if second.to_i == 0
    puts "Please enter a number that isn't 0"
    next
  elsif first.to_i > 0 && second.to_i > 0
    puts "Please enter one positive and one negative value"
    next
  end
  break if valid_number?(first)
  puts "That's not a valid number. Please try again."
end

result = first.to_i + second.to_i
puts "#{first} + #{second} = #{result}"