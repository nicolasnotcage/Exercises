def swap_name(name)
  split = name.split
  "#{split[1]}, #{split[0]}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'