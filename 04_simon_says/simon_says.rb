#write your code here
def echo(string)
  "#{string}"
  "#{string}"
end

def shout(string)
  "#{string.upcase}"
end

def repeat(string, times = 2)
  string = (string + " ")
  string = (string * times).chop
end

def start_of_word(string, characters)
  string = string.split(//).first(characters).join
end

def first_word(string)
  string.split.first
end

def titleize(string)
  string.split.map(&:capitalize).join(' ')
end
