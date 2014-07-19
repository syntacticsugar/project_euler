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

  # "197"
  def rotations # ex 197.rotations = [197, 971, 719]
    array = self.to_s.split("") # ['1','9','7']
    stop = array.length

    results = []
    (1..stop).each do
      head = array.shift # string ''
      array.push (head)
      results.push(array.join.to_i)
      #results.push(array) # repeated references to the same `array`
    end
    #results.map(&:join)
    results
  end

  def circular_prime? #returns 'true' if integer is a circular prime, else 'false'
    self.rotations.all?(&:prime?)
  end
end

p 1.upto(1e6).select(&:circular_prime?).size
