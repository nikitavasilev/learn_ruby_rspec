def add(i, j)
	result = i + j
end

def subtract(i, j)
	result = i - j	
end

def sum(array)
	array = array.sum
end

def multiply(i, j)
	result = i * j
end

def power(i, j)
	result = i ** j
end

def factorial(n)
  if n == 0
    return 1
  else
    n * factorial(n - 1)
  end
end