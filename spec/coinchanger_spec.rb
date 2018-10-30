require 'coinchanger'

describe 'coinchanger' do
  it "returns '0' when given 0" do
    expect(coinchanger(0)).to eq '0'
  end

  it "returns '1' when given 1" do
    expect(coinchanger(1)).to eq '1'
  end

  it "returns '2' when given 2" do
    expect(coinchanger(2)).to eq '2'
  end

  it "returns '5' when given 5" do
    expect(coinchanger(5)).to eq '5'
  end

  it "returns '10' when given 10" do
    expect(coinchanger(10)).to eq '10'
  end

  it "returns '20' when given 20" do
    expect(coinchanger(20)).to eq '20'
  end

  it "returns '50' when given 50" do
    expect(coinchanger(50)).to eq '50'
  end

  it "returns '100' when given 100" do
    expect(coinchanger(100)).to eq '100'
  end



end
