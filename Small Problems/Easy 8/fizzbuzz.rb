=begin
  Inputs:
    - Two integers
      1) Starting number
      2) Ending number
  Outputs:
    - Prints all numbers between the two numbers
      a) If num divisible by three -> print "Fizz"
      b) If num divisible by 5 -> print "Buzz"
      c) If divisible by both 3 and 5 -> print "FizzBuzz"
  Algorithm:
    - Initiate empty fizzbuzz array
    - Use the given integers in an upto statement
      a) If num divisible by 3 && divisible by 5
        - array << "FizzBuzz"
      b) elsif num divisible by 3
        - array << "Fizz"
      c) elsif num divisible by 5
        - array << "Buzz"
      d) else
        - array << num
    - puts fizzbuzz array
=end

def fizzbuzz(start, last)
  array = []

  start.upto(last) do |num|
    if num % 3 == 0 && num % 5 == 0
      array << "FizzBuzz"
    elsif num % 5 == 0
      array << "Buzz"
    elsif num % 3 == 0
      array << "Fizz"
    else
      array << num
    end
  end

  puts array
end

fizzbuzz(1, 15)