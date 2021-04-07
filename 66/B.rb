s = gets.chomp.chars

def palindrome str
  str.slice(0, str.size / 2) == str.slice(str.size / 2, str.size)
end

s.reverse!.each_index do |i|
  next if i == 0
  if palindrome(s.slice(i, s.size).join) == true
    puts s.size - i
    break
  end
end
