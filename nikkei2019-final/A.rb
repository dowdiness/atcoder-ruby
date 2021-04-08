n = gets.to_i
a = gets.split.map(&:to_i)

cumu = []

1.upto(n) do |i|
  cumu << a.take(i).sum
end

ans = []

1.upto(n) do |j|
  temp = []
  n.times do |i|
    unless (i - j) < -1
      temp << cumu[i] - (j - 1 == i ? 0 : cumu[i - j])
    end
  end
  ans << temp.max
end

puts ans
