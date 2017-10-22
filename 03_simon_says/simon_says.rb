def echo(text)
  text
end

def shout(text)
  text.upcase
end

def repeat(text, times=2)
  ([text] * times).join(' ')
end

def start_of_word(text, length)
  text[0..(length - 1)]
end

def first_word(text)
  text.split(' ').first
end

def titleize(text)
  little_words = ['and', 'over', 'the']
  text
    .split(' ')
    .each_with_index
    .map do |word, i|
      if i == 0 || !little_words.member?(word)
        word.capitalize
      else
        word
      end
    end
    .join(' ')
end
