n = gets.to_i
a = []

n.times { a << gets.to_i }

ans = 1
current = 0
while a[current] != 2
  if ans >= n
    ans = -1
    break
  end
  ans += 1
  current = a[current] - 1
end

puts ans
