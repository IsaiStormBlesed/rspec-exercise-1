def hipsterfy(word)
  vowels = 'aeiou'
  newWord = ''
  
  i=word.length - 1
  while i > 0
    if vowels.include?(word[i])
      word[i] = ''
      return word
    end
    i -= 1
  end

  return word
end


def vowel_counts(str)
  vowels = 'aeiou'
  hash = Hash.new(0)

  str.downcase.each_char do |char|
    if vowels.include?(char)
      hash[char] += 1
    end
  end

  return hash
end

def caesar_cipher(msg, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  encrypted = ''

  msg.each_char do |char|
    if alphabet.include?(char)
      old_idx = alphabet.index(char)
      new_idx = old_idx + num
      new_char = alphabet[new_idx % 26]
  
      encrypted += new_char
    else
      encrypted += char
    end
  end

  return encrypted
end

p caesar_cipher('123 _-!?@%', 3)