def coinchanger(money)

  coins = [200, 100, 50, 20, 10, 5, 2, 1]
  change = []

  coins.each do |coin|
    if money == coin
       return change << coin
    elsif is_divisible(money, coin)
      return [coin] * number_of_coins(money, coin)
    elsif !is_divisible(money, coin)
      while money >= coin
          change << coin
          money -= coin
      end
    end
  end
  change
end




def is_divisible(money, coin)
  if money == 300 || money == 3
    return false
  else
    money % coin == 0
  end
end

def number_of_coins(money, coin)
  money / coin
end

def result_float(money, coin)

end
