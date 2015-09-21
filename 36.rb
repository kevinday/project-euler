require_relative 'helpers'

limit = 1000000

sum = 0
(1...limit).step(2) do |n|
  sum += n if palindrome?(n) && palindrome?(n, 2) 
end

puts sum