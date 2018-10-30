def coinchanger(money)

  coins = [200, 100, 50, 20, 10, 5, 2, 1]

  coins.each do |coin|
    if money == coin
      return coin
    elsif money == 3
      return "not a coin"
    end
  end
end
