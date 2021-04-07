n = gets.to_i
a1 = gets.split.map(&:to_i)
a2 = gets.split.map(&:to_i)

sum = []

n.times do |i|
  sum << (a1.slice(0, i + 1).sum + a2.slice(i, n).sum)
end

puts sum.max
