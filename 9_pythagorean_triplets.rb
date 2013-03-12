=begin
A Pythagorean triplet is a set of three natural numbers, a<b<c, for which,

        a^2 + b^2 = c^2

        There is exactly one triplet in which a + b + c = 1000

=end

solution = []

1.upto(998) do |a|
  a.upto(999) do |b|
    c = 1000 - a - b
    if a**2 + b**2 == c**2
      solution.push(a,b,c)
    end
  end
end
puts solution

1.upto(5) do |a|
  a.upto(5) do |b| 
    p [a, b]
  end
end
