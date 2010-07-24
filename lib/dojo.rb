require 'time'

def average_time_of_the_day(times)
  return times.first if times.length == 1
  
  first = Time.parse(times.first).to_i
  second = Time.parse(times.last).to_i
  Time.at ((first + second) / 2).strftime("%I:%M%p").downcase! 
end