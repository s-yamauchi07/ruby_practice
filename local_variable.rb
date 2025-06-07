def calculate_sum(num1, num2) 
  sum = num1 + num2
  return sum
end

# puts sum  ローカル変数はメソッド外では取り出せない
puts "合計: #{calculate_sum(10,20)}"