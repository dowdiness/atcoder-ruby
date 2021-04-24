n = gets.to_i
s = gets.chomp.bytes
q = gets.to_i
t = []
q.times do
  t << gets.split.map(&:to_i)
end

class Array
  def swap!(a, b)
    self[a], self[b] = self[b], self[a]
  end

  def rev!(n)
    first = self[0..n - 1]
    second = self[n..n * 2 - 1]
    self[0..n - 1] = second
    self[n..n * 2 - 1] = first
  end
end

j = 0
flag = false
while j < q
  i, a, b = t[j]
  case i
  when 1
    if flag
      a = a <= n ? a + n : a - n
      b = b <= n ? b + n : b - n
    end
    s.swap!(a - 1,b - 1)
  when 2
    flag = !flag
  end
  j += 1
end

s.rev!(n) if flag

puts s.map(&:chr).join
