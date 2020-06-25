def is_odd?(int)
  int.abs % 2 != 0
end

puts is_odd?(-3)
puts is_odd?(4)