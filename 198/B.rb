n = gets.chomp.chars

ans = 'No'

if n == n.reverse
  puts 'Yes'
  return
end

if n[-1] != "0"
  puts 'No'
  return
end

size = n.size

size.times do |i|
  n.unshift("0")
  if n == n.reverse
    ans = 'Yes'
    break
  end
end

puts ans
