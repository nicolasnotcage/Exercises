=begin
  Inputs:
    - Integers that represent the end of range (1..int)
  Outputs:
    - The sum of an array of even multiples for every number within that range for the numbers 3 and 5
  Algorithm:
    - Divide each number within the range by 3 and then 5
      - Store each evenly divisible number in a new array
      - Sum the array with ".inject(:sum)"
=end

def multisum(int)
  divisible = []
  (1..int).each do |x|
    if x % 3 == 0 || x % 5 == 0
      divisible << x
    end
  end
  divisible.inject(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168