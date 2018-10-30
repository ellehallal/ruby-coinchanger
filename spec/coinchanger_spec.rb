require 'coinchanger'

describe 'coinchanger' do
  it "returns '0' when given 0" do
    expect(coinchanger(0)).to eq '0'
  end
end
