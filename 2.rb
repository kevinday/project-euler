

def fib(n)
  if n==0 then
    return 0
  elsif n==1 then
    return 1
  else
    return fib(n-1) + fib(n-2)
  end
end

n=4000000
#n=10
sum=0
i=-1

loop do
  i+=1

#  if i.odd? then 
#    next
#  end

  val = fib(i)

  if val.odd? then
    next
  end

  if val > n then 
    break
  end

  sum +=val

end

puts sum
