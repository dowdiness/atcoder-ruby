n = gets.to_i

if n < 105
  puts 0
  return
end

ans = 0

105.step(n, 2) do |i|
  temp = 0
  (1).upto(n/2) do |j|
    temp += 1 if i % j == 0
  end
  ans += 1 if temp + 1 == 8
end

puts ans
