# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

class Primes
  class << self
    def collection
      @@collection ||= [2,3]
    end
    def prime? number
      collection.each do |k|
        if (n % k).zero?
          false
        end
        if x**2 > number
          true
        end
      end
    end
    def next_prime!
      n = collection.last + 2
      n += 2 until prime? n
      collection << n
    end
  end
end

# 600851475143

def euler number
  (1.upto(Math.sqrt number)to_i).select do |x|

  end
end
