=begin
  Inputs:
    - User inputs dimensions of the room (length and width)
  Outputs:
    - The square meters/footage of the given dimensions
  Algorithm:
    - Gets user input
      - Stores input into length/width variables as floats
    - Calculates square meters
    - Converts to square footage
    - Puts out the solution
  
=end

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

square_meters = (length * width).round(2)
square_footage = (square_meters * 10.7639).round(2)

puts "The area of the room  is #{square_meters} square meters (#{square_footage} square feet)."