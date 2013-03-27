=begin  (((((Fri Mar 22 12:07:23 2013)))))

The sequence of triangle numbers is generated by adding the natural numbers. 
So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. 

         The first ten terms would be:

         1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

Let us list the factors of the first seven triangle numbers:
          1: 1
          3: 1,3
          6: 1,2,3,6
         10: 1,2,5,10
         15: 1,3,5,15
         21: 1,3,7,21
         28: 1,2,4,7,14,28


We can see that 28 is the first triangle number to have over five divisors.

What is the value of the first triangle number to have over five hundred divisors?

=end
list_of_factors= ->x { 1.upto(x).select { |k| (x % k).zero? }}

module T
  def slow_triangle x
    1.upto(x).inject(:+)
  end
  
  
  def self.triangle number # returns a triangular number
    ((number + 1) * number) / 2
  end
  
  def self.how_many_total_factors number  # returns length of array
    top_half = 1.upto(Math.sqrt(number).to_i).select { |k|
      (number % k).zero? }
    if Math.sqrt(number).to_i ** 2 == number
      (top_half.length * 2) - 1
    else
      top_half.length * 2
    end
  end
end

i = 1
current = i

until ( T.how_many_total_factors.T.triangle(current)>= 500 )
  i += 1
end
puts i

# puts list_of_factors.call(90).length
# 
# puts Math.sqrt(90) , "is the square root of 90"


# Math.sqrt()
# Factors of 100:    1,   2,   4,   5,  10
#                  100,  50,  25,  20,  10        # total 9
#
# Factors of  90:    1,   2,   3,   5,   6,  9,
#                   90,  45,  30,  18,  15, 10,   # total 12

# observation.  upper half is always ends at the FLOOR of
# Math.srqt(number)     Math.sqrt(90) = 9.48632

