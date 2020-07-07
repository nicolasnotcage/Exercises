=begin
  Inputs:
    - Array
    - Search value
  Outputs:
    - True or false if the search value is found in the original array
  Explicit requirements:
    - Don't use .include?
  Algorithm:
    - Shovel the search value into the array
    - Return array.length == array.uniq.length
=end

def include?(array, search)
  new_arr = array.dup
  new_arr << search
  new_arr.length != new_arr.uniq.length
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false