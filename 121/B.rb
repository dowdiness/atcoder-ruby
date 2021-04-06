n, m, c = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
a = []
n.times { a << gets.split.map(&:to_i) }

ans = 0

a.each do |arr|
  if arr.zip(b).map{|x, y| x * y}.inject(&:+) + c > 0
    ans += 1
  end
end

puts ans
