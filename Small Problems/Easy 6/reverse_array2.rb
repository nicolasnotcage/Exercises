=begin
  Inputs:
    - Array
  Outputs:
    - Array of the original array reversed
  Explicit Requirements:
    - Original array object must not be mutated
    - Must return a new array
  Algorithm:
    - Make a shallow copy of the provided array
    - Use same algorithm from reverse_array.rb
=end

def reverse(array)
  new_arr = array.dup
  left_index = 0
  right_index = -1

  while left_index < new_arr.size / 2
    new_arr[left_index], new_arr[right_index] = new_arr[right_index], new_arr[left_index]
    left_index += 1
    right_index -= 1
  end

  new_arr
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true