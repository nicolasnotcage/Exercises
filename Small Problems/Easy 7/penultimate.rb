def penultimate(string)
  words_arr = string.split
  words_arr[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
      
