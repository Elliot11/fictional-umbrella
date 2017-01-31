class InterestCalculator
  attr_accessor :rate, :balance
  def initialize
    @rate = Float
    @balance = Float
  end

  def calculate(years)
    return (@balance * ((1.0+@rate/100.0)**years)).round(2)
  end

end