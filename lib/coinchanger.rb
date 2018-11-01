def coinchanger(money)

  coins = [200, 100, 50, 20, 10, 5, 2, 1]
  change = []

  coins.each do |coin|
    if money == coin
       return change << coin
    elsif !is_divisible(money, coin)
      while money >= coin
          change << coin
          money -= coin
      end
    elsif is_divisible(money, coin)
      number_of_coins(money, coin).times do
        change << coin
        money -= coin
      end
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
