include Math

r, x, y = gets.split.map(&:to_i)

start = [0, 0]
def distance x1, y1, x2, y2
  Math.sqrt((x1 - x2) ** 2 + (y1 - y2) ** 2)
end

dis = distance 0, 0, x, y

if dis == r
  puts 1
  return
elsif dis <= r+r
  puts 2
  return
end

puts (dis / r).ceil
