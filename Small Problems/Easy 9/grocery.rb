=begin
  Inputs:
    - Nested array of fruits with their quantities
    - 
=end

def buy_fruit(array)
  final = []
  array.each do |arr|
    arr[1].times do
      final << arr[0]
    end
  end

  final
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
["apples", "apples", "apples", "orange", "bananas","bananas"]