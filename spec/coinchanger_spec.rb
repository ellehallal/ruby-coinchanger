require 'coinchanger'

describe 'coinchanger' do
  [200, 100, 50, 20, 10, 5, 2, 1].each do |coin|
    it "returns coin when given coin" do
      expect(coinchanger(coin)).to eq coin
    end
  end

  # it "returns [2, 2] when given 4" do
  #   expect(coinchanger(4)).to eq [2, 2]
  # end

end
