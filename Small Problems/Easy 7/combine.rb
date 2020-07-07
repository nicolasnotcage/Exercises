def interleaves(arr1, arr2)
  interleaved = arr1
  i = 1
  
  arr2.each do |value|
    interleaved.insert(i, value)
    i += 2
  end

  interleaved
end

p interleaves([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
