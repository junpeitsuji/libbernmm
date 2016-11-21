# bernoulli_denominator_factarization.rb
# 
# von Staudt--Clausen's theorem を確認するために
# ベルヌーイ数の分母の素因数を調べるサンプル
# 

require '../bernmm'
require 'prime'

(0..200).each do |k|
	r = k*2 
	den = Bernmm.ber(r).denominator 

	puts "Ber(#{r}) = #{Prime.prime_division(den)}"
end


