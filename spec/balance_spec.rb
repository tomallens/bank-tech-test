require_relative '../lib/balance.rb'

RSpec.describe Balance do
  context 'On build:' do
    it 'should return a balance of 0' do
      balance = Balance.new

      expect(balance.moneys).to eq 0
    end
  end
end
