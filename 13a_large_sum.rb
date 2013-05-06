stuff = File.open('13_b_text.txt') 

puts stuff.map { |line| line.to_i }.inject(:+).to_s[0..9]


