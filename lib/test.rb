require '../lib/game_engine'
require '../lib/gui'
class TestBoard
  attr_reader :is_game_over
  attr_accessor :slots
  def initialize(display)
    @display = display
    @is_game_over = false
    @slots = {
        one: '__',
        two: '__',
        three: '__',
        four: '__',
        five: '__',
        six: '__',
        seven: '  ',
        eight: '  ',
        nine: '    '
    }
  end

  def game_over?(_name = 'player')
    @show_player_win = "Player 🏅 #{_name} 🥇 wins 🏆 "
    @show_game_draw = 'game draw' if @current_turn == 1
    win_x = ->(n) { n == 'X ' }
    win_o = ->(n) { n == 'O ' }
    # conditions
    one = [@slots[:one], @slots[:two], @slots[:three]]
    two = [@slots[:four], @slots[:five], @slots[:six]]
    three = [@slots[:seven], @slots[:eight], @slots[:nine]]
    four = [@slots[:one], @slots[:four], @slots[:seven]]
    five = [@slots[:two], @slots[:five], @slots[:eight]]
    six = [@slots[:three], @slots[:six], @slots[:nine]]
    seven  = [@slots[:one], @slots[:five], @slots[:nine]]
    eight  = [@slots[:three], @slots[:five], @slots[:seven]]

    case true
    when one.all?(win_x) || one.all?(win_o) || two.all?(win_x) || two.all?(win_o) ||
        three.all?(win_x) || three.all?(win_o)
      @display.msg(@show_player_win)
      @is_game_over = true

    when four.all?(&win_x) || four.all?(&win_o) || five.all?(&win_x) || five.all?(&win_o)
      @display.msg(@show_player_win)
      @is_game_over = true

    when six.all?(&win_x) || six.all?(&win_o) ||
        seven.all?(&win_x) || seven.all?(&win_o) || eight.all?(&win_x) || eight.all?(&win_o)
      @display.msg(@show_player_win)
      @is_game_over = true

    else
      puts @show_game_draw
    end
  end
end
