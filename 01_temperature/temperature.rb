def ftoc(fahrenheit)
	celsius = ((fahrenheit - 32) / 1.8).round
end

def ctof(celsius)
	fahrenheit = ((celsius * 1.8) + 32)
end

def temperature
	ftoc(fahrenheit)
	ctof(celsius)
end