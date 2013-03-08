# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def prime? 
  (self / 2)

end

# 13.prime?  

50.downto(1).map do |x|
  !(50 % x).zero?
end


#
#
#
# scratchpad
#
#
#
# 1, x2, 3, x4, 5, x6, 7, x8, 9, x10, 11, x12, 13, x14, 15,
#   1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
#   1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
# 
#   biggest factors: 2,3,5,7,9




quux = 13195
# upper_boundary = (number / 2).floor
# common = [2,3,5,7]

# factors = (number / 2).floor.downto(2).map do |x|
#   !(x % common).zero?
# end
# 
# factors.first
# 
# upper_boundary.downto(2).map{ |x|
#   common.map{ |c|
#     !(x % c).zero?
#   }
# }
# 
# 50.downto(2).to_a.map do |x| 
#   (x if !(common.map do |prime| 
#     (x if !(x % prime).zero?)))
#     end 
# end.select{ |x| !x.nil? }.first

class Integer
  def alt_prime?
    lower_half = (self/2).floor
    2.upto(lower_half).map { |x|
      (self % x).zero?
    }.none?
  end
end

class Integer
  def prime?
    lower_half = (self/2).floor
    2.upto(lower_half).none? { |x|
      (self % x).zero?
    }
  end
end

1.upto((13195/2).floor).select { |n| n.prime? && (13195%n).zero? }.sort.reverse.first

def euler n
  (1.upto((n/2).floor)).select do |x|
    x.prime? && (n % x).zero?
  end
end.sort.reverse.first

def euler number
  1.upto((number/2).floor).select do |n| n.prime? && (number%n).zero? }.sort.reverse.first
end

def euler number
  1.upto((number/2).floor).select do |n| n.prime? && (number%n).zero? 
  end.sort.reverse.first
end
