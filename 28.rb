max_width = 1001
width = 3

#center
sum = 1

while width <= max_width 
  corner = width * width         #upper right corner
  delta = width - 1
  sum += corner
  sum += corner - delta          #upper left corner
  sum += corner - (2 * delta)    #bottom left corner
  sum += corner - (3 * delta)    #bottom right corner

  width += 2  #each new level adds 2 more elements

end

puts sum