
require_relative "../lib/game_manager"

display = Gui.new
gm = GameManager.new(display)

RSpec.describe GameManager do
  context "checks if game is able to create files" do
    it "ensures game state is not over when game start" do
      expect(gm.game_over).to eq false
    end
  end

  context "checks if game is able display messages" do
    it "ensures game displays instruccions" do
      result = gm.instructions
      expect(result[0]).to eq "               ___________________________________________________________________________________ \n"
    end
  end
end
