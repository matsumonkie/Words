require "rails_helper"

RSpec.describe Triplet, :type => :model do
  it "works" do
    triplet = Triplet.new('aaa_bbb_ccc')
    double = Triplet.new('aaa_bbb')
    empty_triplet = Triplet.new('')
    too_many_tuple = Triplet.new('test_test_test_test_')

    expect(triplet.to_s).to        eq(['aaa', 'bbb', 'ccc'])
    expect(double.to_s).to         eq(['aaa', 'bbb', ''])
    expect(empty_triplet.to_s).to  eq(['', '', ''])
    expect(too_many_tuple.to_s).to eq(['test', 'test', 'test'])
  end
end
