def count_occurrences(array)
  count_hash = Hash.new
  array.each do |x|
    x = x.downcase
    if count_hash[x] == nil
      count_hash[x] = 1
    else
      count_hash[x] += 1
    end
  end

  count_hash.each do |x, y|
    puts "#{x} => #{y}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck',
  'suv', 'CAR', 'cAr'
]

count_occurrences(vehicles)