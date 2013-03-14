# What is the 10,001 prime number?
# SEEDS = [2,3]
# this is taken from 7c_raul.rb

class Primes
  class << self
    def collection
      @@collection ||= [2, 3]
    end

    def prime? (number)
      collection.each do |x|
        if (number % x).zero?
          return false
        end
        if x**2 > number
          return true
        end
      end
    end

    def next_prime!
      n = collection.last + 2
      n += 2 until prime? n
      collection << n
    end

    def nth(n)
      find_up_to! n
      collection[n - 1]
    end

    # this is not used in this particular Euler problem
    def primes_until n
      next_prime! until collection.last >= n
      collection.take_while { |pr| pr < n }
    end

    # this is not used in this particular Euler problem
    def take n
      find_up_to! n
      collection[0...n]
    end

    def find_up_to!(n)
      next_prime! while collection.length <= (n - 1)
    end
  end
end

