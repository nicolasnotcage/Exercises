puts "Please write a word or multiple words:"
words = gets.chomp

chars = words.delete(' ').length
puts "There are #{chars} characters in \"#{words}\"."