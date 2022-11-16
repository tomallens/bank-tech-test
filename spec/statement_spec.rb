require_relative '../lib/statement.rb'

RSpec.describe Statement do

  before(:each) do 
    reset_statement
  end

  def reset_statement
    @statement = statement.new
  end

 
  it 'should print the header' do
    @statement.print_header

    expect(@statement.print_header).to eq "date || credit || debit || balance"
  end
end