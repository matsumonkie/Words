class NumberToWordsTranslation
  def initialize(dico, number)
    @dico = dico
    @number = number
  end

  def source
    @number
  end

  def translate
    @dico.play_role(NumberToWordsRole) do |dico|
      if dico.number_valid?(@number)
        chunk_index = dico.index_to_chunk_index(index: @number)
        dico.chunk_index_to_words(chunk_index: chunk_index)
      else
        :invalid_number
      end
    end
  end
end
