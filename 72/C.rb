n = gets.to_i
a = gets.split.map(&:to_i)

ans = [].fill(0,0,10**5+3)

a.each_index do |j|
  ans[a[j]] += 1
  ans[a[j] - 1] += 1
  ans[a[j] + 1] += 1
end

puts ans.max
