n, a, b = gets.split.map(&:to_i)
s = gets.to_s

limit = a + b
qualify = 0
frank = 0

s.chars.each do |student|
  case student
  when 'a' then
    if qualify < limit
      puts 'Yes'
      qualify += 1
    else
      puts 'No'
    end
  when 'b' then
    if qualify < limit && frank < b
      puts 'Yes'
      qualify += 1
      frank += 1
    else
      puts 'No'
    end
  when 'c' then
    puts 'No'
  else
  end
end
