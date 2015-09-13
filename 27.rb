require_relative "helpers"

maxA = 999
maxB = 999

def consecutivePrimes(a, b)
    n = 0
    while true
      result = n ** 2 + a * n + b
      #puts result
      break if !prime?(result)
      n += 1
    end
    n
end

maxPrimes = 0
product = nil
(maxA * -1).upto(maxA) do |a|
  (maxB * -1).upto(maxB) do |b|
    numPrimes = consecutivePrimes(a, b)
    if numPrimes > maxPrimes then
      maxPrimes = numPrimes
      product = a * b
    end 
  end
end

puts maxPrimes, product