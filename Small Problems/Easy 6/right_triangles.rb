=begin
  Inputs:
    - Positive integer
  Outputs:
    - A right triangle made up of asterisks with the base the length of the input integer
  Explicit Requirements:
    - Hypotenuse should go from bottom-left to top-right
  Algorithm:
    - Set spaces = n - 1
    - Set stars = 1
    - Loop until stars > n
    - First line should print a line of (spaces) + (stars) -> newline
    - spaces -= 1
    - stars += 1
    - Repeat until stars == n
    
=end

def triangle(int)
  spaces = int - 1
  stars = 1

  until stars > int
    print "#{' ' * spaces}#{'*' * stars}\n"
    spaces -= 1
    stars += 1
  end
end

print triangle(5)
print triangle(15)
