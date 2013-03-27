# Largest palindrome made from the product of two 3-digit nuumbers?
# ex) 91 * 99 == 9009


class Integer
  def palindrome?
    # self.to_s == self.to_s.reverse
    to_s == to_s.reverse
  end
end

collection = []

999.downto(100) do |x|
  999.downto(100) do |y|
    collection.push(x * y)
  end
end

puts collection.sort.reverse.find { |x| x.palindrome? }



