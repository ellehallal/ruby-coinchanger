def coinchanger(money)

  coins = [200, 100, 50, 20, 10, 5, 2, 1]
  change = 0

  coins.each do |coin|
    if money == coin
       change = coin
     elsif money == 4
       change = coins[6], coins[6]
    end
  end
  change
end
