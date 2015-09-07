n = 100

#ruby is fun
puts n.downto(1).inject(:*).to_s.split('').map(&:to_i).reduce(:+)