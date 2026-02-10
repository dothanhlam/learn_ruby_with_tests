class TextCompressor
  attr_reader :unique, :index

  def initialize
    @unique = []
    @index = []
  end

  def compress(text)
    words = text.split(' ')
    words.each do |word|
      i = unique_index_of(word)
      if i
        @index << i
      else
        add_unique_word(word)
      end
    end
  end

  def unique_index_of(word)
    @unique.index(word)
  end

  def add_unique_word(word)
    @unique << word
    @index << @unique.size - 1
  end
end