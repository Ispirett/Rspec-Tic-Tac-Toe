require "../lib/test"

require "../lib/test"

display = Gui.new
game = TestBoard.new(display)
slots = game.slots
p1 = "X "
p2 = "O "

RSpec.describe TestBoard do
  context "Test cases for tic tac  toe" do
    it "test 1,2,3 columns " do
      slots[:one] = p1
      slots[:two] = p1
      slots[:three] = p1
      game.game_over?
      expect(game.is_game_over).to eq true

      slots[:one] = p2
      slots[:two] = p2
      slots[:three] = p2
      game.game_over?
      expect(game.is_game_over).to eq true
    end

    it "test 4,5,6 columns" do
      slots[:four] = p1
      slots[:five] = p1
      slots[:six] = p1
      game.game_over?
      expect(game.is_game_over).to eq true

      slots[:four] = p2
      slots[:five] = p2
      slots[:six] = p2
      game.game_over?
      expect(game.is_game_over).to eq true
    end

    it "test 7,8,9 columns" do
      slots[:seven] = p1
      slots[:eigth] = p1
      slots[:nine] = p1
      game.game_over?
      expect(game.is_game_over).to eq true

      slots[:seven] = p2
      slots[:eigth] = p2
      slots[:nine] = p2
      game.game_over?
      expect(game.is_game_over).to eq true
    end

    it "test 1,4,7 rows" do
      slots[:one] = p1
      slots[:four] = p1
      slots[:seven] = p1
      game.game_over?
      expect(game.is_game_over).to eq true

      slots[:one] = p2
      slots[:four] = p2
      slots[:seven] = p2
      game.game_over?
      expect(game.is_game_over).to eq true
    end

    it "test 3,5,7 rows" do
      slots[:three] = p1
      slots[:five] = p1
      slots[:seven] = p1
      game.game_over?
      expect(game.is_game_over).to eq true

      slots[:three] = p2
      slots[:five] = p2
      slots[:seven] = p2
      game.game_over?
      expect(game.is_game_over).to eq true
    end

    it "test 2,5,8 rows" do
      slots[:two] = p1
      slots[:five] = p1
      slots[:eigth] = p1
      game.game_over?
      expect(game.is_game_over).to eq true

      slots[:two] = p2
      slots[:five] = p2
      slots[:eigth] = p2
      game.game_over?
      expect(game.is_game_over).to eq true
    end

    it "test 3,6,9 rows" do
      slots[:three] = p1
      slots[:six] = p1
      slots[:nine] = p1
      game.game_over?
      expect(game.is_game_over).to eq true

      slots[:three] = p2
      slots[:six] = p2
      slots[:nine] = p2
      game.game_over?
      expect(game.is_game_over).to eq true
    end
    it "test 1,5,9 rows" do
      slots[:one] = p1
      slots[:five] = p1
      slots[:nine] = p1
      game.game_over?
      expect(game.is_game_over).to eq true

      slots[:one] = p2
      slots[:five] = p2
      slots[:nine] = p2
      game.game_over?
      expect(game.is_game_over).to eq true
    end
  end
end
