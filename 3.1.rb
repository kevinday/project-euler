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

num=600851475143

for i in 1...num

  if num < i then
    break
  end

  if num%i==0 and prime?(i) then
    largest=i
    num=num/i
    puts largest.to_s + " " +  num.to_s
  end

end

