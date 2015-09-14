require 'set'
maxA = 100
maxB = 100

results = Set.new

2.upto(maxA) do |a|
  2.upto(maxB) do |b|
    results.add(a ** b)
  end
end


puts results.to_set.length