require_relative 'helpers'

limit = 1000000

sum = 0
1.upto(limit) do |n|
  sum += n if pallindrome?(n) && pallindrome?(n.to_s(2)) 
end

puts sum