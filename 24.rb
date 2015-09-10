input = [0,1,2,3,4,5,6,7,8,9]

#thanks Dijkstra. http://www.cut-the-knot.org/do_you_know/AllPerm.shtml#Dijkstra
def nextPermutation(array)
  length = array.length
  i = length - 1
  while array[i - 1] >= array[i]
    i = i - 1
  end

  j = length
  while array[j - 1] <= array[i - 1]
    j= j - 1
  end

  array[i - 1], array[j - 1] = array[j - 1], array[i - 1]

  i += 1
  j = length
  while i < j
    array[i - 1], array[j - 1] = array[j - 1], array[i - 1]
    i += 1
    j -= 1
  end

  array
end

count = 1000000

(count - 1).times do 
  input = nextPermutation(input)
end

puts input.join
