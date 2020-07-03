=begin
  Inputs:
    - String in format hh:mm
  Outputs:
    - Number of minutes before midnight
    - Number of minutes after midnight
  Exceptions:
    - Input of '24:00' must return 0 for both before and after midnight
=end

def get_minutes(hhmm)
  mins = hhmm[-2..-1].to_i + (hhmm[0..1].to_i * 60)
  mins
end

def after_midnight(hours_mins)
  after = 0
  minutes = get_minutes(hours_mins)
  
  after = minutes unless minutes == 0 || minutes == 1440
  
  after
end

def before_midnight(hours_mins)
  before = 0
  minutes = get_minutes(hours_mins)
  
  before = (1440 - minutes).abs unless minutes == 0 || minutes == 1440
  
  before
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts before_midnight('12:34')
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
