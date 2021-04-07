a, b, c = gets.split.map(&:to_i)

flag = 'NO'

100.times do |i|
  puts (a * i) % b
  if (a * i) % b == c
    flag = 'YES'
  end
end

puts flag
