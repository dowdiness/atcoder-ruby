_n = gets.to_i
a = gets.split.map(&:to_i)

flag = [].fill(false, 0, 8)
select = 0

a.each do |rate|
  case rate
  when 1..399
    flag[0] = true
  when 400..799
    flag[1] = true
  when 800..1199
    flag[2] = true
  when 1200..1599
    flag[3] = true
  when 1600..1999
    flag[4] = true
  when 2000..2399
    flag[5] = true
  when 2400..2799
    flag[6] = true
  when 2800..3199
    flag[7] = true
  when 3200..nil
    select += 1
  end
end

min = 0

if flag.count(true) == 0
  min = 1
else
  min = flag.count(true)
end

max = flag.count(true) + select

print min, " #{max}"
