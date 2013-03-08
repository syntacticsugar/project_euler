# Find the largest palindrome made from the product of two 3-digit numbers

class Integer
  def palindrome?
    self.to_s == self.to_s.reverse
  end
end

puts 404.palindrome?, 24942.palindrome?, 35530.palindrome?

collection = []

999.downto(900).map { |x|
  999.downto(900).map { |y|
    collection << (x * y)
  }
}

puts collection.find_all { |x|
  x.palindrome? }.sort.reverse.first
