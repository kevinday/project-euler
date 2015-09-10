require_relative "helpers"

@n = 2000000
@primes = getSieve(@n)

sum=0
for i in 0...@n
  if @primes[i] == 1 then
    sum += i
  end
end

puts sum
