factorials = Array.new(10, 0)

factorials.each_index do |i|
  factorials[i] = i.downto(1).inject(:*)
end
factorials[0] = 1

total = 0
3.upto(362880) do |n|
  result = n.to_s.split('').each.inject(0) {|result, i| result + factorials[i.to_i]}
  total += n if n == result
end

puts total