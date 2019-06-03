# Define your methods here
require 'pry'
# sum divided by length
def mean(numbers)
  Float(numbers.inject(:+)) / numbers.length
end

# middle
def median(numbers)
  sorted = numbers.sort
  return sorted[numbers.length / 2 - 1] if numbers.length.odd?
  p = numbers.length / 2 - 1
  Float(mean([sorted[p], sorted[p + 1]]))
end

# most frequent
def mode(numbers)
  num_hash = Hash.new{|h, k| h[k] = 0}
  number_and_counts = numbers.reduce(num_hash) { |c, e| c[e] += 1; c }
  top_count = -1
  top = -1
  number_and_counts.each_pair do |k, n|
    if n > top_count
      top_count = n
      top = k
    end
  end
  top
end

# ???????????????
def standard_deviation(numbers)
  Math.sqrt(mean(numbers.map{|n| (n - mean(numbers)) ** 2 }))
end
