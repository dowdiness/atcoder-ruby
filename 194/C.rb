x = gets.to_i
if x < 10
  puts 0
  return
end
len = x.to_s.length
if len % 2 == 1
  temp = (len - 1) / 2
  a = []
  temp.times {a.push(9)}
  puts a.join
  return
end
fst = x.to_s.slice(0, len / 2)
snd = x.to_s.slice(len / 2, len)
if fst <= snd
  puts fst.to_i
  return
end
puts fst.to_i - 1
