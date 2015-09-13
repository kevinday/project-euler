@maxD = 1000

def cycleLength(n)

  remainders = Array.new(@maxD+1, nil)

  remainder = 1
  index = 0

  while remainder != 0

    remainder = remainder % n
    return index - remainders[remainder] if !remainders[remainder].nil?

    #store index of where we first saw this remainder.
    remainders[remainder] = index

    index += 1
    remainder = remainder * 10
  end

  return 0
end


longest = 0
longestD = nil
d = 2
while d < @maxD

  length = cycleLength(d)
 
  if length > longest then
    longest = length
    longestD = d
  end
  d += 1
end

puts longestD, longest
