A = (90..100)
B = (80..89)
C = (70..79)
D = (60..69)

def get_grade(one, two, three)
  average = (one + two + three) / 3

  case average
  when A then 'A'
  when B then 'B'
  when C then 'C'
  when D then 'D'
  else 'F' 
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"

