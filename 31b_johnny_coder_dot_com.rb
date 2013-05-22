timer_start = Time.now
 
def pence(i)
  1
end
 
def two_pence(i)
  i >= 0 ? two_pence(i-2) + pence(i) : 0
end
 
def five_pence(i)
  i >= 0 ? five_pence(i-5) + two_pence(i) : 0
end
 
def ten_pence(i)
  i >= 0 ? ten_pence(i-10) + five_pence(i) : 0
end
 
def twenty_pence(i)
  i >= 0 ? twenty_pence(i-20) + ten_pence(i) : 0
end
 
def fifty_pence(i)
  i >= 0 ? fifty_pence(i-50) + twenty_pence(i) : 0
end
 
def pound(i)
  i >= 0 ? pound(i-100) + fifty_pence(i) : 0
end
 
def two_pound(i)
  i >= 0 ? two_pound(i-200) + pound(i) : 0
end
 
puts two_pound(200)
 
puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"
 

