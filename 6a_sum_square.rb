=begin
The sum of the squares of the first ten natural numbers is,

  1**2 + 2**2 + ... + 102 = 385
The square of the sum of the first ten natural numbers is,

  (1 + 2 + ... + 10)**2 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.

  Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
=end


sum_of_squares =  1.upto(10).map { |x| x ** 2 }.inject(:+)
puts sum_of_squares

square_of_sums = 1.upto(10).map.inject(:+)**2
puts square_of_sums

summm = ->(x) { 1.upto(x).map { |y| y ** 2 }.inject(:+) }
puts summm[10]
sqqquare = ->(x) { 1.upto(x).map.inject(:+)**2 }
puts sqqquare[10]

STARS = "*"*40
puts STARS, "\n\n\n\nKiller Bambi thinks the answer is:" 
start = Time.now
puts sqqquare[100] - summm[100] , "\n\n\n\n", STARS

puts "The answer took #{Time.now - start} seconds to solve."
