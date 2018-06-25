'use strict';

function Coin(DEFAULTCOIN = [50, 20, 10, 5, 2, 1]){
  this.coins = DEFAULTCOIN;
};

Coin.prototype.change = function (amount) {
  const result = []
  this.coins.forEach(function(c) {
    if (amount >= c) {
      var count = Math.floor(amount / c)
      for(var i = 0; i < count; i++){
        result.push(c);
      }
      amount -= (c * count);
    }
  });
  return result;
};
