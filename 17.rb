@ones = [0,3,3,5,4,4,3,5,5,4,3,6,6,8,8,7,7,9,8,8]
@tens = [0,3,6,6,5,5,5,7,6,6]
@hundred = 7
@thousand = 8

def countNumLetters(n)
  remaining=n

  thousands = remaining/1000
  remaining = remaining%1000

  hundreds = remaining/100
  remaining = remaining%100

  tens = remaining/10
  remaining = remaining%10

  ones = remaining

  count=0
  
  if thousands > 0 then
    count += (@ones[thousands] + @thousand)
  end

  if hundreds > 0 then
    count += (@ones[hundreds] + @hundred)
  end

  if tens > 0 && tens < 2 then
    count += @ones[tens * 10 + ones]
  else
    count += @tens[tens] + @ones[ones]
  end

  #add the and
#  puts thousands.to_s + " " + hundreds.to_s + " " + tens.to_s + " " + ones.to_s
  if ((thousands > 0 || hundreds > 0) && (tens > 0 || ones > 0)) then
    count +=3
  end

  count
end

sum=0
for i in 1..1000
  puts i
  sum += countNumLetters(i)
end


puts sum
