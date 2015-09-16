require_relative "helpers"

#returns the digit two numbers have in common (if there's only 1). -1 otherwise.
#this function only works for numbers with 2 digits, which is fine for the purpose of tihs problem
def digitInCommon(a, b)
  a_digits, b_digits = a.to_s.split(''), b.to_s.split('')

  same = a_digits & b_digits
  different = a_digits | b_digits

  return same.length == 1 && different.length == 3 ? same.first.to_i : -1
end

def almostEquals?(a, b)
  (a - b).abs <= 0.000000001
end

def chopDigit(n, digit)
  (n.to_s.split('') - digit.to_s.split('')).join.to_i
end

num_product, den_product = 1

11.upto(98) do |a|
  next if a % 10 == 0 #multiples of 10 are trivial examples, and excluded
  (a + 1).upto(99) do |b|
    next if b % 10 == 0

    common = digitInCommon(a, b)
    next if common < 0
    
    chopped_a = chopDigit(a, common)
    chopped_b = chopDigit(b, common)

    if almostEquals?(a.to_f / b.to_f, chopped_a.to_f / chopped_b.to_f) then
      num_product *= chopped_a
      den_product *= chopped_b
    end 

  end
end

puts den_product / gcd(num_product, den_product)