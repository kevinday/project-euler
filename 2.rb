size = 4000000

sum = 0
fib2 = 0
fib1 = 1

while true do
  fib = fib1 + fib2
  break if fib > size

  sum += fib if fib.even?

  fib2 = fib1
  fib1 = fib
end

puts sum