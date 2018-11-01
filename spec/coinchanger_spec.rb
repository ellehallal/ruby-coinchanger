require 'coinchanger'

describe 'coinchanger' do
  [200, 100, 50, 20, 10, 5, 2, 1].each do |coin|
    it "returns coin when given coin" do
      expect(coinchanger(coin)).to eq [coin]
    end
    #
    # it "returns 3 equal coins when given money, if divisible by 3" do
    #   expect(coinchanger(coin * 3)).to eq [coin] * 3
    # end
  end

  [200, 20, 2].each do |coin|
    it "returns 2 equal coins when given money, if divisible by 2" do
      expect(coinchanger(coin * 2)).to eq [coin] * 2
    end
  end

  it 'returns 5 x 200 coins if money equals 1000' do
    expect(coinchanger(1000)).to eq [200, 200, 200, 200, 200]
  end

  it "returns [200, 100] if money equals 300" do
    expect(coinchanger(300)).to eq [200, 100]
  end

  it "returns [200, 50] if money equals 250" do
    expect(coinchanger(250)).to eq [200, 50]
  end




end
