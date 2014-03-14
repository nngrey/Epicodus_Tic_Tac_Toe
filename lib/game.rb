class Game

  @@players = []

  attr_reader(:players, :turn)

  def Game.clear
    @@players = []
  end

  def Game.all
    @@players
  end

  def initialize
    @player_x = Player.new('X')
    @player_o = Player.new('O')
    @board = Board.new
    @turn = 0
    @@players << @player_x
    @@players << @player_o
  end

  def turn
    @turn += 1
  end

end
