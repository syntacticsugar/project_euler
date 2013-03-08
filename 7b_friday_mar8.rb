# What is the 10,001 prime number?
#
#
#
#
#
 
# SEEDS = [2,3]

@collection ||= [2, 3]

def prime? (number)
  @collection.each do |x|
    if (number % x).zero?
      return false
    end
    if x**2 > number
      @collection << number
      return true
    end
  end
end

n = 4

while @collection.length < 10001
  prime? n
  n += 1
end

puts @collection.last
