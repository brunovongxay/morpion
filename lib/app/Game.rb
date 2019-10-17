require_relative 'Board'
require_relative 'Player'
require_relative'BoardCase'


class Game

  attr_accessor :players, :board

    def initialize

      puts "👾  WELCOME TO MORPION GAME  👾"
      puts
      puts
      puts "What is the name of the 2 players?" 
      @players = [player1 = Player.new(gets.chomp.to_s, "X"),player2 = Player.new(gets.chomp.to_s, "O")]
      @board = Board.new
      puts "#{player1.name} your symbol is the X "
      puts "#{player2.name} your symbol is the O "
      puts "Your game will start shortly"
    end
   

    def play (player)
      id = ["A1","A2","A3","B1","B2","B3","C1","C2","C3"]

        puts "#{player.name} What's your next move ?"
          next_move = gets.chomp.to_s
        while !id.include?(next_move)
            puts "erreur, saississez à votre next move"
            next_move = gets.chomp.to_s
        end
            @board.tab.each do |check| 
                case 
                  when check.content != " " && check.position == next_move
                      puts "This position is already taken. Please choose another position."
                  when check.position == next_move && check.content == " "
                      check.content = player.symbol
                        puts check.content
                      end
            end

    end

    def wins_combinations?
            wins_combinations = [[@board.tab[0],@board.tab[1],@board.tab[2]],[@board.tab[3],@board.tab[4],@board.tab[5]],[@board.tab[6],@board.tab[7],@board.tab[8]],[@board.tab[0],@board.tab[3],@board.tab[6]],[@board.tab[1],@board.tab[4],@board.tab[7]],[@board.tab[2],@board.tab[5],@board.tab[8]],[@board.tab[0],@board.tab[4],@board.tab[8]],[@board.tab[2],@board.tab[4],@board.tab[6]]]
              win = false
                wins_combinations.each do |w_comb|
                  if (w_comb[0].content == w_comb[1].content) && (w_comb[1].content == w_comb[2].content) && (w_comb[0].content != " ") 
                    win = true
                    return win
                  end
            end
        
    end


end