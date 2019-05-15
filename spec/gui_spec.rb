require_relative  "../lib/game_manager"
require_relative "../lib/board"
require_relative "../lib/gui"
require_relative '../lib/player'



RSpec.describe Gui do
  let(:display) { Gui.new }
  let(:player_one) { Player.new('Isaac') }
  let(:player_two) { Player.new('Armando') }
  let(:app) { GameManager.new(display) }
  let(:game) { Board.new(player_one, player_two, display, app) }
  let(:slots) { game.slots }
  let(:p1) { game.player_one.icon + ' ' }
  let(:p2) { game.player_two.icon + ' ' }

  context 'check player objects can receive name, icon and bet_amount' do
    it 'ensures object displays a board' do
      result = display.display_board(slots)
      expect(result[0]).to eq "\t\t\t\t\t\t__|__|__"
    end

    it 'ensures object displays a message' do
      result = display.msg('test')
      expect(result).to eq "\t\t\t\t\ttest"
    end
  end
end
