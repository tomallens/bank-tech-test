require_relative '../lib/balance.rb'

RSpec.describe Balance do

  before(:each) do 
    reset_balance
  end

  def reset_balance
    @balance = Balance.new
  end

  context 'On build:' do
    it 'should return a balance of 0' do

      expect(@balance.moneys).to eq 0
    end
  end
  it 'adds to balance' do
    @balance.add(1000)

    expect(@balance.moneys).to eq 1000
  end

  it 'subtracts from balance' do
    @balance.subtract(500)

    expect(@balance.moneys).to eq -500
  end
end
