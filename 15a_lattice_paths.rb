=begin
Starting in the top left corner of a 22 grid, and only being 
able to move to the right and down, there are exactly 6 routes 
to the bottom right corner.

How many such routes are there through a 2020 grid?

=end

def recursive_factorial n
  if n < 2
    1
  else
    n * factorial(n-1)
  end
end

class Integer
  def factorial
    1.upto(self).inject :*
  end
end

6.factorial


p 40.factorial / (20.factorial)**2
