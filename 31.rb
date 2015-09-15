@coins = [1, 2, 5, 10, 20, 50, 100, 200]
total = 200

def change_permutation(change, index)
  return 1 if index == 0 #for 1p case we can just add as many as we need to get to the total.
  return 0 if change < 0

  return change_permutation(change - @coins[index], index) + change_permutation(change, index - 1)

end

puts change_permutation(total, @coins.length - 1)



