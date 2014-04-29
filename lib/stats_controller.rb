require_relative 'loader'
require_relative 'player'

loader = Loader.new
loader.load("12-13RD.txt")
data = loader.sanitize_data
headers = data.shift
players = []
data.each do |line|
  players << Player.new(headers, line)
end
p [players[99].Name, players[99].PTS]
