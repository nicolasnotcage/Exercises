def stringy(int, reverse=1)
  numbers = []

  if reverse == 1
    int.times do |x|
      number = x.even? ? 1 : 0
      numbers << number
    end
  else
    int.times do |x|
      number = x.even? ? 0 : 1
      numbers << number
    end  
  end

  numbers.join

end

puts stringy(6, 0) == '101010'
puts stringy(9, 0) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'