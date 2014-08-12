class Triplet
  include Enumerable

  def initialize(words)
    @words = words.split('_').take(3)
    if @words.size != 3
      stub_elems = [''] * (3 - @words.length)
      @words.concat(stub_elems)
    end
  end

  def each(&block)
    @words.each(&block)
  end

  def as_json(options)
    @words
  end
end
