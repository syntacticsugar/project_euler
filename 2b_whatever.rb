# Each new term in the Fibonacci sequence is generated 
# by adding the previous two terms. By starting with 1 and 2, 
# the first 10 terms will be:
#
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
# By considering the terms in the Fibonacci sequence whose values
# do not exceed four million, find the sum of the even-valued terms.

four_mil = 4000000

#fibonacci = ->(first, next) {}

# (1...four_mil).select{ |x| fibonacci[x] }.select{ |x| evenz[x] }.inject(:+)

evenz = ->(n) { (n % 2).zero? }

def recur n
  if n < 2
    n
  else
    recur(n - 1) + recur(n - 2)
  end
end

$red = "red"
$one = 1

(1..10).map do |x|
  recur(x)
end

# (1..33).map { |x| recur x }.select{ |x| (x % 2).zero? }.inject(:+)

def fibonasty(n)
  sequence = []
  (0..n).each do |n|
    if n < 2
      sequence << n
    else
      sequence << sequence[-1] + sequence[-2]
    end
  end
  sequence.last
end
#
# def fib n
#   collection = []
#   if n < 2
#     collection.push(n)
#   else
#     collection.push(fib(n - 1) + fib(n - 2))
#   end
# end

 
# puts fibonacci(6) # => 8
