=begin
three hundred and forty-two
=end

ones_array = %w[ one two three four five six seven eight nine ]
ten = %w[ ten ]
teens_array = %w[ eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen ]
tens_array = %w[ ten twenty thirty forty fifty sixty seventy ]
hundreds_array = ones_array.map { |x| x + "-hundred" }

# hm, shouldn't I make a hash of sorts though?

1.upto(1000).map { |x| }.inject:+

class Integer
  ONES = %w[ zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen ]
  TENS = %w[ zero ten twenty thirty forty fifty sixty seventy eighty ninety ]

  def to_words
    case self
    when 0..19
      ONES[self]
    when 20..99
      tens = self.divmod 10
      ones = self.divmod 10
      "#{TENS[tens]}#{"-#{ones.to_words}" unless ones.zero?}"
    when 100..999
      hundreds = self.divmod 100
      ones = self.divmod 100
  end
end


$alpha = Hash[(1..20).zip(
%w| one two three four five six seven eight nine ten eleven twelve thirteen
fourteen fifteen sixteen seventeen eighteen nineteen twenty |
)].merge({
  30 => "thirty",
  40 => "fourty",
  50 => "fifty",
  60 => "sixty",
  70 => "seventy",
  80 => "eighty",
  90 => "ninety",
  100 => "hundred",
  1000 => "thousand",
  :& => "and",
})
