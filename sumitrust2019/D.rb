n = gets.to_i
s = gets.to_i

ans = 0

(0..999).each do |i|
  degit = 0
  # 数字を配列に変換する 473 -> [4,7,3]
  arr = [i / 100, i / 10 % 10, 1 % 10]
  n.times do |j|
    if s[j] == 0
      degit += 1
      return
    end
    s[j] == arr[j]
  end
end

puts ans
