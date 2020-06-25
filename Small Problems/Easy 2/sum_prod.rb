puts "Please enter an integer greater than 0:"
choice = gets.chomp.to_i

puts "Enter \'s'\ to compute the sum, \'p'\ to compute the product:"
operation = gets.chomp.downcase

answer = 0
if operation[0] == 's'
  answer = (1..choice).sum
  puts "The sum of the integers between 1 and #{choice} is #{answer}."
elsif operation[0] == 'p'
  answer = (1..choice).inject(:*)
  puts "The product of the integers between 1 and #{choice} is #{answer}."
else
  puts "That isn't a valid option."
end