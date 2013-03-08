# stuff i coded for fun :D
class Integer
  def prime?
    lower = (self/2).floor
    2.upto(lower).none? { |x|
      (self % x).zero?
    }
  end
  def even?
    self % 2 == 0
  end
  def odd?
    !even
  end
end
# puts 1.prime?

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?
#
#
# ewwwww!!!!  this problem looks hard!!!!
#
# okay, all the following tests pass
# puts 10.odd?
# puts "13.  #{13.prime?}"
# puts "3.  #{3.prime?}"
# puts "18.  #{18.prime?}"

FOREVER = (1/0.0)



