=begin
  Inputs:
    - String
  Outputs:
    - New string where every other letter is capitalized
  Algorithm:
    - Initiate new array variable
    - Iterate over original string.chars.each_with_index
    - If index.even?
      a) new_arr << char.upcase
    - else
      b) new_arr << char.downcase
    - Return new_arr.join
=end

def staggered_case(string)
  staggered = []
  string.chars.each_with_index do |char, index|
    if index.even?
      staggered << char.upcase
    else
      staggered << char.downcase
    end
  end

  staggered.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
