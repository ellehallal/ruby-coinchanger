def coinchanger(money)

  coins = [200, 100, 50, 20, 10, 5, 2, 1]
  change = 0
  half = money / 2
  remain = money % 2

  coins.each do |coin|
    if money == coin
       return coin
     elsif remain == 0 && half == coin
       change = half, half
    end
  end
  change
end
