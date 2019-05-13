require_relative '../lib/player'

tom = Player.new('tom')

RSpec.describe Player do
  context 'check player objects can receive name, icon and bet_amount'do

    it 'ensures object can receive a name' do
        tom.name = 'fish'
      expect(tom.name).to eq 'fish'
    end

    it 'ensures object can receive a icon' do
        tom.icon = 'X'
        expect(tom.icon).to eq 'X'
    end

    it 'ensures object can receive a bet_amount' do
      tom.bet_amount = 20
      expect(tom.bet_amount).to eq 20
    end



  end


end