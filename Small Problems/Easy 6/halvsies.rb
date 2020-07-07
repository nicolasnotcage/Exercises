=begin
  Inputs:
    - A single array
  Outputs:
    - Two arrays that contain the first and second halves of the original array, respectively
  Explicit Requirements:
    - If array length is odd, the middle element should go to the first array
  Implicit Requirements:
    - Returns a nested array
  Algorithm:
    - Initiate new empty array
    - Slice through the original array
      a) begin by slicing backwards so that if the length is odd, array.length will leave the middle for the first array
      b) Send that sliced section to the new array
    - Send the remaining elements to the beginning of the new array (unshift)  
=end

def halvsies(array)
  halved = []
  if array.length.odd?
    halved << array.slice!(0, (array.length/2 + 1))
  else
    halved << array.slice!(0, array.length / 2)
  end
  halved << array

  halved
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
