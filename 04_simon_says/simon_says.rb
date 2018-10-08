def echo(string)
  string
end

def shout(string)
  string.upcase
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
  little_words = %w{the and} #Used for single-quoted array elements
  string.split.each_with_index.map{|word, index| little_words.include?(word) && index > 0 ? word : word.capitalize}.join(" ")
  #string.split.map(&:capitalize).join(' ')
end