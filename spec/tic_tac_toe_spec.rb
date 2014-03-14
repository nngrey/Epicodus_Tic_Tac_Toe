require 'rspec'
require 'game'
require 'board'
require 'player'
require 'space'

describe 'Game' do
  before do
    Game.clear
  end

  it 'initializes a new game' do
    test_game = Game.new
    test_game.should be_an_instance_of Game
  end

  it 'creates two players' do
    test_game = Game.new
    Game.all.length.should eq 2
  end
end

describe 'Player' do
  it 'is initialized with an X or an O' do
    test_player = Player.new('X')
    test_player.symbol.should eq 'X'
  end
end

describe 'Board' do
  before do
    Board.clear
  end

  describe '.win' do
    it 'checks if there are any winning combos on the board' do
      test_board = Board.new
      test_space1 = Space.new(1)
      test_space2 = Space.new(4)
      test_space3 = Space.new(7)
      test_space1.marked_by = 'X'
      test_space2.marked_by = 'X'
      test_space3.marked_by = 'X'
      Board.win.should eq true
    end
  end

  it 'initializes a Board object with 9 spaces' do
    test_board = Board.new
    test_board.should be_an_instance_of Board
    Board.spaces.length.should eq 9
  end
end

describe 'Space' do
  before do
    Space.clear
  end
  it 'initializes a space with a unique number' do
    test_space = Space.new(1)
    test_space.number.should eq 1
  end

  it 'holds an X or O value depending on incoming message' do
    test_space = Space.new(5)
    test_player = Player.new('X')
    test_space.mark_by(test_player)
    test_space.marked_by.should eq 'X'
  end

  describe '.find' do
    it 'returns the space object, given a location number' do
      test_space = Space.new(7)
      Space.find(7).should eq [test_space]
    end
  end
end


