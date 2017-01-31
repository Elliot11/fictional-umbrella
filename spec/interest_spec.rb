require 'interestcalculator'

RSpec.describe InterestCalculator do
  context 'class creation' do
    it 'instantiates an object' do
      expect(InterestCalculator.new).to be
    end

    it 'responds to calculate' do
      expect(InterestCalculator.new).to respond_to(:calculate)
    end
  end

  context 'calculation is correct' do
    before :each do
      @ic = InterestCalculator.new
      @ic.rate = 10
      @ic.balance = 10000
    end

    it 'returns the balance when the years are 0' do
      expect(@ic.calculate(0)).to eql(10000.00)
    end

    it 'you can set the balance' do
      @ic.balance = 500
      expect(@ic.calculate(0)).to eql(500.00)
    end

    it 'you can set the balance' do
      expect(@ic.calculate(10)).to eql(25937.42)
    end
  end
end
