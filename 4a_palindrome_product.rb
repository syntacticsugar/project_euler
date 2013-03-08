# Find the largest palindrome made from the product of two 3-digit numbers.
#
# ex) 91 * 99 == 9009
#
#
#     xyz * abc == iopoi


class Integer
  def palindrome?
    self.to_s == self.to_s.reverse
  end

  def is_product? x, y
    self == x * y
  end

#  def three?
#    self.to_s.split("").length == 3
#  end
end


collection = []

999.downto(100) do |x|
  999.downto(100) do |y|
    collection.push(x * y)
    # Hash.new(collection.push(x * y)
  end
end

# collection.find{ |product| product.palindrome? }

collection.sort.reverse.find{ |x| x.palindrome? }
