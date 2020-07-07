=begin 
  Inputs:
    - Array of integers
  Outputs
    - Multiplicative average of the array elements rounded to three decimal places
  Algorithm:
    - Set empty product variable equal to 1
    - Iterate over array
      a) Multiply each element by product and set product equal to that value
    - Set average equal to product.to_f / array.length
      - Round solution to three decimal places
    - Return string that shows solution
=end

def show_multiplicative_average(array)
  product = 1
  array.each do |num|
    product *= num
  end
  
  average = (product.to_f / array.length).round(3)
  puts "The result is #{format("%.3f", average)}"
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])


