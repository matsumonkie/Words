require "rails_helper"

RSpec.describe Dictionary, :type => :model do
  it "works" do
    french_dico   = Dictionary.new('fr')
    japanese_dico = Dictionary.new('en')
    unknown_dico  = Dictionary.new('')

    expect(french_dico.length).to   eq(336_500)
    expect(japanese_dico.length).to eq(0)
    expect(unknown_dico.length).to  eq(0)
  end
end
