DEGREE = "\xC2\xB0"

def dms(angle)
  degrees = angle.to_i
  
  first_multiple = (angle.to_f - angle.to_i) * 60
  minutes = first_multiple.to_i

  if minutes == 60
    minutes = 0
    degrees += 1
  end
  
  second_multiple = ((first_multiple - first_multiple.to_i) * 60).round(2)
  seconds = second_multiple.to_i

  if seconds == 60
    seconds = 0
    minutes += 1
  end

  minutes = minutes.to_s.insert(0, '0') if minutes.to_s.length == 1
  seconds = seconds.to_s.insert(0, '0') if seconds.to_s.length == 1    

  "#{degrees}#{DEGREE}#{minutes}'#{seconds}\""
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6)
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
