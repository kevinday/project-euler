require_relative 'helpers'

largest = -1

for i in (100..999).reverse_each do
  for j in (100..999).reverse_each do

    break if j < i

    product = j * i
    if product <= largest then
      break
    end

    if palindrome?(product)  then
      largest = product
      puts largest
    end
  end
end

puts largest
