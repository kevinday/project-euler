#has to start with 9, since example they gave us starts with 9. has to be bigger than that one.
#cases: 2 digits, fixed = 90  ,99:   n=3 90180270, 99198297. upper and lower bound both produce 8 digits. not enough
#                                    n=4 90180270360. too many digits
#       3 digits, fixed = 900 ,999   n=3 90018002700. too many digits.
#       4 digits, fixed = 9000, 9999 n=2 900018000. 8 digits. start here.

#based on analysis above, fixed num is 4 digits starting with 9, n is 2

n = 4

def pandigital?(num)
  digits = num.split('')
  #no zeros allowed in pandigital
  return false if digits.select { |x| x != "0" }.length != 9
  #if there are any duplicates, not pandigital
  digits.uniq.length == digits.length
end

9000.upto(9999) do |fixed|
  result = fixed.to_s + (fixed * 2).to_s
  puts fixed, result if pandigital?(result)
end