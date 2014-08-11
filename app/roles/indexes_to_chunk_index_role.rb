# [int] -> int
module IndexesToChunkIndexRole

  def search_chunk_index(indexes: indexes)
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
