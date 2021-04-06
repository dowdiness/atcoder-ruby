_n = gets.to_i
x = gets.split.map(&:to_i)

ans = 1000000000
(1..100).each do |i|
  temp = 0
  x.each do |j|
    temp += (j - i) ** 2
  end
  ans = [ans, temp].min
end

puts ans
