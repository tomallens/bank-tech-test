require_relative './balance.rb'
require_relative './statement.rb'

class App 
  attr_accessor :statement, :balance
  def initialize
    @balance = Balance.new
    @statement = Statement.new(0)

  end

  def print_statement
    "#{@statement.print_header}#{@statement.statement.join('\n')}"
  end

  def deposit(money)
    @balance.add(money)
    @statement.transact('deposit', money)
  end

  def withdraw(money)
    @balance.add(money)
    @statement.transact('withdrawal', money)
  end
end

