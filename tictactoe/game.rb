class Game
  require_relative "grid.rb"
  require_relative "combi.rb"
  include Combi

  def initialize
    @grid = Grid.new
    @current_player = 1
  end

  def display_board(grid)
    p grid.get_grid[0]
    p grid.get_grid[1]
    p grid.get_grid[2]
  end

  def init_game
    puts "Welcome!"
    display_board(@grid)
    place_mark()
    p "Game over"
  end

  def place_mark()
    until hasWon(@grid.get_grid) do
      pos = player_input()
      if (@current_player.to_i == 1)
        @grid.set_grid(pos, "X")
        switch_player()
      else
        @grid.set_grid(pos, "O")
        switch_player()
      end
      display_board(@grid)
    end
  end

  def player_input()
    puts "Enter a position Player " + @current_player.to_s
    position = gets.chomp.to_i
    return position 

    puts "Invalid input"
    player_input()
  end

  def switch_player
    if @current_player == 1
      @current_player += 1
    else
      @current_player -= 1
    end
  end
end

game = Game.new
game.init_game
