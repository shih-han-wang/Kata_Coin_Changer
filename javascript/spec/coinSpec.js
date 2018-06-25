'use strict';

describe('Coin', function() {

  var coin;

  beforeEach( function() {
    coin = new Coin();
  })

  describe('return', function() {
     it('availeble coins', function() {
      expect(coin.coins).toEqual([50, 20, 10, 5, 2, 1]);
    });
  });

  describe('change', function() {
     it('1', function() {
      expect(coin.change(1)).toEqual([1]);
    });
  });

  describe('change', function() {
     it('25', function() {
      expect(coin.change(25)).toEqual([20, 5]);
    });
  });

  describe('change', function() {
     it('50', function() {
      expect(coin.change(50)).toEqual([50]);
    });
  });

  describe('change', function() {
     it('89', function() {
      expect(coin.change(89)).toEqual([50, 20, 10, 5, 2, 2]);
    });
  });

  describe('change', function() {
     it('105', function() {
      expect(coin.change(105)).toEqual([50, 50, 5]);
    });
  });


});
