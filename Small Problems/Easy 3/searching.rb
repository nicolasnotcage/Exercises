numbers = []

puts "Enter the first number:"
numbers << gets.chomp.to_i
puts "Enter the second number:"
numbers << gets.chomp.to_i
puts "Enter the third number:"
numbers << gets.chomp.to_i
puts "Enter the fourth number:"
numbers << gets.chomp.to_i
puts "Enter the fifth number:"
numbers << gets.chomp.to_i
puts "Enter the last number:"
final_num = gets.chomp.to_i

if numbers.include?(final_num)
  puts "The number #{final_num} appears in #{numbers}."
else
  puts "The number #{final_num} does not appear in #{numbers}."
end