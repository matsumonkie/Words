require "rails_helper"

RSpec.describe WordsToNumberRole, :type => :role do
  it "works" do
    french_dico = Dictionary.new('fr')

    french_dico.play_role(WordsToNumberRole) do |dico|
      triplet = Triplet.new('abaissera_abaissera_abaissera')
      indexes = dico.words_to_indexes(words: triplet)

      expect(indexes).to eq([0, 0, 0])

      triplet = Triplet.new('zythums_zythums_zythums')
      indexes = dico.words_to_indexes(words: triplet)

      expect(indexes).to eq([336499, 336499, 336499])

      triplet = Triplet.new('bouyaka_bouyaka_bouyaka')
      indexes = dico.words_to_indexes(words: triplet)
      not_found = indexes.include?(WordsToNumberRole::INDEX_NOT_FOUND)

      expect(not_found).to be(true)
    end
  end
end
