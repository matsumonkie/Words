class WordsToNumberTranslation
  def initialize(dico, triplet)
    @dico = dico
    @triplet = triplet
  end

  def source
    @triplet.to_s
  end

  def translate
    indexes = @dico.play_role(WordsToIndexesRole) do |dico|
      dico.search_index(words: @triplet)
    end

    #valid_indexes = indexes.all? { |index| index_finder.valid_index?(index) }

    @dico.play_role(IndexesToChunkIndexRole) do |dico|
      dico.search_chunk_index(indexes: indexes)
    end
  end
end
