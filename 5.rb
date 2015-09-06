def prime?(n)
  if n <= 1 then
    return false
  end

  if n <= 3 then
    return true
  end

  if n > 2 and n.even? then
    return false
  end

  max = Math.sqrt(n)
  i=5
  until i > max do
    if n%i == 0 then
      return false
    end
    i+=1
  end
  true
end

#def getPrimeFactors(num)

#  arr = Array.new
#  for i in 2..num
#    if num < i then
#      break
#    end

 #   if num%i==0 and prime?(i) then

  #    arr.push(i)
      #times = num/i
      #puts times.to_s + " " + i.to_s
#      times.times do |val|
#        arr.push(i)
#      end
  #    num = num/i
  #  end
  #end
  #arr
#end

#puts getPrimeFactors(20)

#for i in 2..20 do
#end


def gcd(a,b)
  
  while b>0 do
    prevB=b
    b=a%b
    a=prevB
  end
  a
end

def lcm(a, b)
  return a * (b / gcd(a,b))
end


result=20

for i in (2..result-1).reverse_each do
  result = lcm(result, i)
end

puts result
