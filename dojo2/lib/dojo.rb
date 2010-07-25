require 'time'

def average_time_of_the_day(times)
  return times.first if times.length == 1
  
  quantity = times.length
  total = 0
  
  times.each do |t|
    total += Time.parse(t)
  end
  
  first = Time.parse(times.first)
  last = Time.parse(times.last)
  
  if last < first
    last += (60*60*24)
  end
  
  Time.at ((first.to_i + last.to_i) / 2).strftime("%I:%M%p").downcase! 
end