def coinchanger(money)

  coins = [200, 100, 50, 20, 10, 5, 2, 1]
  change = 0

  coins.each do |coin|
    if money == coin
       return coin
    elsif is_divisible(money, coin)
      return change = [coin] * number_of_coins(money, coin)
    elsif is_not_divisible(money, coin)
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
  money % coin == 0
end

def number_of_coins(money, coin)
  money / coin
end

def is_not_divisible(money, coin)
  money % coin != 0
end
