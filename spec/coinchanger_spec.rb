require 'coinchanger'

describe 'coinchanger' do
  [200, 100, 50, 20, 10, 5, 2, 1].each do |coin|
    it "returns coin when given coin" do
      expect(coinchanger(coin)).to eq coin
    end

    it "returns 3 equal coins when given money, if divisible by 3" do
      expect(coinchanger(coin * 3)).to eq [coin] * 3
    end

  end

  [200, 20, 2].each do |coin|
    it "returns 2 equal coins when given money, if divisible by 2" do
      expect(coinchanger(coin * 2)).to eq [coin] * 2
    end
  end


  (201..251).each do |coin|
    it "returns 0 when given a number which is not in the coin array" do
      expect(coinchanger(coin)).to eq 0
    end
  end

  it "returns [2, 2] when given 4" do
    expect(coinchanger(4)).to eq [2, 2]
  end

  it "returns [20, 20] when given 40" do
    expect(coinchanger(40)).to eq [20, 20]
  end


end
