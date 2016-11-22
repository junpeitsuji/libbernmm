require '../bernmm'

require 'prime'
require 'set'



# Kummer の判定法により非正則素数かどうか判定
#  
# Kummer の判定法: 
#    B_{0}, B_{2}, ..., B_{p-3}  
# のいずれかを p が割り切る
#    <=> p is irregular. 
# 
# Remark: p is prime, 0 <= r <= p-3 then, 
#    p is divisible B_{r}/r. <=> p is divisible B_{r}.
#
def is_irregular(p)

   (0..((p-3)/2)).each do |k|
      r = 2*k

      # Ber(r) が p で割り切れるか判定 (計算高速)
      if Bernmm.ber_modp(p, r) == 0 then
        return true
      end
   end
   
   return false
end



# p で割り切れる zeta(1-r) の 1-r を返す関数
def divisible_zeta_indexes(p)
   indexes = []

   (0..((p-3)/2)).each do |k|
      r = 2*k

      # Ber(r) が p で割り切れるか判定 (計算高速)
      if Bernmm.ber_modp(p, r) == 0 then
        indexes << (1-r)
      end
   end
   
   return indexes
   
end



# p <= x であるような非正則素数を求める 
def irregulars_upto(x)
   irregulars = Set.new

   Prime.each(x).each do |p|

      if is_irregular(p) then
        irregulars << p
      end

   end  

   return irregulars.to_a.sort
end



# 1000 以下の非正則素数
n = 1000
puts "Irregular primes p <= #{n}:"
irregulars = irregulars_upto(n)
p irregulars
puts "" 




# irregulars に入っている数が非正則素数であることの確認
#   割り切るベルヌーイ数を表示
irregulars.each do |p|
  if is_irregular(p)
    puts "#{p} is an irregular prime: zeta(#{divisible_zeta_indexes(p)}) == 0 (mod #{p})" 
  end
end
