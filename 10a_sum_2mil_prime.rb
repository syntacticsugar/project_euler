=begin

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.

=end 
require_relative './_witches_brew_of_primes'
seeds = [2,3]

# (1...2e6).each do 
# end.inject(:+)

puts Primes.primes_until(2e6).inject(:+)
