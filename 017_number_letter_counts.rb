=begin
NUMBER LETTER COUNTS
Problem 17
If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are
3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many
letters would be used?

NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23
letters and 115 (one hundred and fifteen) contains 20 letters.
The use of "and" when writing out numbers is in compliance with British usage.
=end

class Integer
  ONES = %w[ zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen ]
  TENS = %w[ zero ten twenty thirty forty fifty sixty seventy eighty ninety ]

  def to_words
    case self
    when 0..19
      ONES[self]
    when 20..99
      tens, ones = self.divmod 10
      "#{TENS[tens]}#{"-#{ones.to_words}" unless ones.zero?}"
    when 100..999
      hundreds, ones = self.divmod 100
      "#{hundreds.to_words} hundred#{" and #{ones.to_words}" unless ones.zero?}"
    when 1000
      "one thousand"
    else
      raise "I can't be bothered to do this for _all_ numbers, you annoying twonk!"
    end
  end
end

1.upto(1000) {|i| puts i.to_words }

num_letters = 1.upto(1000).reduce(0) {|count, i| count + i.to_words.gsub(/[ -]/, '').length }

puts
puts "Number of letters is #{num_letters}"
