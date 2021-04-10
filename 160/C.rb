k, n = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

ans = []
n.times do |i|
  # 右向きに回る
  if i == 0
    ans << a[n - 1] - a[i]
  else
    ans << k - a[i] + a[i - 1]
  end
end

puts ans.min
