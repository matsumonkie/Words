# (int) -> int
module IndexToChunkIndexRole
  def search_chunk_index(index: index)
    nb_combinations = length() ** ::TUPLE_SIZE
    nb_chunk = nb_combinations / ::CHUNK_SIZE

    index_in_chunk = index / ::CHUNK_SIZE
    element_in_chunk = index.modulo(::CHUNK_SIZE)
    chunk = element_in_chunk * nb_chunk
    chunk + index_in_chunk
  end
end
