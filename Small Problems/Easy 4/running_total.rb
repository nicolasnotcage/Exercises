=begin
  Inputs:
    - Array of ints
  Outputs:
    - Array of ints
      - First index remains the same
      - Progressive indexes are the sum of the previous indexes
  Algorithm:
    - New blank array
    - New blank int variable
    - Iterate over each array element
      - Add element to new sum variable
      - Store the new sum in the new array 
=end

def running_total(numbers)
  new_array = []
  sum = 0

  numbers.each do |x|
    sum += x
    new_array << sum
  end
  new_array
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []