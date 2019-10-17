require_relative "Board"
require_relative "Player"
require_relative "BoardCase"


class Player


  attr_accessor :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol.to_s
  end

end
