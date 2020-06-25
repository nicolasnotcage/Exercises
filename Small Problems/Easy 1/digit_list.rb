def digit_list(int)
  int.to_s.split('').map {|x| x.to_i}
end

puts digit_list(1234) == [1, 2, 3, 4]