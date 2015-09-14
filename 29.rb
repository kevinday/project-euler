maxA = 100
maxB = 100

results = []

2.upto(maxA) do |a|
  2.upto(maxB) do |b|
    results.push(a ** b)
  end
end

puts results.sort.uniq.length