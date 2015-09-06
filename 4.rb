
def pallindrome?(n)
  n.to_s==n.to_s.reverse
end

largest=-1

for i in (100..999).reverse_each do
  for j in (100..999).reverse_each do

    if j<i then
      break
    end

    product=j*i
    if product <= largest then
      break
    end

    if pallindrome?(product)  then
      largest=product
      puts largest
    end
  end
end

puts largest
