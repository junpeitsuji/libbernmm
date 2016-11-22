require '../bernmm'
require 'prime'
require 'benchmark'


# Wolstenholme prime: p < 2500000 
# see: http://mathworld.wolfram.com/WolstenholmePrime.html


result = Benchmark.realtime do
   Prime.each(2500000) do |p|
      if p > 2
         r = p-3
         if Bernmm.ber_modp(p, r) == 0 then
            # p is a Wolstenholme prime.
            puts p
         end
      end
   end 
end
puts "### Processing time: #{result}s"


