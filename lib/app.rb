require_relative './balance.rb'
require_relative './statement.rb'

class App 
  attr_accessor :statement, :balance
  def initialize
    @balance = Balance.new
    @statement = Statement.new(@balance)
  end
end

