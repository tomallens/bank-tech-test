require_relative '../lib/app.rb'

RSpec.describe App do

  before(:each) do 
    reset_app
  end

  def reset_app
    @app = App.new
  end

  context 'on Build:' do
    it 'instantiates a Statement containing a Balance' do
      
      expect(@app.balance).to be
      expect(@app.statement).to be
    end
  end
end