class Coin
  attr_reader :coins

  DEFAULT_COINS = [50, 20, 10, 5, 2, 1]

  def initialize
    @coins = DEFAULT_COINS
  end

  def change(amount)
    result = []
    @coins.each {|c| amount >= c ? (result << c; amount -= c; redo) : next }
    result
  end

end
