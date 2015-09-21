require_relative 'helpers'

limit = 1000000

sum = 0
(1...limit).step(2) do |n|
  sum += n if pallindrome?(n) && pallindrome?(n.to_s(2)) 
end

puts sum