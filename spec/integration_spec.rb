require_relative '../lib/balance.rb'
require 'date'
RSpec.describe 'The application should,' do

  before(:each) do 
    reset_app
    allow(Date).to receive(:today).and_return Date.new(2022,11,15)
  end

  def reset_app
    @app = App.new
  end

  context 'with no transactions logged' do
    it '#print_statement displays the header' do
      
      expect(@app.print_statement).to eq "date || credit || debit || balance\n"
    end

    it 'adds a single transaction log and displays correctly' do
      @app.deposit(1000)

      expect(@app.print_statement).to eq "date || credit || debit || balance\n15/11/2022 || 1000.00 || || 0.00"
    end
  end
end