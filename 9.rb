#a = n2 - m2
#b = 2nm
#c = n2 + m2

m=1
n=2


def calcTriplet(m,n)

  a = n**2 - m**2
  b = 2*n*m
  c = n**2 + m**2

  [a,b,c]

end

def result(triplet)
  return triplet[0] + triplet[1] + triplet[2]
end

triplet = []

while true do
  triplet = calcTriplet(m,n)
  sum = result(triplet)

  if sum == 1000 then
    break
  elsif sum < 1000 then
    n+=1
  else
    #for triplet calc n>m
    m+=1
    n = m + 1
  end
end

puts triplet
puts (triplet[0] * triplet[1] * triplet[2])



