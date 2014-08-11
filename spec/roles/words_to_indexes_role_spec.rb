require "rails_helper"

RSpec.describe WordsToIndexesRole, :type => :role do
  it "works" do
    french_dico = Dictionary.new('fr')

    french_dico.play_role(WordsToIndexesRole) do |dico|
      triplet = Triplet.new('abaissera_abaissera_abaissera')
      indexes = dico.search_index(words: triplet)

      expect(indexes).to eq([0, 0, 0])

      triplet = Triplet.new('zythums_zythums_zythums')
      indexes = dico.search_index(words: triplet)

      expect(indexes).to eq([336499, 336499, 336499])

      triplet = Triplet.new('bouyaka_bouyaka_bouyaka')
      indexes = dico.search_index(words: triplet)
      not_found = indexes.include?(WordsToIndexesRole::INDEX_NOT_FOUND)

      expect(not_found).to be(true)
    end
  end
end
