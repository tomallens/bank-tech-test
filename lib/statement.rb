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
    amount_float = '%.2f' % amount

    transaction_type == 'deposit' ? " #{amount_float} || " : " || #{amount_float} "
  end

  def transact(transaction_type, amount)
    @statement << "#{date_formatter} ||#{column_formatter(transaction_type, amount)}|| #{'%.2f' % @balance}"
  end
end