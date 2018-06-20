def gcd(a,b)
	if b == 0 
		return a
	else
		a1 = b/a
		return gcd(b,a1)
	end
end

puts gcd(357, 234)
