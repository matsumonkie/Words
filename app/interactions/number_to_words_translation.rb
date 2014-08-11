class NumberToWordsTranslation
  def initialize(dico, number)
    @dico = dico
    @number = number
  end

  def source
    @number
  end

  def translate
    chunk_index = @dico.play_role(IndexToChunkIndexRole) do |dico|
      dico.search_chunk_index(index: @number)
    end

    @dico.play_role(ChunkIndexToWordsRole) do |dico|
      dico.search_words(chunk_index: chunk_index)
    end
  end
end
