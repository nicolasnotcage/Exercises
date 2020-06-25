=begin
Input:
  - Bill total
  - Tip percentage
Output:
  - Tip amount
  - Total cost
=end 

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
percent = gets.chomp.to_f

tip = (percent / 100) * bill
total = bill + tip

puts "The tip is $#{tip}."
puts "The total is $#{total}."