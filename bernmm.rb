$LOAD_PATH.push(File.dirname(__FILE__) + "/ruby_wrapper")
require 'berrb'

# Require ME!!

module Bernmm

  ###
  # return k-th rational bernoulli number 
  # 
  def ber(k, thread=1)
    Berrb.new.ber(k, thread).to_r
  end

  ###
  # return k-th bernoulli number numerator modulo p 
  # 
  def ber_modp(p, k)
    Berrb.new.ber_modp(p, k)
  end



  module_function :ber, :ber_modp

end




