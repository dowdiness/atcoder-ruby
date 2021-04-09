a, b, c, d = gets.split('').map(&:to_i)

[:-, :+].repeated_permutation(3) do |op1, op2, op3|
  temp = op1.to_proc[a,b]
  temp = op2.to_proc[temp,c]
  temp = op3.to_proc[temp,d]
  if temp == 7
    puts "#{a}#{op1.to_s}#{b}#{op2.to_s}#{c}#{op3.to_s}#{d}=7"
    break
  end
end
