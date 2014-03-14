require './lib/game'
require './lib/board'
require './lib/player'
require './lib/space'
require 'pry'

def main_menu
  puts "Tic-Tac-Toe"
  puts '----------------------'
  puts "\nPress 'G' to start a new game of Tic-Tac-Toe"
  user_input = gets.chomp.downcase
  if user_input == 'g'
    new_game
  end
end

def new_game
  @game = Game.new
  puts "\n 1 | 2 | 3 "
  puts " ------------"
  puts "\n 4 | 5 | 6 "
  puts " ------------"
  puts "\n 7 | 8 | 9 "
  game_play
end

def game_play
  until @game.turn >= 45 do
    if @game.turn == 1 || @game.turn % 2 != 0
      puts "Player X's turn... Please select a space"
      num = gets.chomp.to_i
      Space.find(num)[0].marked_by = 'X'
      @game.turn
    else
      puts "Player O's turn... Please select a space"
     num = gets.chomp.to_i
     Space.find(num)[0].marked_by = 'O'
     @game.turn
   end
   puts @game.turn
  end
  main_menu
end

main_menu
