power = 5

n = 10

powers = Array.new(10)

#very small performance increase caching these powers vs computing them thousands of times.
powers.each_index { |i| powers[i] = i ** power }

sum = 0
while n < 400000 #bit of trial and error to get this upper bound. Could probably reason it smaller.
  digits = n.to_s.split('')

  digit_sum = 0
  digits.each do |digit|
    digit_sum += powers[digit.to_i]
    break if digit_sum > n
  end

  sum += n if digit_sum == n
  n += 1

end

puts sum