require 'coinchanger'

describe 'coinchanger' do
  [200, 100, 50, 20, 10, 5, 2, 1].each do |coin|
    it "returns coin when given coin" do
      expect(coinchanger(coin)).to eq coin
    end
  end

  it "returns 0 when given 3" do
    expect(coinchanger(3)).to eq 0
  end

  (201..251).each do |coin|
    it "returns 0 when given a number which is not in the coin array" do
      expect(coinchanger(coin)).to eq 0
    end
  end

  it "returns [2, 2] when given 4" do
    expect(coinchanger(4)).to eq [2, 2]
  end

end
