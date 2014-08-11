module WordsToNumberRole

  INDEX_NOT_FOUND = :index_not_found

  # [string] -> [int]
  def words_to_indexes(words: words)
    words.map { |word|
      @words.index(word) || INDEX_NOT_FOUND
    }
  end

  # [int] -> int
  def indexes_to_chunk_index(indexes: indexes)
    indexes
      .reverse_each
      .each_with_index
      .inject(0) { |acc, (elem, index)|
        acc + word_value_for_column(elem, index)
      }
  end

  def word_value_for_column(index, column)
    index * length() ** column
  end

end
