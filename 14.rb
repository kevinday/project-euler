@cache={}

def collatzLength(n)
  current = n
  count = 1
  while current != 1 do
    if @cache.has_key?(current) then
      count += @cache[current] - 1
      @cache[n] = count - 1
      break
    end

    if current.even? then
      current /= 2
    else
      current = 3 * current + 1
    end
    count += 1 
  end
  @cache[n] = count
  count
end


def max(a,b)
  return a > b ? a : b
end

max_len=0
start=1
for i in 1..1000000
  len = collatzLength(i)
  if len > max_len then
    max_len = len
    start = i
  end
end

puts max_len, start
