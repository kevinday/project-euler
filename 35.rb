require_relative "helpers"
require 'set'

limit = 1000000

@primes = SortedSet.new(getPrimes(limit-1))

def circularPrime?(prime)
  digits = prime.to_s.split('')
  (digits.length - 1).times do
    first = digits.shift
    digits.push(first)
    return false if !@primes.member?(digits.join.to_i)
  end
  true
end

count = 0
@primes.each do |prime|
   count += 1 if circularPrime?(prime)
end

puts count