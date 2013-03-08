def fibs n
  previous, current = 0, 1
  while current < 4e6
    yield current
    previous, current = current, previous + current
  end
end

array = []
fibs { |x| array << x }

# run it, then sum the even values.
# this is a loop
