puts "input size of bits"
bit_size = gets.chomp.to_i

puts "input prefix (e.g. Not)"
prfx = gets.chomp

bit_size.times.each_with_index do |i|
  next puts prfx + "(in=in[#{i}], out=out[#{i}]);" if prfx == "Not"
  next puts prfx + "(a=a[#{i}], b=b[#{i}], sel=sel, out=out[#{i}]);" if prfx == "Mux"
  puts prfx + "(a=a[#{i}], b=b[#{i}], out=out[#{i}]);"
end
