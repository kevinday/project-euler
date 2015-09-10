index = 1
fib2 = 0
fib1 = 1

num_digits = 1000

while true do
  index += 1
  fib = fib1 + fib2
  break if fib.to_s.length == num_digits

  fib2 = fib1
  fib1 = fib
end

puts index