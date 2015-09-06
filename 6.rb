def sumOfSquares(n)
  result=0
  n.times do |i|
    result+=(i+1)**2
  end
  result
end

def squareOfSums(n)
  result=0
  n.times do |i|
    result+=(i+1)
  end
  result=result**2
end


num=100

puts squareOfSums(num) - sumOfSquares(num)


