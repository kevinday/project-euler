

sum=0

for i in 0..999
  if i%3==0 or i%5==0 then
    sum += i if i%5 or i%3
    #puts i
  end
###  puts i if i%5
#  sum += i if i%5 or i%3
end

puts sum
