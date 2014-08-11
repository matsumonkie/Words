# [string] -> [int]
module WordsToIndexesRole

  INDEX_NOT_FOUND = :index_not_found

  def search_index(words: words)
    words.map { |word|
      @words.index(word) || INDEX_NOT_FOUND
    }
  end
end
