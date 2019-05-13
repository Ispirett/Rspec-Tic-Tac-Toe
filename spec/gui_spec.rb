require_relative "../lib/gui"
require_relative "../lib/board"

display = Gui.new
player_one = Player.new("Isaac")
player_two = Player.new("Armando")
app = GameManager.new(display)
game = Board.new(player_one, player_two, display, app)
slots = game.slots
p1 = game.player_one.icon + " "
p2 = game.player_two.icon + " "

RSpec.describe Gui do
  context "check player objects can receive name, icon and bet_amount" do
    it "ensures object displays a board" do
      result = display.display_board(slots)
      expect(result[0]).to eq "\t\t\t\t\t\t__|__|__"
    end

    it "ensures object displays a message" do
      result = display.msg("test")
      expect(result).to eq "\t\t\t\t\ttest"
    end
  end
end
