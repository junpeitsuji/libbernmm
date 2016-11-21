require '../bernmm'


# 100 以下のベルヌーイ数の分母分子を列挙
100.times do |k|
   r = 2*k
   b = Bernmm.ber(r)
   puts "#{r}, #{b.numerator}, #{b.denominator}"
end


puts ""
puts ""
puts ""


# 37 が非正則素数であることを確認
p = 37
array = []
(0..(p-3)).each do |k|
   if k % 2 == 0
      array << Bernmm.ber_modp(p, k)
   end
end

puts "p = #{p}"
p array


