require_relative "Board"
require_relative "Player"
require_relative "BoardCase"

class Board

  attr_accessor :tab

    def initialize
      @tab = 
      [BoardCase.new(" ","A1"),
      BoardCase.new(" ", "A2"),
      BoardCase.new(" ", "A3"),
      BoardCase.new(" ", "B1"),
      BoardCase.new(" ", "B2"),
      BoardCase.new(" ", "B3"),
      BoardCase.new(" ", "C1"),
      BoardCase.new(" ", "C2"),
      BoardCase.new(" ", "C3")]

    end


end


            
