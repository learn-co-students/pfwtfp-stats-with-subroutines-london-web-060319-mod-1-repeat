# frozen_string_literal: true

require 'pry'
# Define your methods here
def mean(array)
  array.sum.to_f / array.count.to_f
end

def median(array)
  n = array.size.to_f
  if n % 2 == 0
    arr_i1 = array.sort[(n / 2) - 1]
    arr_i2 = array.sort[(n / 2)]
    return (arr_i1 + arr_i2) / 2.0
  else
    return array.sort[(n / 2) - 1]
  end
end

def mode(array)
  array.max_by { |i| array.count(i) }
end


  def standard_deviation(ary)  
    mean = ary.inject(:+).to_f / ary.size  
    Math.sqrt(ary.inject(0){|sum,val| sum + (val - mean)**2} / ary.size)  
  end  



