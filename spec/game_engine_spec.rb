
require_relative "../lib/game_engine"
include GameEngine

RSpec.describe GameEngine do
  context "checks if game is able to create files" do
    it "ensures method creates a file" do
      result = GameEngine.create_or_append_file("test")
      expect(result).to eq true
    end

    it "ensures method read a file" do
      result = GameEngine.open_file
      expect(result).to eq "test\n"
    end
  end
end

RSpec.describe String do
  context "checks if strings are able to give colors" do
    it "ensures object is able to give colors" do
      result = "asd".colorize(31)
      expect(result).to eq "\e[31masd\e[0m"
    end
  end
end
