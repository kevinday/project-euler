@n = 2000000

@primes = Array.new(@n + 1,1)
@primes[0] = 0
@primes[1] = 0
@primes[2] = 1

#sieve
for i in 2...@n
  if @primes[i] == 1 then
    j = i + i
    while j <= @n do
      @primes[j] = 0
      j += i
    end
  end
end

sum=0
for i in 0...@n
  if @primes[i] == 1 then
    sum += i
  end
end

puts sum
