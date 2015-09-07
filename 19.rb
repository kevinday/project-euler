require 'date'

date = Date.new(1901,1,1)
end_date = Date.new(2000, 12, 1)

sundays = 0
while date < end_date do
  sundays += 1 if date.sunday?
  date = date.next_month
end

puts sundays