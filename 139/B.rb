a, b = gets.split.map(&:to_i)

ans = 0
outlet = 1

while outlet < b do
  outlet -= 1
  outlet += a
  ans += 1
end

puts ans
