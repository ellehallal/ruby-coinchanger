def coinchanger(money)
  coins = {
    0 => 0,
    1 => 1,
    2 => 2,
    5 => 5,
    10 => 10,
    20 => 20,
    50 => 50,
    100 => 100,
    200 => 200
  }

  coins[money]

  # coins = [200, 100, 50, 20, 10, 5, 2, 1]
  #
  # change = []
  #
  # coins.each do |coin|
  #   while money > coin
  #     if money / coin > 0
  #       #does it fit, remove it from total
  #     end
  #   end
  # end


end


# if you get £1 in change, you will get a £1 coin back,
# if your change is £0.05, you will get a 5p coin back,
# if your change is £2.89, you’ll get 1x £2, 1x 50p,
#   1x20p, 1x10p, 1x5p and 2x2p coins back.
