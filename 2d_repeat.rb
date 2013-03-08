# Each new term in the Fibonacci sequence is generated 
# by adding the previous two terms. By starting with 1 and 2, 
# the first 10 terms will be:
#
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
# By considering the terms in the Fibonacci sequence whose values
# do not exceed four million, find the sum of the even-valued terms.

def fib x
  if x < 2
    x
  else
    fib(x-1) + fib(x-2)
  end
end


# fibbb[4] = 10... or (1,2,3,4)
# 4 + (4-1) + (4-2) + (4-3)
# n + (n-1) + (n-2) + (n-3)a...
(1..10).map do |x|
  fib(x)
end

(1..33).map { |x| fib x }.select {|x| (x % 2).zero? }.inject(:+)
# 4613732
