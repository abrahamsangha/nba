require 'rspec'
require 'loader'

describe "Loader" do
  loader = Loader.new
  stats = "12-13RD.txt"

  describe "#load" do
    it "should load up a text file" do
      expect(loader.load(stats)).to_not raise_error
    end
  end

  describe "#data" do
    loader.load(stats)
    it "should return an array" do
      expect(loader.data).to be_kind_of(Array)
    end

    it "should have column headers as its first element" do
      expect(loader.data[0]).to eq("Name           Team PS GP  Min  FGM  FGA  ThrM  ThrA FTM  FTA  OR   TR   AS  ST  TO  BK  PF  DQ   PTS  TC  EJ  FF Sta")  
    end
  end
end
