primes = [2,3]

nth = 10001

for i in (2..nth) do
  j = 1
  num = primes[i - 1]+2
  while (j<i) do
    if num%primes[j] == 0 then
      num += 2
      j = 1
      next
    end
    j = j + 1
  end
  primes[i] = num
end

puts primes[nth - 1]
