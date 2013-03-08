# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
#
#
# hmmm...
# 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20

#INFINITY = 1/0.0

start = Time.now

number = (20..Float::INFINITY ).step(20).find do |x|
  2.upto(20).all? do |divisor|
    x % divisor == 0
  end
end
puts "the answer is #{number.to_i}.\n"

puts "This program unfortunately took #{Time.now - start} to finish."

# .all? 
# %w{ant bear cat}.all? {|word| word.length >= 4} 
