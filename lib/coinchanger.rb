def coinchanger(money)
  coins = [200, 100, 50, 20, 10, 5, 2, 1]
  change = []
  coins.each do |coin|
    while money >= coin
      change << coin
      money -= coin
    end
  end
  
  change
end
