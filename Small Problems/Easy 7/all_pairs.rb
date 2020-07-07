=begin
  Input:
    - Two arrays of integers
  Output:
    - New array that contains the product of every pair of numbers that can be formed between the two initial arrays
  Explicit Requirements:
    - New array should be sorted by increasing value
  Explicit Knowledge:
    - Neither argument is an empty array
  Algorithm:
    - Borrowing from the method we wrote to multiply lists
    - Same logic applies, but instead of zip, we're going to use product
      a) product yields all possible combinations of the array
    - Set new array equal to product of the two given arrays
    - Use each_with_index to multiply each pair and shovel into a new array of products
    - Return new multipled array with .sort called on it
=end

def multiply_all_pairs(arr1, arr2)
  product = arr1.product(arr2)
  multiplied = []
  
  product.each_with_index do |array, index|
    multiplied << product[index][0] * product[index][1]
  end

  multiplied.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
