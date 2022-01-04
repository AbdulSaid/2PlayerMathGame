class Player 
  attr_accessor :life
  attr_reader :name

  def initialize(name)
    @name = name
    @lives = 3
  end

end
