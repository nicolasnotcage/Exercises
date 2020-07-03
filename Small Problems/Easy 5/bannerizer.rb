def print_in_box(string)
  print "+-#{'-' * string.length}-+
        \n| #{' ' * string.length} |
        \n| #{string} |
        \n| #{' ' * string.length} |
        \n+-#{'-' * string.length}-+"
end

print_in_box('')