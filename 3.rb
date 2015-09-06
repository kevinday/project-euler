

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

num=100
largest=-1

#if num%2==0 then
#  largest=2
#end

#i=1

max = Math.sqrt(num)

for i in 1...num
#for i in 2...Math.sqrt(num)
  if num%i==0 and prime?(i) then
    largest=i
    puts largest
  end
end

puts largest
