require_relative 'helpers'

#upper bound determined from first run
@sieve = getSieve(739397)


def isTruncatablePrime?(n)

 return false if @sieve[n] == 0 || n < 10
 prime = n.to_s
 prime.length.times do |i|
    return false if @sieve[prime[i..-1].to_i] == 0 || @sieve[prime[0..prime.length - 1 - i].to_i] == 0
 end
 true
end

puts @sieve.each_index.select{ |i| @sieve[i] == 1 && isTruncatablePrime?(i)}.inject(:+)
