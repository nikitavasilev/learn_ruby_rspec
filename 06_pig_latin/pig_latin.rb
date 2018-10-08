def translate(s)
  alpha = ("a".."z").to_a
  vowels = %w[a e i o u]
  consonants = alpha - vowels
  if vowels.include?(s[0])
    s + "ay"
  elsif consonants.include?(s[0]) && consonants.include?(s[1])
    s[2..-1] + s[0..1] + "ay"
  elsif consonants.include?(s[0])
    s[1..-1] + s[0] + "ay"
  end
end

# Les deux methodes suivantes passent tous les tests, mais par honneteté je les ai laissés en commentaire car je ne les comprennais pas entieremment
# Je les ai laissés en commentaire pour pouvoir y revenir dessus pour essayer de comprendre comment elles étaient foutues

=begin
def translate(sent)
    sent = sent.downcase
    vowels = ['a', 'e', 'i', 'o', 'u']
    words = sent.split(' ')
    result = []

words.each_with_index do |word, i|
    translation = ''
    qu = false
    if vowels.include? word[0]
        translation = word + 'ay'
        result.push(translation)
    else
        word = word.split('')
        count = 0
        word.each_with_index do |char, index|
            if vowels.include? char
                # handle words that start with 'qu'
                if char == 'u' and translation[-1] == 'q'
                    qu = true
                    translation = words[i][count + 1..words[i].length] + translation + 'uay'
                    result.push(translation)
                    next
                end
                break
            else
                # handle words with 'qu' in middle
                if char == 'q' and word[i+1] == 'u'
                    qu = true
                    translation = words[i][count + 2..words[i].length] + 'quay'
                    result.push(translation)
                    next
                else
                    translation += char
                end
                count += 1
            end
        end
        # translation of consonant words without qu
        if not qu
            translation = words[i][count..words[i].length] + translation + 'ay'
            result.push(translation)
        end
    end

end
result.join(' ')
end
=end

=begin
def translate (string)
    vowels = %w{a e i o u}
    string.gsub(/(\A|\s)\w+/) do |str|
            str.strip!
        while not vowels.include? str[0] or (str[0] == 'u' and str[-1] == 'q')
            str += str[0]
            str = str[1..-1]
        end
        str  = ' ' + str + 'ay'
    end.strip
end
=end