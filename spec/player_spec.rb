require 'rspec'
require 'player'

describe "Player" do
  describe "#new" do
    it "should create a Player" do
      expect(Player.new([],[])).to_not raise_error
    end

    it "should create instance variables from parameter array elements" do
      joe = Player.new(["a", "b", "c"], ["1", "2", "3"])
      expect(joe.a).to_not raise_error
    end

    it "should set attribute values" do
      joe = Player.new(["a", "b", "c"], ["1", "2", "3"])
      expect(joe.a).to eq "1"     
    end
  end
end
