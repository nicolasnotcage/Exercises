=begin
  Inputs:
    - String
  Outputs:
    - New string where every other letter is capitalized
  Explicit requirements:
    - Method ignores special characters
  Algorithm:
    - Maintain most of the original algorithm
    - Add a conditional && check to ensure that the char is alphabetical
=end

def staggered_case(string)
  staggered = []
  need_upper = true

  string.chars.each_with_index do |char, index|
    if char =~ /[a-z]/i
      if need_upper
        staggered << char.upcase
      else
        staggered << char.downcase
      end
      need_upper = !need_upper
    else
        staggered <<  char
    end
  end

  staggered.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

