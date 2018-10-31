def coinchanger(money)

  coins = [200, 100, 50, 20, 10, 5, 2, 1]
  change = 0

  coins.each do |coin|
    if money == coin
       return coin
    elsif is_divisible(money, coin)
      change = [coin] * number_of_coins(money, coin)
      return change
    end
  end
  change
end

def is_divisible(money, coin)
  money % coin == 0
end

def number_of_coins(money, coin)
  money / coin
end
