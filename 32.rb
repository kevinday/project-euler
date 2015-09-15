require 'set'

def pandigital?(num)
  return false if num.length != 9

  digits = num.split('').map(&:to_i)

  digits_seen = Array.new(10, 0)
  digits.each do |i|
    return false if i == 0 || digits_seen[i] == 1
    digits_seen[i] = 1
  end
  true
end


sums = Set.new
1.upto(2000) do |i|
  (i + 1).upto(2000) do |j|
    product = i * j
    full = i.to_s + j.to_s + product.to_s
    break if full.length > 9
    sums.add(product) if pandigital?(full)
  end
end

puts sums.inject(:+)
