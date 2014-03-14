class Space

  attr_accessor(:number, :marked_by, :mark_by)

  @@all_spaces = []

  def Space.clear
    @@all_spaces = []
  end

  def Space.all_spaces
   @@all_spaces
  end

  def Space.find(num)
    @@all_spaces.select { |space| space.number == num }
  end

  def initialize(counter)
    @number = counter
    @marked_by = counter
    @@all_spaces << self
  end

  def mark_by(symbol)
    @marked_by = symbol
  end

end
