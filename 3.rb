require_relative 'helpers'

num=600851475143
largest = -1

for i in 1...num

  if num < i then
    break
  end

  if num%i==0 and prime?(i) then
    largest=i
    num=num/i
  end
end

puts largest