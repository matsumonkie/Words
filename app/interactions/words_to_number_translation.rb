class WordsToNumberTranslation
  def initialize(dico, triplet)
    @dico = dico
    @triplet = triplet
  end

  def source
    @triplet
  end

  def translate
    @dico.play_role(WordsToNumberRole) do |dico|
      indexes = dico.words_to_indexes(words: @triplet)
      if dico.words_present?(indexes)
        dico.indexes_to_chunk_index(indexes: indexes)
      else
        :invalid_words
      end
    end
  end
end
