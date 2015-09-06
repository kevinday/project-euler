def prime?(n)
  if n <= 1 then
    return false
  end

  if n <= 3 then
    return true
  end

  if n > 2 and n.even? then
    return false
  end

  max = Math.sqrt(n)
  i = 5
  until i > max do
    if n%i == 0 then
      return false
    end
    i += 1
  end
  true
end


def gcd(a,b)
  while b > 0 do
    prevB = b
    b = a%b
    a = prevB
  end
  a
end


def lcm(a, b)
  return a * (b / gcd(a,b))
end