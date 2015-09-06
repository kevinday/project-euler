val=2**1000

puts val.to_s.split("").map(&:to_i).reduce(:+)
