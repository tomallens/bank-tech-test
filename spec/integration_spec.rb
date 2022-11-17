require_relative '../lib/balance'
require 'date'
RSpec.describe 'The application should,' do
  before(:each) do
    reset_app
    allow(Date).to receive(:today).and_return Date.new(2022, 11, 15)
  end

  def reset_app
    @app = App.new
  end

  context 'with no transactions logged' do
    it '#print_statement displays the header' do
      expect(@app.print_statement).to eq "date || credit || debit || balance\n"
    end

    it 'add a single transaction log and display correctly' do
      @app.deposit(1000)

      expect(@app.print_statement).to eq "date || credit || debit || balance\n15/11/2022 || 1000.00 || || 1000.00"
    end
  end

  context 'after several transactions' do
    it 'display them all correctly in reverse order' do
      @app.deposit(1000)
      @app.withdraw(500)
      @app.deposit(200)

      expect(@app.print_statement).to eq "date || credit || debit || balance\n15/11/2022 || 200.00 || || 700.00\n15/11/2022 || || 500.00 || 500.00\n15/11/2022 || 1000.00 || || 1000.00"
    end
  end
end
