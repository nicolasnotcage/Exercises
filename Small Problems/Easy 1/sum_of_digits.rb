def sum(int)
  sum = 0
  string = int.to_s.split('')

  string.each do |x|
    sum += x.to_i
  end

  sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45