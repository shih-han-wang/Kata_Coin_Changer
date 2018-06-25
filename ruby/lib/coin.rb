class Coin
  attr_reader :coins

  DEFAULT_COINS = [50, 20, 10, 5, 2, 1]

  def initialize
    @coins = DEFAULT_COINS
  end

  def change(amount)
    result = []
    @coins.each do |c|
      if amount >= c
        count = (amount / c).floor
        result.concat([c] * count)
        amount -= (c * count)
      end
    end
    result
  end

end
