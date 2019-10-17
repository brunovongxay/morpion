require_relative "Board"
require_relative "Player"



class BoardCase

  attr_accessor :content, :position

    def initialize (content,position)

        @content = content
        @position = position

    end

end


