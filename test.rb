test = Array.new(1,0)

def blah(array)
  array[0] = 5
end

puts test[0]
blah(test)

puts test[0]