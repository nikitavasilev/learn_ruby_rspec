def who_is_bigger(a,b,c)

	if c == nil 
	return ("nil detected")

	elsif a == nil
	return ("nil detected")  
	
	elsif a > b && a > c	
	return ("a is bigger") 

	elsif b > a && b > c 
	return ("b is bigger")

	else
	return("c is bigger")
		
	end
end


def reverse_upcase_noLTA(string)

	return string.reverse.upcase.delete("T").delete("L").delete("A")
end

puts reverse_upcase_noLTA("je vous souhaite la bienvenue") #Test de la méthode reverse_upcase_noLTA

def array_42(array)

	array.include?42
end

def magic_array(array)

return array.flatten.delete_if{|i| i%3==0}.map{ |i| i * 2  }.uniq.sort

end

print magic_array([5,6,54648787,2467,745,87,[97],99])



