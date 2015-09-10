@width = 20
@height = 20

@cache=Array.new(@height + 1){Array.new(@width + 1)}

def traverse(x, y, count)

  #failed branch
  if x > @width || y > @height then
    return count
  end

  if !@cache[x][y].nil? then
    return @cache[x][y]
  end

  if x == @width && y == @height then
    return count + 1
  end

  paths = traverse(x + 1, y, count) + traverse(x, y + 1, count)
  @cache[x][y] = paths
  return paths
  
end

puts traverse(0,0,0)
