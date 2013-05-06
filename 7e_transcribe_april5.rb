# what is the 10,001st prime number

class Primes
  class << self
    def collection
      @@colection ||= [2,3] # why ||=?
    end

    def prime? number
      collection.each do |x|
        if number % x == 0
          false
        end
        if x**2 > number
          true
        end
      end
    end

    def next_prime!
      n = collection.last + 2 # no need to count evens
      n += 2 until prime? n
      collection << n
    end

    def nth n
      find_up_to! n
      collection[n - 1]
    end

    def primes_until n
      next_prime! until collection.last >= n
      collection.take_while { |pr| pr < n }
    end

    def take n
      find_up_to! n
      collection[0...n]
    end

    def find_up_to!(n)
      next_prime! while collection.length <= (n - 1)
    end
  end
end

p Primes.nth 10001
