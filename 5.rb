require_relative 'helpers'

result=20

for i in (2...result).reverse_each do
  result = lcm(result, i)
end

puts result
