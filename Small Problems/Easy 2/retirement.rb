puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i

current_year = Time.now.year
retire_year = (retire_age - age) + current_year
puts "It's #{current_year}. You will retire in #{retire_year}."
puts "Only #{retire_age - age} more years of work to go!"