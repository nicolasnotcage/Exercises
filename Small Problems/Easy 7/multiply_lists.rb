def multiply_list(arr1, arr2)
  zipped = arr1.zip(arr2)
  multiplied = []
  
  zipped.each_with_index do |array, index|
    multiplied << zipped[index][0] * zipped[index][1]
  end

  multiplied
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]