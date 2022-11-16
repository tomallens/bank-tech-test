class Statement
  attr_accessor :statement, :balance
  def initialize(balance)
    @statement = []
    @balance = balance
  end

  def print_header
    "date || credit || debit || balance"
  end

  def date_formatter
    Date.today.strftime('%d/%m/%Y')
  end

  def column_formatter(transaction_type, amount)
    transaction = '%.2f' % amount

    transaction_type == 'deposit' ? " #{transaction} || " : " || #{transaction} "
  end
end