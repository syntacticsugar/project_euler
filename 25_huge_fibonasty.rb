# What is the first term in the Fibonacci sequence to contain 1000 digits?
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144
require 'ostruct'

class Integer
  def thousand_digits?
    self.to_s.split("").length == 1000
  end
  def four_digits?
    self.to_s.split("").length == 4
  end

  def meth amphetamine
  end
end

class FibonacciFinder
  Infinity = 1.0/0

  def initialize()
    @result = Hash.new {}
  end

  def fibo_really_nasty n
    if @result.has_key? n
      @result[n]
    elsif n < 2
      @result[n] = n
    else
      @result[n] = fibo_really_nasty(n - 1) + fibo_really_nasty(n - 2)
    end
  end

 # def fibonasty n

 #  def start_fibonasty(boolean)
 #    xanadu = 1.upto(Infinity) do |n|
 #      until n.boolean
 #        fibonasty n
 #      end
 #    end
 #    return n
 #  end
end


SparklyFairy = Struct.new :name, :color, :wingspan, :age, :occupation

puts 4000.four_digits?
puts 1000.four_digits?

raul = FibonacciFinder.new

puts raul.fibo_really_nasty 17

i = 0
until raul.fibo_really_nasty(i).thousand_digits?
  i = i + 1
end

puts "our answer is " + i.to_s


# puts f.fibo_really_nasty 6
# start_fibonasty(four_digits?)
# start_fibonasty(four_digits?)
