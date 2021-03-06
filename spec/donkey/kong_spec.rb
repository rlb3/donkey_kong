require_relative '../spec_helper.rb'

describe Donkey::Kong do
  spec_list = [
               [1, 1],
               [2, 2],
               [3, "Donkey"],
               [4, 4],
               [5, "Kong"],
               [6, "Donkey"],
               [7, 7],
               [8, 8],
               [9, "Donkey"],
               [15, "DonkeyKong"],
               [20, "Kong"],
               [30, "DonkeyKong"],
               [45, "DonkeyKong"],
               [50, "Kong"],
               [70, "Kong"],
               [75, "DonkeyKong"],
               [90, "DonkeyKong"],
               [100, "Kong"],
              ]
  spec_list.each do |test_set|
    it "#{test_set[0]} should be #{test_set[1]}" do
      expect(Donkey::Kong.convert(test_set[0])).to eq(test_set[1])
    end
  end

  it 'non-numbers cause a NotANumber exception' do
    expect { Donkey::Kong.convert("fifteen") }.to raise_error(NotANumber)
  end

end
