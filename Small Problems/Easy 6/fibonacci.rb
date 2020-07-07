def fibonacci (n)
  return n if n <= 1
  fibonacci(n - 1) + fibonacci(n - 2)
end

def find_fibonacci_index_by_length(length)
  fib_nums = []
  num = 1
  until length == fib_nums.last.to_s.length
    fib_nums << fibonacci(num)
    num += 1
  end

  fib_nums.index(fib_nums.last) + 1
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847