class CoinChanger
  def self.change(amount)
    return [] if amount <= 0
    

    [50,20,10,5,2].each do |coin|
      return [coin] if amount == coin
      return [coin,amount-coin] if amount - coin > 0  
    end
    return [amount]
  end
end