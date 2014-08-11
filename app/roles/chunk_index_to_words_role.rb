# (int) -> [string]
module ChunkIndexToWordsRole

  def search_words(chunk_index: chunk_index)
    nb_combinations_max = length() ** ::TUPLE_SIZE
    if chunk_index >= nb_combinations_max
      :index_too_high
    else
      indexes = find_indexes(chunk_index)
      indexes.map { |index| find_word(chunk_index) }
    end
  end

  # find each tuple index
  # eg:
  # given 0
  # return [0, 0, 0]
  def find_indexes(remainder, which_tuple = 0)
    if which_tuple < ::TUPLE_SIZE
      cur_tuple_power = ::TUPLE_SIZE - which_tuple - 1
      res = remainder / (length() ** cur_tuple_power)
      remainder = remainder - res * (length() ** cur_tuple_power)
      [res] + find_indexes(remainder, which_tuple + 1)
    else
      []
    end
  end

  def find_word(index)
    self[index]
  end
end
