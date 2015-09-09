def nameSum(name, index)
  name.each_char.inject(0) {|sum, c| sum + (c.ord - 64) * index }
end

puts File.read("./data/names.txt").split(",").map(&:strip)
                                  .map{ |name| name.tr('"', '') }
                                  .sort
                                  .each_with_index.map{ |name, i| nameSum(name, i+1) }
                                  .reduce(:+)
