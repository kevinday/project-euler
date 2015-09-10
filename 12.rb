require_relative "helpers"

#make some primes.
@n = 100000

@sieve = getSieve(@n)

@primes = []
for i in 0...@n
  if @sieve[i] == 1 then
    @primes.push(i)
  end
end

#basically just the product of exponents+1 of prime factorization
def numDivisors(n)
  exponents = []
  remaining = n

  return 1 if n == 1

  for i in 0...@primes.length

    if remaining == 1 then
      return exponents.inject(:*)
    end

    if remaining % @primes[i] == 0 then
      exponent_count = 0
      while remaining % @primes[i] == 0 do
        remaining /= @primes[i]

        exponent_count += 1
      end
      exponents.push(exponent_count + 1)
    end
  end
  return 1
end


triangle=0

for i in 1..100000
  triangle += i
  num = numDivisors(triangle)
  if num > 500 then 
    puts triangle, i, num
    break
  end
end


