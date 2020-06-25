=begin
  Inputs:
    - Two arguments
      - Boolean to determine if the bonus is applied or not
      - Salary as an integer
  Outputs:
    - The value of the bonus
      - Half of the salary if True
      - Zero if False
  Algorithm:
    - Declare bonus variable
    - If bonus is true, then calculate
      - Bonus = salary / 2
    - If bonus is false, then bonus = 0
    - Return bonus
=end

def calculate_bonus(salary, bool)
  bool ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
