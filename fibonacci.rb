puts "Enter the position of the term:"
number = gets.chomp().to_i
num = [ 0 , 1 ]
if  number <= 1 
	puts 1	
else (2..number).each do |i|
	num [i] = num [i-1] + num[i-2]
	end
end
puts "The fibonacci term is #{num[number]}"
