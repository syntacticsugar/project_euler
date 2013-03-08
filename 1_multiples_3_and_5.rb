# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.
#
#
#
#
#
# last is (:+)
#
#
multi = ->(x) { (x % 3).zero? or (x % 5).zero? }
puts (1...1000).select{ |x| multi[x] }.inject(:+).to_s

# (or, create my own 'filter' function )
#
#
#
#



(1...1000).select(&multi).reduce(:+)



(1...1000).select { |n| n % 3 == 0 or n % 5 == 0 }.reduce :+

  puts "wow"
