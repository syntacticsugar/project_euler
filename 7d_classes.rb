# What is the 10,001st prime number?
# seeds = [2,3]

class Primes
  class << self
    def collection
      @collection ||= [2,3] # why specifically or/equals
    end

    def prime? (number)
      collection.each do |x|
        if (number % x).zero?
          false
        end
        if x ** 2 > number
          true
        end
      end
    end

    def next_prime!
      n = collection[-1] + 2
      n += 2 until prime? n
      collection << n
    end

    def nth(n)
      find_up_to! n
      collection[n - 1]
    end

    def primes_until n
      next_prime! until collection[-1] >= n
      collection.take_while { |pr| pr < n }
    end

    def take n
      find_up_to! n
      collection[0...n]
    end

    def find_up_to (N)
      next_prime! while collection.length <= (n - 1)
    end
  end
end



