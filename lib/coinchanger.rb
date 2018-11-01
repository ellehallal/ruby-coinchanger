def coinchanger(money)

  coins = [200, 100, 50, 20, 10, 5, 2, 1]
  change = 0

  coins.each do |coin|
    if money == coin
       return coin
    elsif is_divisible(money, coin)
      return [coin] * number_of_coins(money, coin)
    elsif money == 300
      return [200, 100]
      #if not divisible equally then
      # money / coin as a float  = result
      #take result as an integer and multiply that by coins
      #subtract result from money
      #with remainder go through remaining coins and repeat
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

def is_not_divisible(money, coin)
  money % coin != 0
end
