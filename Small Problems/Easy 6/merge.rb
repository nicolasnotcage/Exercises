=begin
  Inputs:
    - Two arrays
  Outputs:
    - A single array combining the two passed arrays with no duplicates
  Explicit Requirements:
    - No duplicates should be present in the new array
  Algorithm:
    - Initiate new empty array
    - Iterate over the first array
      a) element << new_array unless new_array.include?(element)
    - Repeat the above with the second array
    - Return new array
=end

def merge(arr1, arr2)
  no_dups = []
  arr1.each do |item|
    no_dups << item unless no_dups.include?(item)
  end

  arr2.each do |item|
    no_dups << item unless no_dups.include?(item)
  end

  no_dups
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
