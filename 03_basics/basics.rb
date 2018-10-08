def who_is_bigger(a, b, c)
	if a == nil || c == nil
		return("nil detected")
	elsif a > b && a > c
		return ("a is bigger")
	elsif b > a && b > c
		return ("b is bigger")
	elsif c > a && c > b
		return ("c is bigger")
	else
		return ("nil detected")
	end
end

def reverse_upcase_noLTA(string)
	string.reverse.upcase.delete ('L' 'T' 'A')
end

def array_42(array)
	array.include?(42)
end

def magic_array(array)
	array.flatten.delete_if{|i| (i % 3) == 0}.map{|i| i * 2}.uniq.sort
end