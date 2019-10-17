#require 'rubygems'
#-------Pour le scrapping-------
#require 'nokogiri'
#require 'open-uri'
#-------Pour simuler un navigateur-------
#require 'watir'
#require 'launchy'
#-------Pour les tests------
#require 'pry'
require 'bundler'
Bundler.require
$:.unshift File.expand_path('./../lib', __FILE__)
#require 'json'
#require 'google_drive'
#require 'app/classe_app'
#require 'views/classe_view'

require 'app/Board'
require 'app/BoardCase'
require 'app/Player'
require 'app/Game'
require 'app/Application'




my_game = Game.new
player1 = my_game.players[0]
player2 = my_game.players[1]

counter = 0
      while counter < 10 || wins_combinations? == false
            my_game.play(player1)
              counter +=1
            my_game.play(player2)
              counter +=1      
      end