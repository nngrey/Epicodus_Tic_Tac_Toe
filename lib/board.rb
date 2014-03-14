class Board

  @@spaces = []

  @@win_comb = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]

  def Board.clear
    @@spaces = []
  end

  def Board.win
    var = false
    win_array = []
    @@win_comb.each do |comb|
      comb.each do |num|
        @@spaces.each do |space|
          if space.number == num
            win_array << space.marked_by
          end
        end
        puts win_array
        if win_array == ['X', 'X', 'X']
          var = true
        end
      end
    end
    var
  end


  def Board.spaces
    @@spaces
  end

  def win_comb
    @@win_comb
  end

  def initialize
    counter = 1
    9.times { @space = Space.new(counter)
    @@spaces << @space
    counter += 1 }
  end

end

