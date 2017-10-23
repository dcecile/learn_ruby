class Book
  def title=(title)
    @title = titleize(title)
  end

  def title
    @title
  end

  def titleize(text)
    little_words = %w(and over the in of a an)
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
end
