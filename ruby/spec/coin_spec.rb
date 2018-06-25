require 'coin'

describe Coin do

  describe '#initialize' do
    subject { described_class.new }

    it 'return the available coin' do
      expect(subject.coins).to eq [50, 20, 10, 5, 2, 1]
    end
  end


  describe '#change' do
    subject { described_class.new }

    it 'return the coin change for 1' do
      expect(subject.change(1)).to eq [1]
    end

    it 'return the coin change for 2' do
      expect(subject.change(2)).to eq [2]
    end

    it 'return the coin change for 3' do
      expect(subject.change(3)).to eq [2, 1]
    end

    it 'return the coin change for 4' do
      expect(subject.change(4)).to eq [2, 2]
    end

    it 'return the coin change for 5' do
      expect(subject.change(5)).to eq [5]
    end

    it 'return the coin change for 6' do
      expect(subject.change(6)).to eq [5, 1]
    end

    it 'return the coin change for 7' do
      expect(subject.change(7)).to eq [5, 2]
    end

    it 'return the coin change for 8' do
      expect(subject.change(8)).to eq [5, 2, 1]
    end

    it 'return the coin change for 9' do
      expect(subject.change(9)).to eq [5, 2, 2]
    end

    it 'return the coin change for 10' do
      expect(subject.change(10)).to eq [10]
    end

    it 'return the coin change for 20' do
      expect(subject.change(20)).to eq [20]
    end

    it 'return the coin change for 50' do
      expect(subject.change(50)).to eq [50]
    end

    it 'return the coin change for 55' do
      expect(subject.change(55)).to eq [50, 5]
    end

    it 'return the coin change for 88' do
      expect(subject.change(88)).to eq [50, 20, 10, 5, 2, 1]
    end

    it 'return the coin change for 92' do
      expect(subject.change(92)).to eq [50, 20, 20, 2]
    end

    it 'return the coin change for 105' do
      expect(subject.change(105)).to eq [50, 50, 5]
    end
  end



end
