require_relative "helpers"

max = 10000
sums = {}

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