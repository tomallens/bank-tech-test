require_relative './balance'
require_relative './statement'

class App
  attr_accessor :statement, :balance

  def initialize
    @balance = Balance.new
    @statement = Statement.new(0)
  end

  def print_statement
    "#{@statement.print_header}#{@statement.statement.join("\n")}"
  end

  def deposit(money)
    @balance.add(money)
    @statement.balance = @balance.moneys
    @statement.transact('deposit', money)
  end

  def withdraw(money)
    @balance.subtract(money)
    @statement.balance = @balance.moneys
    @statement.transact('withdrawal', money)
  end
end
