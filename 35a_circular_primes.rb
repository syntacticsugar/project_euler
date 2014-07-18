=begin
The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.

There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

How many circular primes are there below one million?
=end

# A prime number 'p' is divisible only by 1 and itself.
# This means `p % n`, where n is any integer (except 1 or itself)
class Integer
  def prime? # ex.  44.prime? => false
    lower = Math.sqrt(self).floor
    divisor = 2.upto(lower).find do |x|
      (self % x).zero?
    end
    if divisor.nil? && self > 1
      true
    else
      false
    end
  end

  def all_permutations_prime? # takes in an integer, like 73, returns true
    permutations_array = self.to_s.split("").permutation.to_a.map { |x| x.join("") }.map(&:to_i)
    permutations_array.all? { |x| x.prime? }
  end
end

class Array
  def how_many_circular_primes
    #(1...1e6).to_a.filter { |number| number.all_permutations_prime? }.length
    self.find_all { |number| number.all_permutations_prime? }.length
  end
end

(1...100).to_a.how_many_circular_primes
#(1...1e6).to_a.how_many_circular_primes
