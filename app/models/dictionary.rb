class Dictionary
  include Role

  def initialize(language)
    filename = filename(language)
    if language_exists?(filename)
      words = read_words(filename)
      @words = Array(words)
    else
      @words = []
    end
  end

  def length
    @words.size
  end

  def [](index)
    @words[index]
  end

  private

  def language_exists?(filename)
    File.file?(filename)
  end

  def filename(language)
    File.join('db', "#{language}.txt")
  end

  def read_words(filename)
    File.open(filename).read.split("\n")
  end
end
