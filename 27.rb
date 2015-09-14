require_relative "helpers"

maxA = 999
maxB = 999

@sieve = getSieve(100000)

def consecutivePrimes(a, b)
    n = 0
    while true
      result = n ** 2 + a * n + b
      break if @sieve[result] == 0
      n += 1
    end
    n
end

maxPrimes = 0
product = nil
(maxA * -1).upto(maxA) do |a|
  1.upto(maxB) do |b|
    #b has to be prime, because n's go away at n=0
    next if @sieve[b] == 0
    numPrimes = consecutivePrimes(a, b)
    if numPrimes > maxPrimes then
      maxPrimes = numPrimes
      product = a * b
    end 
  end
end

puts maxPrimes, product