def prime?(n)
  if n <= 1 then
    return false
  end

  if n <= 3 then
    return true
  end

  if n > 2 and n.even? then
    return false
  end

  max = Math.sqrt(n)
  i = 5
  until i > max do
    if n%i == 0 then
      return false
    end
    i += 1
  end
  true
end


def gcd(a,b)
  while b > 0 do
    prevB = b
    b = a%b
    a = prevB
  end
  a
end


def lcm(a, b)
  return a * (b / gcd(a,b))
end


def max(a,b)
  return a > b ? a : b
end


#based roughly on this: http://www.math-magic.com/misc/pos_int_div2.htm
def divisorSum(n, primes)

  sum = 1
  current = n

  primes.each do |prime|

    break if prime * prime > current
    break if current <= 1

    if current % prime == 0 then
      j = prime * prime
      current = current / prime
      while current % prime == 0 do
        j = j * prime
        current = current / prime
      end

      sum = sum * (j - 1) / (prime - 1)
    end
  end

  if current > 1 then
    sum *= current + 1
  end

  return sum - n
end


def getSieve(limit)
  return [] if limit < 2

  sieve = Array.new(limit + 1,1)
  sieve[0] = 0
  sieve[1] = 0
  sieve[2] = 1

  #sieve
  for i in 2...limit
    if sieve[i] == 1 then
      j = i + i
      while j <= limit do
        sieve[j] = 0
        j += i
      end
    end
  end
  sieve
end


def getPrimes(limit)
  sieve = getSieve(limit)
  primes = []

  sieve.each_index do |i|
    primes.push(i) if sieve[i] == 1
  end

  primes
end

