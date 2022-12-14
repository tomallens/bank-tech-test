require_relative '../lib/statement'
require 'date'

RSpec.describe Statement do
  before(:each) do
    reset_statement
    allow(Date).to receive(:today).and_return Date.new(2022, 11, 15)
  end

  def reset_statement
    @statement = Statement.new(0)
  end

  it 'should print the header' do
    expect(@statement.print_header).to eq "date || credit || debit || balance\n"
  end

  it 'formats the date into dd/mm/yyyy' do
    expect(@statement.date_formatter).to eq '15/11/2022'
  end

  context 'when given a transaction:' do
    it 'formats the credit/debit columns correctly' do
      expect(@statement.column_formatter('deposit', 200)).to eq ' 200.00 || '
      expect(@statement.column_formatter('withdrawal', 100)).to eq ' || 100.00 '
    end

    it 'can print a transaction to the specification format' do
      @statement.balance = 0

      expect(@statement.transact('deposit', 1000)).to eq ['15/11/2022 || 1000.00 || || 0.00']
    end
  end
end
