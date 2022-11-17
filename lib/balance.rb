class Balance
  attr_accessor :moneys

  def initialize
    @moneys = 0
  end

  def add(deposit)
    @moneys += deposit
  end

  def subtract(withdrawal)
    @moneys -= withdrawal
  end
end
