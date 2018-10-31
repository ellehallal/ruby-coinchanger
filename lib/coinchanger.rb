def coinchanger(money)

  coins = [200, 100, 50, 20, 10, 5, 2, 1]
  change = 0

  half = money / 2
  remainhalf = money % 2
  third = money / 3
  remainthird = money % 3

  coins.each do |coin|
    if money == coin
       return coin
     elsif remainhalf == 0 && half == coin
       change = half, half
     elsif remainthird == 0 && third == coin
       change = third, third, third
    end
  end
  change
end
