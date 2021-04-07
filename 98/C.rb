n = gets.to_i
s = gets.chomp.chars

ans = n

e_count = s.count('E')
w_count = s.count('W')

ew_back = [e_count, w_count]
ew_forward = [0, 0]

n.times do |i|
  if s[i] == 'W'
    ew_back[1] -= 1
  else
    ew_back[0] -= 1
  end
  ans = [ans, ew_forward[1] + ew_back[0]].min
  if s[i] == 'W'
    ew_forward[1] += 1
  else
    ew_forward[0] += 1
  end
end

puts ans
