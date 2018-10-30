def coinchanger(money)

  coins = [200, 100, 50, 20, 10, 5, 2, 1]

  coins.each do |coin|
    if coin == money
      return money
    end
  end
end
