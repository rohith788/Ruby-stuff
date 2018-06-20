

def check(arr)
		if (arr	 =~  /\A[\w]+[\w\.\-]+@[a-z\d]+(\.[a-z]+)*\.[a-z]+/i)
		 	puts "Valid"
		else
			puts "Invalid"
		end	
end
puts "Type in the email"
arr = gets.chomp

check(arr)