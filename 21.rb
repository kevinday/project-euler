max = 10000
sums = {}

def divisorSum(n)
  sum = 0
  (n / 2).downto(1) do |i|
    sum += i if n % i == 0
  end
  sum
end

sum = 0
1.upto(max-1) do |i|
  current_sum = divisorSum(i)
  sums[i] = current_sum
  next if i == current_sum
  if sums[current_sum] == i then
    sum += sums[i] + sums[current_sum]
  end
end

puts sum