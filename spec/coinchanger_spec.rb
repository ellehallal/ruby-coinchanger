require 'coinchanger'

describe 'coinchanger' do
  [200, 100, 50, 20, 10, 5, 2, 1].each do |coin|
    it "returns coin when given coin" do
      expect(coinchanger(coin)).to eq [coin]
    end
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

  it "returns [200, 200, 100] if money equals 500" do
    expect(coinchanger(500)).to eq [200, 200, 100]
  end

  it "returns [200, 200, 200, 200, 200, 200, 200, 100] if money equals 1500" do
    expect(coinchanger(1500)).to eq [200, 200, 200, 200, 200, 200, 200, 100]
  end

  it "returns [200, 50, 10] if money equals 260" do
    expect(coinchanger(260)).to eq [200, 50, 10]
  end

  it "returns [200, 200, 50, 10] if money equals 460" do
    expect(coinchanger(460)).to eq [200, 200, 50, 10]
  end

  it "returns [100, 50, 5, 2] if money equals 157" do
    expect(coinchanger(157)).to eq [100, 50, 5, 2]
  end

  it "returns [100, 50, 20, 10, 5, 2, 2] if money equals 189" do
    expect(coinchanger(189)).to eq [100, 50, 20, 10, 5, 2, 2]
  end

  it "returns [200, 200, 200, 100, 50, 20, 20, 1] if money equals 781" do
    expect(coinchanger(791)).to eq [200, 200, 200, 100, 50, 20, 20, 1]
  end

  it "returns [200, 200, 200, 200, 200, 200, 200, 200, 100, 50, 20, 10, 2] if money equals 1782" do
    expect(coinchanger(1782)).to eq [200, 200, 200, 200, 200, 200, 200, 200, 100, 50, 20, 10, 2]
  end
end
