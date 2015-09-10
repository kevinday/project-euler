require_relative "helpers"

max = 28123
@primes = getPrimes(Math.sqrt(max))


def isAbundant?(n)
  return divisorSum(n, @primes) > n
end

abundants = []
#calc abundant numbers
1.upto(max) do |i|
  abundants.push(i) if isAbundant?(i)
end

abundantSums = Array.new(max+1, false)
abundants.each do |num1|
  abundants.each do |num2|
    current_sum = num1 + num2
    break if current_sum > max
    abundantSums[current_sum] = true
  end
end

sum=0
abundantSums.each_with_index do |value, index|
  sum += index if value == false
end

puts sum