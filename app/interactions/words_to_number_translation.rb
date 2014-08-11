class WordsToNumberTranslation
  def initialize(dico, triplet)
    @dico = dico
    @triplet = triplet
  end

  def source
    @triplet.to_s
  end

  def translate
    @dico.play_role(WordsToNumberRole) do |dico|
      indexes = dico.words_to_indexes(words: @triplet)
      #valid_indexes = indexes.all? { |index| index_finder.valid_index?(index) }
      dico.indexes_to_chunk_index(indexes: indexes)
    end
  end
end
