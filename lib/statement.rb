class Statement
  attr_accessor :statement, :balance
  def initialize(balance)
    @statement = []
    @balance = balance
  end

  def print_header
    "date || credit || debit || balance"
  end
end