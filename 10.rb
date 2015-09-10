require_relative "helpers"

n = 2000000
primes = getPrimes(n)

puts primes.reduce(:+)
