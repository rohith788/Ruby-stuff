puts "Enter the size"
a = gets.chomp.to_i
#for i in 0..a do
#  puts "Enter element #{i}"
  b = gets.split(" ").map(&:to_i)
#end

index1 = 0

(0..a).each do |i|
  if (b[i].to_i > b[index1].to_i)
    index1 = i
  end

end

index2 = 0

(0..a).each do |i|
  if b[i].to_i > b[index2].to_i && i.to_i != index1.to_i
    index2 = i
  end
end

puts "#{b[index1]*b[index2]}"
