def translate(text)
  text
    .split(' ')
    .map do |word|
      retain_punctuation(word, method(:translate_word))
    end
    .join(' ')
end

def retain_punctuation(word, transform)
  word.sub(/^(.*?)([.,?!])?$/) do
    "#{transform.call($1)}#{$2}"
  end
end

def translate_word(word)
  original_prefix = find_prefix(word)
  new_prefix = remove_prefix(word, original_prefix)
  new_suffix = translate_prefix(original_prefix)
  "#{new_prefix}#{new_suffix}y"
end

def find_prefix(text)
  text[/^(qu|.)*?[aeoiu]/i]
end

def translate_prefix(prefix)
  prefix.sub(/.$/, 'a').downcase
end

def remove_prefix(text, prefix)
  removed = text[(prefix.length - 1)..-1]
  capitalize = prefix[0].match(/[A-Z]/)
  if capitalize
    removed.capitalize
  else
    removed
  end
end
