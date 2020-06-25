=begin
Inputs:
  - Array of positive integers

Outputs:
  - Average of the array of integers as an integer

Algorithm:
  - Set an empty variable to hold the sum
  - Iterate through each value in the array
    - Add each value to the sum variable
  - Create new variable 'average'
  - Divide 'sum' by array.length and store in 'average'
  - Return 'average'

=end

def average(ints)
  sum = ints.reduce(:+)
  average = sum / ints.count
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40